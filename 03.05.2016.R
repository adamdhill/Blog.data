
#library(RCurl)
#library(foreign)

#url <- "https://raw.githubusercontent.com/adamdhill/Blog.data/master/03.05.2016.txt"
#FB.data <- getURL(url)
#data <- read.table(textConnection(FB.data))

#attach(data)
#Perc <- round(interactions/sum(interactions)*100)
#Label <- paste(name, Perc)
#pie(uniques, labels = Label, main = "Percent share of total interactions on FB in February")

library(httr)
url <- "https://raw.githubusercontent.com/adamdhill/Blog.data/master/03.05.2016.csv"
request <- GET(url)
data <- textConnection(request)
read.table(data)
