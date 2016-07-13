##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year

library(dplyr)
reqData <- filter(NEI, fips == "24510") # Filter required data
groupByYear <- group_by(reqData,year) # Group data by year
summByYear <- summarise(groupByYear, sum(Emissions)) # Create summary by the year

## Plot emisssion trend
plot(summByYear, type = "l", col = "blue", xlab = "Year", ylab = "Emission (in tons)", 
     main = "Emission Trend of PM-25 in Baltimore City")

## Save to PNG
dev.copy(png,'plot2.png')
dev.off()
