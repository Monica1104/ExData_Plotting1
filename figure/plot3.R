elec <- data.table::fread("household_power_consumption.txt",na.strings = "?")
use <- elec[which(elec$Date == "1/2/2007"|elec$Date == "2/2/2007"),]
datetime <- strptime(paste(use$Date,use$Time,sep = ""),"%d/%m/%Y %H:%M:%S")
plot(datetime,use$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = "")
lines(datetime,use$Sub_metering_2,type = "l",col = "red")
lines(datetime,use$Sub_metering_3,type = "l",col = "blue")
legend("topright",lty = c(1,1),col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.75)
dev.copy(png,file = "plot3.png",width = 480,height = 480)
dev.off()