# This file contains a set of scripts that allow pretty tables to be constructed from separate files contained in DrugBase (see https://github.com/cjdbarlow/drugbase)
# File
drugbase = readRDS("resources/drugbase.Rds")


# Libraries
if(!require(tidyverse)){
    install.packages("tidyverse", repos = "http://cran.us.r-project.org")
}
library(tidyverse)

if(!require(pander)){
    install.packages("pander", repos = "http://cran.us.r-project.org")
}
library(pander)


# This function takes a list of drugs from drugbase, and generates a dataframe with two header columns that can be passed to gt()
fn.flattenDataframe = function(data_list) {
    result = list()
    
    # Collect all unique header1 and header2 combinations across all drugs
    all_combinations = expand.grid(
        header1 = unique(unlist(lapply(data_list, names))),
        header2 = character(0),
        stringsAsFactors = FALSE
    )
    
    # Gather all unique header2 values within each header1
    for (section in unique(unlist(lapply(data_list, names)))) {
        subsections = unique(unlist(lapply(data_list, function(drug_data) {
            if (!is.null(drug_data[[section]])) {
                return(names(drug_data[[section]]))
            } else {
                return(NULL)
            }
        })))
        
        if (length(subsections) == 0) {
            # If no subsections, use section as header2 and leave header2 blank
            all_combinations = rbind(all_combinations, data.frame(header1 = section, header2 = "", stringsAsFactors = FALSE))
        } else {
            for (subsection in subsections) {
                all_combinations = rbind(all_combinations, data.frame(header1 = section, header2 = subsection, stringsAsFactors = FALSE))
            }
        }
    }
    
    # Iterate over each drug in the order they appear in data_list and populate the result list
    for (drug in names(data_list)) {
        drug_data = data_list[[drug]]
        
        for (i in 1:nrow(all_combinations)) {
            section = all_combinations$header1[i]
            subsection = all_combinations$header2[i]
            
            if (!is.null(drug_data[[section]])) {
                if (subsection == "" && !is.list(drug_data[[section]])) {
                    # Single level: put the section content in header2
                    content = paste(drug_data[[section]], collapse = "\\\ \n\n ")
                    subsection = section
                } else if (!is.null(drug_data[[section]][[subsection]])) {
                    content = paste(drug_data[[section]][[subsection]], collapse = "\\\ \n\n ")
                    
                    if (is.list(drug_data[[section]][[subsection]])) {
                        names_list = names(drug_data[[section]][[subsection]])
                        content = sapply(names_list, function(name) {
                            paste(stringr::str_to_sentence(name), ": ",
                                  paste(drug_data[[section]][[subsection]][[name]], collapse = ", "),
                                  "\n \\ \n",
                                  sep = "")
                        }, USE.NAMES = FALSE)
                        content = paste(content, collapse = "\\\ \n\n ")
                    }
                } else {
                    content = NA
                }
            } else {
                content = NA
            }
            
            result[[length(result) + 1]] = list(
                header1 = section,
                header2 = subsection,
                content = content,
                drug = drug
            )
        }
    }
    
    # Convert the result list to a data frame
    df = do.call(rbind, lapply(result, as.data.frame, stringsAsFactors = FALSE))
    df = reshape(df, idvar = c("header1", "header2"), timevar = "drug", direction = "wide")
    colnames(df) = gsub("content.", "", colnames(df))
    

    # Reorder the columns to match the order of drugs in data_list
    drug_columns = names(data_list)
    df = df[, c("header1", "header2", drug_columns)]
    
    # Remove rows where all content columns are NA (i.e., empty rows)
    df = df[rowSums(!is.na(df[, -c(1, 2)])) > 0, ]
    
    return(df)
}




# This function expands the organ system headings used in drugbase
fn.organSystemRename = function(str){
    str = dplyr::case_when(str == "Resp" ~ "Respiratory",
                           str == "Cvs" ~ "CVS",
                           str == "Cns" ~ "CNS",
                           str == "Endo" ~ "Endocrine",
                           str == "Msk" ~ "Musculoskeletal",
                           str == "Met" ~ "Metabolic",
                           str == "Ren" ~ "Renal",
                           str == "Gu" ~ "Genitourinary",
                           str == "Git" ~ "Gastrointestinal",
                           str == "Haeme" ~ "Haematological",
                           TRUE ~ str)
    return(str)
}

# Table that converts the dataframe to a Pandoc grid_table
# Note that pander::pandoc_table prints the completed table to console and doesn't save it to an object (that requires pandoc.table.return)
# so the value of pandocTable here is NULL and so we don't need to return it
fn.pandocGridTable = function(df, caption = NULL) {
    pander::panderOptions("table.caption.prefix",
                  ": ")
    
    pandocTable = df |> 
        remove_rownames() |>
        group_by(header1) |> 
        mutate(n = row_number(),
               header1 = ifelse(n == 1, header1, ""),) |> 
        ungroup() |> 
        select(-n) |> 
        mutate(across(c(header1, header2), stringr::str_to_sentence),
               header2 = fn.organSystemRename(header2),
               header2 = ifelse(header2 == header1, "", header2)) |> 
        rename_with(str_to_sentence) |> 
        rename(` ` = Header1,
               `  ` = Header2) |> 
        pander::pandoc.table(missing = "",
                             style = "grid",
                             justify = "left",
                             split.tables = Inf,
                             keep.line.breaks = TRUE,
                             emphasize.strong.cols = 1,
                             caption = caption)
        
}

# Pulls everything together
DrugTable = function(..., caption = NULL, db = drugbase) {
    # Drugs to include in the table
    drugs = list(...)

    # Check if all specified drugs exist in the database, and flag an error if we ask for one that doesn't
    missingDrugs = setdiff(drugs, names(db))
    
    if (length(missingDrugs) > 0) {
        stop("The following drugs do not exist in the database: ", paste(missingDrugs, collapse = ", "))
    }
    
    # Narrow down the database to only the specified drugs
    selectedDrugsList = db[unlist(drugs)]
    
    # Turn that list into a dataframe
    selectedDrugsDF = fn.flattenDataframe(selectedDrugsList)
    
    # Make a table
    fn.pandocGridTable(selectedDrugsDF, caption = caption)
}
