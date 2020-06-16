#' Define words in english
#'
#' Given a word, a mini-dictionary is searched and results are retrieved with the relevant definitions
#'
#' @param term The term for which the definition is requested
#' @param limitResult The limit of how many results to show
#' @param printResult Print the result to console. If set to FALSE, then results will be return in a vector
#'
#' @return Definition of word if it exisits
#'
#' @examples
#' \dontrun{
#' wordtodefine <- "smile"
#' define(wordtodefine)
#' }
#'
#' @export

 

define <- function(term,limitResult=5,printResult=TRUE){
  chartofind = term

  if(!isDictionaryLoaded()){
    loadDictionary()
  }
  #check if first letter is space

  regexf = "(^[[:space:]]+)|(^[0-9]+)|(^[[:punct:]])"
  regexal = "^[A-z]"
  chartofind = chartofind
  ci=0

  while(!grepl(regexal,chartofind)){
    chartofind=sub(regexf,"",chartofind)
    ci = ci+1
    if(ci==10)break;
  }

 

  if(nchar(chartofind)<3) stop("The search term must contain more than three alphabets")
  chartofind.a = paste0(".dict76r56obi64.",toupper(substr(chartofind,1,1)))

  if(exists(chartofind.a)){
    .xxd=get(chartofind.a)
    gfh = .xxd[grep(paste0("(*)+(",tolower(chartofind),")+(*)"), tolower(.xxd$name)),]
    gfhrow = nrow(gfh)
    if(gfhrow){
      gfh = stats::aggregate(definition ~ name, data = gfh,concatAll)

      fullResult = NULL

      gfh$n = unlist(lapply(gfh$name,splitSpa12))

      gfh0 = gfh[gfh$n<(nchar(chartofind)+3),]

      if(nrow(gfh0)) gfh = gfh0

      if(nrow(gfh) > limitResult)gfh = gfh[c(1:limitResult),]

      gfh$name = paste0(gfh$name,")")

      for(i.n in 1:nrow(gfh)){

        mesgage = paste0(gfh[i.n,1],": ",gfh[i.n,2],"\n")

        if(printResult) message(mesgage)

        else fullResult = c(fullResult,mesgage)

      }

      if(!is.null(fullResult)) return(fullResult)

    }else{

      message(paste0("No results found for ",chartofind," with this r2dictionary version."))

    }
  }

}

 

#' An alias to efine words in english
#'
#' Given a word, a mini-dictionary is searched and results are retrieved with the relevant definitions
#'
#' @inheritParams define
#'
#' @return Definition of word if it exisits
#'
#' @examples
#' \dontrun{
#' wordtodefine <- "zipzagged"
#' definition(wordtodefine)
#' }
#'
#' @export

definition <- define

#' An alias to efine words in english
#'
#' Given a word, a mini-dictionary is searched and results are retrieved with the relevant definitions
#'
#' @inheritParams define
#'
#' @return Definition of word if it exisits
#'
#' @examples
#' \dontrun{
#' wordtodefine <- "r2shortocde"
#' meaning(wordtodefine)
#' }
#'
#' @export

meaning <- define

#' Split definition character and count
#'
#'
#' @return whole word from the given text
#'
#' @param word the fullword to split
#'
#' @examples
#' \dontrun{
#' wordtodefine <- "smile v"
#' splitSpa12(wordtodefine)
#' }
#'
#' @export

splitSpa12 <- function(word){
  return(nchar(strsplit(word,"[[:space:]]+(\\()")[[1]][1]))
}