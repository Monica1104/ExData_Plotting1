elec <- data.table::fread("household_power_consumption.txt",na.strings = "?")
use <- elec[which(elec$Date == "1/2/2007"|elec$Date == "2/2/2007"),]
datetime <- strptime(paste(use$Date,use$Time,sep = ""),"%d/%m/%Y %H:%M:%S")
GAP <- as.numeric(use$Global_active_power)
png("plot2.png",width = 480,height = 480)
plot(datetime,GAP,type = "l",xlab = "",ylab = "Global Active Power(kilowatts)")
dev.off()