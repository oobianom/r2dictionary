#' Define Selected Text
#'
#' Detects a selected word in an open document. This was written for Rmarkdown writing, but it can be used for an open document.
#' Using the addin is the most preferred means to call this function, albeit it can be called directly from the console.
#'
#' @return definition of the selected text
#' @examples
#' \dontrun{
#' defineSelected()
#' }
#' @export
#'
#'

defineSelected <-function(){
  #fetch selected term
  the.selected <- fetchSelectedText()

  #if selected term is present and contains alphabets, find definition. else, yell at the user
  if(the.selected[1]){
    define(the.selected[2])
  }
  else{
    message("No words selected within the current document.")
  }
}

#' Define Selected Text
#'
#' Detects a selected word in an open document. This was written for Rmarkdown writing, but it can be used for an open document.
#' Using the addin is the most preferred means to call this function, albeit it can be called directly from the console.
#'
#' @return definition of the selected text
#' @examples
#' \dontrun{
#' defineSel()
#' }
#' @export
#'
#'

defineSel <- defineSelected

