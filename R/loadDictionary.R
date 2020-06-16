#' Load the dictionary into the global environment
#'
#'
#' @return NULL
#'
#' @examples
#'
#' loadDictionary()
#'
#' @export 


loadDictionary <- function(){
  pkgpath = system.file("dictionary_individual_hidden.ob",package = "r2dictionary")
  load(pkgpath,envir = .GlobalEnv)
  eval(parse(text=paste0('assign(".loadedDictionary",TRUE,envir = .GlobalEnv)')))
}



