#' Concact multiple values
#'
#'
#' @return NULL
#'
#' @param ... the list of values to be concacted
#' @param sep the separated for concating
#'
#' @examples
#'
#' a = 5
#' b = 10
#' c = "done"
#' concatAll(a,b,c)
#'
#'
#' @export


concatAll = function(...,sep="; "){
  return(paste(c(...),collapse = sep))
}

