# packageurl<-"https://cran.r-project.org/src/contrib/Archive/nloptr/nloptr_1.2.1.tar.gz"
# install.packages(packageurl, repos=NULL, type="source")
# 
# library(PBImisc)
# kidney <- PBImisc::kidney

library(lattice)
library(ggplot2)


setwd("C:/Piotrek/kod/statistics/lab5")
kidney <- read.csv2("kidney.csv", header=TRUE)
print(kidney)

# Ex. 1

xyplot(kidney[["MDRD7"]] ~ kidney[["MDRD12"]] + kidney[["MDRD36"]] | kidney[["discrepancy.DR"]], data=kidney)

# Ex. 2

splom(~ kidney[, c("MDRD7", "MDRD3", "MDRD12", "MDRD36")], data=kidney)

# Ex. 3

densityplot(~ kidney[["MDRD12"]], data=kidney, groups=kidney[["therapy"]])

# Ex. 4

bwplot(kidney[["therapy"]] ~ kidney[["MDRD12"]] | kidney[["discrepancy.DR"]], data=kidney, groups=kidney[["discrepancy.AB"]])

# Ex. 5

cloud(kidney[["MDRD7"]] ~ kidney[["MDRD30"]] * kidney[["MDRD12"]] | kidney[["diabetes"]], data=kidney)

# library(Przewodnik)
# countries <- Przewodnik::countries

countries <- read.csv2("countries.csv", header=TRUE)
print(countries)

# Ex. 6

ggplot() + geom_point(data=countries, aes(.data[["birth.rate"]], .data[["death.rate"]], size=.data[["population"]], color=.data[["continent"]]))

# Ex. 7

ggplot(data=countries, aes(.data[["continent"]], .data[["birth.rate"]])) + geom_boxplot() + geom_violin() + geom_dotplot(binaxis = "y", stackdir = "center")

# Ex. 8

ggplot(data=countries, aes(.data[["birth.rate"]], .data[["death.rate"]], color=.data[["continent"]])) + geom_text(label=substr(toupper(countries[["continent"]]), start=1, stop=2), size=3)

ggplot(data=countries, aes(.data[["birth.rate"]], .data[["death.rate"]], shape=.data[["continent"]], color=.data[["continent"]])) + geom_point() + scale_shape_manual(values=c(0,1,2,3,4))


