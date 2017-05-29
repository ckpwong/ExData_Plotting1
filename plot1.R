# Downloads and reads data
source('./getdata.R')

# Reset to single plot
par(mfrow = c(1,1))

# Saves to plot1.png
png("plot1.png")

# Histogram of global active power, in red
hist(subdata$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")

dev.off()

