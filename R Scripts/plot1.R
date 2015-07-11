# set working directory (change this to fit your needs)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# load data
source('scripts/cleaning_data.R')

# open device
png(filename='plots/plot1.png',width=480,height=480,units='px')

# plot data
hist(data$GlobalActivePower, col = "Red", xlab="Global Active Power (kilowatts)", main="Global Active Power");

# Turn off device
x<-dev.off()