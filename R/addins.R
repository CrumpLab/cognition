#' Insert two-column for slidy
#'
#' Call this function as an addin to insert multicolumn syntax for slidy slides at the cursor position.
#'
#' @export
insert_multicolumn <- function() {
  rstudioapi::insertText(':::: {.row}
::: {.col-md-6}

:::

::: {.col-md-6}

:::
::::')
}

#' Insert knitr::include_graphics
#'
#' Call this function as an addin to insert a code chunk for knitr::include_graphics at the cursor.
#'
#' @export
insert_knitrgraphics <- function() {
  rstudioapi::insertText('```{r}
knitr::include_graphics("")
```')
}
