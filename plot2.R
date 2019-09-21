##aggregate the total emissions from PM2.5
##for baltimore city for fips==24510
baltimoreNEI <- NEI[NEI$fips=="24510",]
aggTotBaltimore <- aggregate(Emissions ~ year, baltimoreNEI,sum)

###make a histogram using the base plotting system
barplot(
  aggTotBaltimore$Emissions,
  names.arg=aggTotBaltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Tons)",
  main="Total PM2.5 Emissions From All Baltimore City Sources"
)