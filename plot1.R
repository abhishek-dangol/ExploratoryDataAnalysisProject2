##loading the NEI and SCC data frames 
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##aggregate the total PM2.5 emission from all sources for each of the years
aggTot <- aggregate(Emissions ~ year,NEI, sum)


##plot the histogram using the base plotting system
barplot(
  (aggTot$Emissions)/10^6,
  names.arg=aggTot$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources"
)