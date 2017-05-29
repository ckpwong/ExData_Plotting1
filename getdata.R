# Download and read the data.
# All plotting scripts should source this file such that each plot can be regenerated independently from each other
res <- download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
if (res != 0) {
    stop("Failed to download data")
}

unzip("data.zip", "household_power_consumption.txt", overwrite=T)

data <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?")

# Verifies the data contains the same number of rows and columns as expected
if (!all(dim(data) == c(2075259, 9))) {
    stop("Data file does not contain expected number of rows")
}

# convert date & time columns for easier manipulation
library(lubridate)

data <- transform(data, DateTime = strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S", tz="UTC"))

# only look at subset on 2007-02-01 and 2007-02-02
subdata <- subset(data, as.Date(DateTime) == as.Date("2007-02-01") | as.Date(DateTime) == as.Date("2007-02-02"))
