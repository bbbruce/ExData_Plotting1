epc <- read.delim("household_power_consumption.txt", sep=";", na.string="?", stringsAsFactors=FALSE)
epc <- subset(epc, Date == "1/2/2007" | Date == "2/2/2007")
epc$DateTime <- strptime(paste(epc$Date,epc$Time),format="%d/%m/%Y %H:%M:%S")

png("plot2.png",height=480,width=480)
plot(epc$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="", xaxt="n")
axis(1,at=c(0,NROW(epc)/2,NROW(epc)),labels=c('Thu','Fri','Sat'))
dev.off()