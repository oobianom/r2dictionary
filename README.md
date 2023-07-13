# r2dictionary: An R package with english dictionary
 A mini-dictionary readily accessible in R
# r2dictionary: A mini-dictionary readily accessible within R for Rmarkdown and Shiny

### Official site: https://r2dictionary.obi.obianom.com

[![](https://rpkg.net/pub-age/r2dictionary)](https://rpkg.net/package/r2dictionary)
[![CRAN\_Status\_Badge](https://www.r-pkg.org/badges/version/r2dictionary)](https://cran.r-project.org/package=r2dictionary) [![](https://cranlogs.r-pkg.org/badges/grand-total/r2dictionary)](https://cran.r-project.org/package=r2dictionary) 



![](https://coursewhiz.org/mainsite/img/r2dictionary.jpg)

Despite the predominant use of R for data manipulation and various robust statistical calculations, in recent years, more people from various disciplines are beginning to use R for other purposes. A critical milestone that has enabled large influx of users into the R community is the development of the Tidyverse family of packages and Rmarkdown. With the latter, one can write all kinds of documents and produce output in formats such html and PDF very easily. In the hopes of doing this seamlessly, further tools are needed for such users to easily and freely write in R for all kinds of purposes. The r2dictionary introduces a means for users to directly search for definitions of terms within the R environment. While I was vacating in Boston in 2020, I thought of something to do since covid19 had kept me at home with no option of playing soccer. My way out was R since I could easily finish an app and have it published on CRAN within days. So I began thinking, something that will be cool for people to lookup words easily and include in Rmarkdown files was a dictionary. So, I just spent my weekend writing this package. Hope you like it.



### A short tutorial video

![Tutorial for using mini-dictionary](http://coursewhiz.org/mainsite/videos/r2dictionary2.gif) 

### Installation and use

```{r}
# install from CRAN

install.packages("r2dictionary")
# or from Github
devtools::install_github('oobianom/r2dictionary')

# load library

library("r2dictionary")
# or using
quickcode::libraryAll(r2dictionary)

# use - this prints result to console
define("drive")

# use - this returns result as vector
var1 <- define("drive", printResult = F)


```

