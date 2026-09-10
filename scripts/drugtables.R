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

formatHeaderLabel = function(str) {
    cleanLabel = stringr::str_replace_all(str, "_", " ")

    dplyr::if_else(
        stringr::str_detect(cleanLabel, "[[:upper:]]"),
        cleanLabel,
        stringr::str_to_sentence(cleanLabel)
    )
}


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
        if (section == "references") {
            referenceCount = max(purrr::map_int(data_list, ~ length(.x[[section]])))

            all_combinations = dplyr::bind_rows(
                all_combinations,
                tibble::tibble(
                    header1 = section,
                    header2 = as.character(seq_len(referenceCount))
                )
            )

            next
        }

        subsections = unique(unlist(lapply(data_list, function(drug_data) {
            if (!is.null(drug_data[[section]])) {
                return(names(drug_data[[section]]))
            } else {
                return(NULL)
            }
        })))
        
        if (length(subsections) == 0) {
            # Use a stable key for single-level sections even when a drug lacks
            # that section; the duplicate label is hidden during presentation.
            all_combinations = rbind(all_combinations, data.frame(header1 = section, header2 = section, stringsAsFactors = FALSE))
        } else {
            for (subsection in subsections) {
                all_combinations = rbind(all_combinations, data.frame(header1 = section, header2 = subsection, stringsAsFactors = FALSE))
            }
        }
    }

    # References must remain the final table section when later drugs contain
    # fields that are absent from the first drug.
    all_combinations = dplyr::bind_rows(
        dplyr::filter(all_combinations, header1 != "references"),
        dplyr::filter(all_combinations, header1 == "references")
    )
    
    # Iterate over each drug in the order they appear in data_list and populate the result list
    for (drug in names(data_list)) {
        drug_data = data_list[[drug]]
        
        for (i in 1:nrow(all_combinations)) {
            section = all_combinations$header1[i]
            subsection = all_combinations$header2[i]
            
            if (!is.null(drug_data[[section]])) {
                if (section == "references") {
                    referenceNumber = as.integer(subsection)
                    content = drug_data[[section]][referenceNumber]
                    content = stringr::str_replace_all(
                        content,
                        "(https?://[^[:space:]<>]+?)([.,;:]?)(?=[[:space:]]|$)",
                        "<\\1>\\2"
                    )
                } else if (subsection == section && !is.list(drug_data[[section]])) {
                    # Single level: put the section content in header2
                    content = paste(drug_data[[section]], collapse = "\\\ \n\n ")
                } else if (!is.null(drug_data[[section]][[subsection]])) {
                    content = paste(drug_data[[section]][[subsection]], collapse = "\\\ \n\n ")
                    
                    if (is.list(drug_data[[section]][[subsection]])) {
                        nestedContent = drug_data[[section]][[subsection]]
                        names_list = names(nestedContent)
                        names_list = names_list[purrr::map_lgl(
                            nestedContent,
                            ~ length(.x) > 0 && any(!is.na(.x) & stringr::str_trim(.x) != "")
                        )]

                        content = sapply(names_list, function(name) {
                            paste(formatHeaderLabel(name), ": ",
                                  paste(nestedContent[[name]], collapse = ", "),
                                  "\n \\ \n",
                                  sep = "")
                        }, USE.NAMES = FALSE)
                        content = if (length(content) == 0) {
                            NA
                        } else {
                            paste(content, collapse = "\\\ \n\n ")
                        }
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
    df = df[rowSums(!is.na(df[, -c(1, 2), drop = FALSE])) > 0, ]
    
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

fn.drugName = function(str) {
    dplyr::case_when(
        str == "amphotericin_b" ~ "Amphotericin B",
        .default = stringr::str_to_sentence(stringr::str_replace_all(str, "_", " "))
    )
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
        mutate(across(c(header1, header2), formatHeaderLabel),
               header2 = fn.organSystemRename(header2),
               header2 = ifelse(header2 == header1, "", header2)) |> 
        rename_with(fn.drugName) |>
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
