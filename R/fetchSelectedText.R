#' Fetch Selected Text
#'
#' @return The selected text and if it contains alphabets
#'
#' @examples
#' \dontrun{
#' fetchSelectedText()
#' }
#'
#' @export
#'
#'

fetchSelectedText <- function() {
  #fetch the selected text and see if it is valid for the define function
  a <- rstudioapi::getSourceEditorContext()
  s <- a$selection
  selText <- s[[1L]]$text
  alphaLetters <- stringr::str_extract(selText,"[A-z]")
  secArg = FALSE
  if(length(alphaLetters)){
    if(!is.na(alphaLetters)) secArg = TRUE
  }

  return(c(secArg,selText))
}


