##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year

library(dplyr)
reqData <- filter(NEI, fips == "24510")
groupByYear <- group_by(reqData,year)
summByYear <- summarise(groupByYear, sum(Emissions))

## PLot emisssion trend
plot(summByYear, type = "l", col = "blue", xlab = "Year", ylab = "Total Emission (in tons)")

## Save to PNG
dev.copy(png,'plot2.png')
dev.off()
