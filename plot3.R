#Read the data
DF2 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#take only the data for 2 days
mydata <- subset(DF2, as.Date(DF2$Date,"%d/%m/%Y") >= as.Date("2007-02-01") 
                 & as.Date(DF2$Date,"%d/%m/%Y") <= as.Date("2007-02-02"))
#create a png file with height and width
png("plot3.png",width = 480, height = 480, units = "px")

#plot the data
plot(strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S"),
     as.numeric(as.character(mydata$Sub_metering_1)),
     ylab="Energy sub metering",xlab= "",type='l',col="black")
lines(strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S"),
      as.numeric(as.character(mydata$Sub_metering_2)),
      ylab="Energy sub metering",xlab= "",type='l',col="red")
lines(strptime(paste(mydata$Date,mydata$Time),"%d/%m/%Y %H:%M:%S"),
      as.numeric(as.character(mydata$Sub_metering_3)),
      ylab="Energy sub metering",xlab= "",type='l',col="blue")

#creating legends
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c('black','red', 'blue'), cex=.75)

# closing device
dev.off()





