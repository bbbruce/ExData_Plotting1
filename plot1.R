epc <- read.delim("household_power_consumption.txt", sep=";", na.string="?", stringsAsFactors=FALSE)
epc <- subset(epc, Date == "1/2/2007" | Date == "2/2/2007")
epc$DateTime <- strptime(paste(epc$Date,epc$Time), format="%d/%m/%Y %H:%M:%S")

png("plot1.png",height=480,width=480)
hist(epc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()