##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by year

library(dplyr)

reqData <- filter(NEI, fips == "24510" & type == "ON-ROAD") # Filter the required data

reqData <- reqData[,c(4,6)] # Select required columns
groupByYear <- group_by(reqData,year)
summByYear <- summarise(groupByYear, sum(Emissions))

## Plot emisssion trend

library(ggplot2)


plot(summByYear, type = "l", col = "blue", xlab = "Year", ylab = "Total Emission (in tons)",
     main = "Emission Trend of PM-25 by Motor Vehicles (Baltimore City)")


## Save to PNG
dev.copy(png,'plot5.png')
dev.off()
