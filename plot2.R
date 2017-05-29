# Downloads and reads data
source('./getdata.R')

# reset to single plot
par(mfrow = c(1,1))

# Plots to plot2.png
png("plot2.png")

# Don't actually show the points
plot(subdata$DateTime, subdata$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)", type="n")

# plot the line graph
lines(subdata$DateTime, subdata$Global_active_power)

dev.off()

