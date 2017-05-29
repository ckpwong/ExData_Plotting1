# Downloads and reads data
source('./getdata.R')

# reset to single plot
par(mfrow = c(1,1))

# Plots to plot3.png
png("plot3.png")

# Don't actually show the points
plot(subdata$DateTime, subdata$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")

# plot the line graphs
lines(subdata$DateTime, subdata$Sub_metering_1, col="black")
lines(subdata$DateTime, subdata$Sub_metering_2, col="red")
lines(subdata$DateTime, subdata$Sub_metering_3, col="blue")

# create legend
legend("topright", lty=c(1,1,1), col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()

