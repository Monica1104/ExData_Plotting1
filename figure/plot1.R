elec <- data.table::fread("household_power_consumption.txt",na.strings = "?")
use <- elec[which(elec$Date == "1/2/2007"|elec$Date == "2/2/2007"),]
use$Date <- as.Date(use$Date, "%d/%m/%Y")
with(use,hist(use$Global_active_power,col = "red",xlab = "Global Active Power(kilowatts)",ylab = "Frequency",main = "Global Active Power"))
dev.copy(png,file = "plot1.png",width=480,height=480)
dev.off()