#' Dictionary content loader
#'
#' Load the dictionary into global environment
#'
#' @return NULL
#'
#' @examples
#'
#' loadDictionary()
#'
#' @export


loadDictionary <- function(){
  pkgpath = system.file("complete.dic",package = "r2dictionary")
  load(pkgpath,envir = .GlobalEnv)
  eval(parse(text=paste0('assign(".loadedDictionary",TRUE,envir = .GlobalEnv)')))
}



