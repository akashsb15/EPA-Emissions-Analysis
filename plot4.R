##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year

library(dplyr)

reqData <- merge(NEI, SCC, by.x = "SCC", by.y = "SCC") # Merge data based on matching values
reqData1 <- reqData[grepl("Coal$", reqData$`EI.Sector`),] # Use grepl to filter records related to Coal combustion sources
reqData1 <- reqData1[,c(4,6)] # Select required columns
groupByYear <- group_by(reqData1,year)
summByYear <- summarise(groupByYear, sum(Emissions))

## Plot emisssion trend

library(ggplot2)


plot(summByYear, type = "l", col = "blue", xlab = "Year", ylab = "Total Emission (in tons)",
     main = "Emission Trend of PM-25 by Coal Combustion Related Sources")


## Save to PNG
dev.copy(png,'plot4.png')
dev.off()
