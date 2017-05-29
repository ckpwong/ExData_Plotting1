# Downloads and reads data
source('./getdata.R')

# sets to 2x2 plots
par(mfrow = c(2,2))

# Plots to plot4.png
png("plot4.png")

# First plot: global active power across time
plot(subdata$DateTime, subdata$Global_active_power, xlab="", ylab="Global Active Power", type="n")
lines(subdata$DateTime, subdata$Global_active_power, col="black")

# Second plot: voltage across time
plot(subdata$DateTime, subdata$Voltage, xlab="datatime", ylab="Voltage", type="n")
lines(subdata$DateTime, subdata$Voltage, col="black")

# Third plot: sub metering
plot(subdata$DateTime, subdata$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
 ## plot the line graphs
lines(subdata$DateTime, subdata$Sub_metering_1, col="black")
lines(subdata$DateTime, subdata$Sub_metering_2, col="red")
lines(subdata$DateTime, subdata$Sub_metering_3, col="blue")
 ## create legend
legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Fourth plot: global reactive power across time
plot(subdata$DateTime, subdata$Global_reactive_power, xlab="datatime", ylab="Global_reactive_power", type="n")
lines(subdata$DateTime, subdata$Global_reactive_power, col="black")

dev.off()

