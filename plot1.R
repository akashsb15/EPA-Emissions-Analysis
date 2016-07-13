##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year

library(dplyr)
groupByYear <- group_by(NEI,year)
summByYear <- summarise(groupByYear, sum(Emissions))

## Plot emisssion trend
plot(summByYear, type = "l", col = "blue", xlab = "Year", ylab = "Total Emission (in tons)",
     main = "Emission Trend of PM-25 in the US")

## Save to PNG
dev.copy(png,'plot1.png')
dev.off()
