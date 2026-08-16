# Part One

Part One is a reference for trainees preparing for the CICM and ANZCA Primary Exams.

* Part One **is**:
    * Designed to cover the ***assessed*** sections of the CICM and ANZCA curricula **in enough detail to pass**
    * A rough guide for the expected depth of knowledge required on a topic
    * A tool to correct your written answers
    * A source of information you might find difficult to find elsewhere
* Part One **is not**:
    * A textbook
    * The definitive guide to the primary exam
    * A complete reference
    There will be both omissions and errors. If you find any, please <a href="mailto:jake@jakebarlow.me?Subject=Part%20One" target="_top">let me know</a>.

## What is this? Where am I?

These are the source files for Part One. Content is written in Rmarkdown, which is a fusion of R, latex, and (Commonmark) markdown. The book is then built using [Quarto](https://quarto.org/).

Formatting of both HTML and PDF versions are heavily inspired by Edward Tufte - the theme has been ported from a previous [bookdown](https://bookdown.org/) output format called Tufte in the Fast Lane (titfl).

Part One is a free and open access medical education (FOAMed) initiative, and is proudly part of Life in the Fast Lane. You can see the full site at [](partone.litfl.com).

## Extras

Part One contains several enhancements over the standard Quarto, provided by Lua filters:

* A glossary is used to automatically provide mouseovers for acronyms
* Custom pretty boxes for PDF output
* Dynamically resize tables and page orientation for PDF output
* Timestamp outputs with modification time on creation
* Reliably render media in PDF
    * Uses `rsvg-convert` for SVG figures
    * Uses `ffmpeg` to render single frames from animated GIFs and videos\
        * Requires `librsvg` and `ffmpeg`; on macOS, install them `brew install librsvg ffmpeg`
        * See more, below

### Animated media in PDF

Animated GIFs remain animated in HTML. In PDF, the first frame is used by default. Use `data-pdf-time` to select a still by timestamp, or `data-pdf-frame` to select an exact source frame:

```markdown
![Sarcomere contraction](/resources/muscle_animated.gif){data-pdf-time="00:00:10"}

![Sarcomere contraction](/resources/muscle_animated.gif){data-pdf-frame="12"}
```

Use the plural form and `data-pdf-cols` to render several moments as one contact sheet:

```markdown
![Stages of contraction](/resources/muscle_animated.gif){
  data-pdf-times="00:00:05,00:00:10,00:00:20"
  data-pdf-cols="3"
}
```

The corresponding frame-number attributes are `data-pdf-frames` and `data-pdf-cols`. Specify exactly one of `data-pdf-time`, `data-pdf-times`, `data-pdf-frame`, or `data-pdf-frames` on a media item.

For a local video, place Quarto's video shortcode in a `.pdf-media` wrapper. HTML receives the playable video; PDF receives the selected still or contact sheet:

```markdown
::: {#fig-intubation .pdf-media
      data-pdf-times="00:00:04,00:00:12,00:00:19"
      data-pdf-cols="3"}

{{< video /resources/intubation.mp4 >}}

Stages of intubation.

:::
```

Automatic frame extraction is limited to local media files. For hosted media such as YouTube or Vimeo, provide a local poster image or retain Quarto's normal PDF link fallback:

```markdown
::: {.pdf-media data-pdf-poster="/resources/intubation-poster.png"}

{{< video https://www.youtube.com/watch?v=example >}}

:::
```

## Copyright + Legal

Copyright © 2015-2026 C. Jake Barlow

This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/).
