.onLoad <- function(libname, pkgname) {
  # clear the environment of previous stores
  if(exists(".loadedDictionary"))rm(.loadedDictionary)
  if(!isDictionaryLoaded()){
    loadDictionary()
  }
}

.onAttach <- function(libname, pkgname) {
  # deliver a welcoming message, very important
  packageStartupMessage("\nr2dictionary: a mini-dictionary for english words")
}
