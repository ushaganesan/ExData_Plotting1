# Reading from the csv
DF2 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
# subset the dates required and use that as main dataset
mydata <- subset(DF2, as.Date(DF2$Date,"%d/%m/%Y") >= as.Date("2007-02-01") & as.Date(DF2$Date,"%d/%m/%Y") <= as.Date("2007-02-02"))

#create a png file with height and width
png("plot1.png",width = 480, height = 480, units = "px")

#plot the data
with(mydata,hist(as.numeric(as.character(Global_active_power)),col="Red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power"))

dev.off()


