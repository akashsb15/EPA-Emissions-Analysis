##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by fips and year

library(dplyr)

reqData <- filter(NEI, (fips == "24510" | fips == "06037") & type == "ON-ROAD")

reqData <- reqData[,c(1,4,6)] # Select required columns
groupByYear <- group_by(reqData, fips, year)
summByYear <- summarise(groupByYear, sum(Emissions))

## Plot emisssion trend

library(ggplot2)


ggplot(summByYear, aes(x=year, y = `sum(Emissions)`, fill = fips)) + geom_bar(stat="identity") + 
  facet_grid(fips~.) + ggtitle("Motor Vehicle Emissions (Baltimore City Vs Los Angeles County)") + 
  labs(x = "Year", y = "Emissions (in tons)")

## Save to PNG
dev.copy(png,'plot6.png')
dev.off()
