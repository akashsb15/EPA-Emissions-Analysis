##  Load the files

setwd("C:/Users/Admin/Documents/Coursera/R/data/Course4/EPA-Emissions-Analysis/")

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Group data by type and year

library(dplyr)
reqData <- filter(NEI, fips == "24510") # Filter required data
groupByTypeYear <- group_by(reqData[,c(5,6)], type, year) # Group using only required columns
summByTypeYear <- table(groupByTypeYear) # Get frequency count using table()

## Plot emisssion trend

library(ggplot2)
df <- as.data.frame(summByTypeYear, stringsAsFactors = FALSE)

ggplot(df, aes(x=year, y = Freq, fill = type)) + geom_bar(stat="identity") + 
  facet_grid(type~.) + ggtitle("Type wise Frequency Trend (Baltimore City)") + labs(x = "Year", y = "Count")


## Save to PNG
dev.copy(png,'plot3.png')
dev.off()
