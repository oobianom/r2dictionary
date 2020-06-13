#' Check if dictionary is loaded
#'
#'
#' @return Boolean result
#'
#' @examples
#' \dontrun{
#' y = isDictionaryLoaded()
#' y
#' }
#'
#' @export


isDictionaryLoaded <- function(){
  options("loadedDictionary" = function(){return(exists(".loadedDictionary"))})
  return(options()$loadedDictionary())
}
