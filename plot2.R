#Read the data
DF2 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")

#take only the data for 2 days
mydata <- subset(DF2, as.Date(DF2$Date,"%d/%m/%Y") >= as.Date("2007-02-01") 
                 & as.Date(DF2$Date,"%d/%m/%Y") <= as.Date("2007-02-02"))

#create a png file with height and width
png("plot2.png",width = 480, height = 480, units = "px")

#plot the data
with(mydata,
     plot(strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S"),
          as.numeric(as.character(Global_active_power)),
          ylab="Global Active Power(kilowatts)",xlab= "Weekdays",type='l'))

#closing device

dev.off()


     


