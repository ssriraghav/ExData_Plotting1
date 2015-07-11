# set working directory (change this to fit your needs)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# load data
source('scripts/cleaning_data.R')

# open device
png(filename='plots/plot2.png',width=480,height=480,units='px')

# plot data
plot(data$GlobalActivePower~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="");

# Turn off device
x<-dev.off()