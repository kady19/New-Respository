#10/29 
#this script contains my 10/24 hw
#Exercise 1
data("hafu", package="learningr")
library(stringr) #opening string package
hafu$nationalityoffatherisuncertain<-str_detect(hafu$Father, fixed("?")) #detects the question mark in the father column 
hafu$nationalityofmotherisuncertain<-str_detect(hafu$Mother,fixed("?")) #detects the question mark in the mother column
z
hafu$Father<-str_replace(hafu$Father,fixed("?"),"") #replace the question mark in this column
hafu$Mother<-str_replace(hafu$Mother,fixed("?"),"") #replace the question mark in this column

#Exercise 2
library(reshape2) #opening reshape2 package
hafu_long<-melt(hafu, measure.vars = c("Father","Mother")) 
#converting from wide to long on father and mother column using melth function


#Exercise 3
mostcommom10<-function(x) { #creating a function
  counts<-table(x,useNA = "always") #creating a table for most common values
  head(sort(counts,decreasing = TRUE), 10) #lets us find the most common values using sort and head together
}
mostcommom10(hafu$Father) #testing out on the father column
mostcommom10(hafu$Mother)#testing out on the mother column

