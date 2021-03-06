# Explanatory Data Analysis Course Project 2

### Goal 
This project dealt with acessing data from  [EPA National Emissions Inventory web site] (http://www.epa.gov/ttn/chief/eiinformation.html). The overall goal of this assignment is to explore the National Emissions Inventory database and see what it say about fine particulate matter pollution in the United states over the 10-year period 1999–2008. Data is available in two .rds files.

### The Dataset 

PM2.5 Emissions Data (summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year. The variables are,  

- fips: A five-digit number (represented as a string) indicating the U.S. county   
- SCC: The name of the source as indicated by a digit string (see source code classification table)   
- Pollutant: A string indicating the pollutant   
- Emissions: Amount of PM2.5 emitted, in tons   
- type: The type of source (point, non-point, on-road, or non-road)   
- year: The year of emissions recorded   

Source Classification Code Table (Source_Classification_Code.rds): This table provides a mapping from the SCC digit strings in the Emissions table to the actual name of the PM2.5 source. The sources are categorized in a few different ways from more general to more specific and you may choose to explore whatever categories you think are most useful. For example, source “10100101” is known as “Ext Comb /Electric Gen /Anthracite Coal /Pulverized Coal”.

### Questions Answered

1. Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.
2. Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (fips == "24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.  
3. Of the four types of sources indicated by the type (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999–2008 for Baltimore City? Which have seen increases in emissions from 1999–2008? Use the ggplot2 plotting system to make a plot answer this question.
4. Across the United States, how have emissions from coal combustion-related sources changed from 1999–2008?
5. How have emissions from motor vehicle sources changed from 1999–2008 in Baltimore City?
6. Compare emissions from motor vehicle sources in Baltimore City with emissions from motor vehicle sources in Los Angeles County, California (fips == "06037"). Which city has seen greater changes over time in motor vehicle emissions?

### Solutions

1. Script - plot1.R. Figure - plot1.png. Total emissions of PM-25 have decreased across the US between 1999 and 2008.
2. Script - plot2.R. Figure - plot2.png. Emissions in Baltimore City has decreased between 1999 and 2008. However, the emissions saw an increase between 2002 and 2005 before it dropped again in 2005.
3. Script - plot3.R. Figure - plot3.png. It is evident that "POINT" sources have led to a drastic increase in emissions. The general trend among other sources is that the emissions in 2008 has increased compared to the emissions in 1999. However, the emissions have decreased in 2008 compared to those of 2002 and 2005. Emissions from "NONPOINT" sources have increased in 2008.
4. Script - plot4.R. Figure - plot4.png. The overall trend of emissions by coal combustion related - sources have decreased from 1999 to 2008. However, between 2002 and 2005 there was an increase in emissions, which subsequently decreased in 2008.
5. Script - plot5.R. Figure - plot5.png. Emissions from motor vehicles in Baltimore City have declined. 1999 to 2002, there is a steep decline. 2002 to 2005, the decline is gradual and from 2005 to 2008 there is a faster rate of drop in emissions.
6. Script - plot6.R. Figure - plot6.png. It is evident from the plot that the emissions in Los Angeles County is a lot higher than in Baltimore City. In the former, emissions saw an increase in 2002 and 2005 compared to 1999, but has come down in 2008. On the other hand, Baltimore City, has seen a consitent decrease in emissions by motor vehicles.


