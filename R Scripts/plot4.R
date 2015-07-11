# set working directory (change this to fit your needs)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# load data
source('scripts/cleaning_data.R')

# open device
png(filename='plots/plot4.png',width=480,height=480,units='px')

# plot data
par(mfrow=c(2,2));
plot(data$GlobalActivePower~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="");
plot(data$Voltage~data$DateTime, type="l", ylab="Voltage", xlab="datetime");
plot(data$SubMetering1~data$DateTime, type="l", ylab="Energy sub metering", xlab="");
lines(data$SubMetering2~data$DateTime, type="l", ylab="Energy sub metering", xlab="",col="Red");
lines(data$SubMetering3~data$DateTime, type="l", ylab="Energy sub metering", xlab="",col="Blue");
legend("topright", legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"), lty = c(1,1,1),col = c("black","red","blue"),bty="n",cex=0.75);
plot(data$GlobalReactivePower~data$DateTime, type="l", ylab="Global_reactive_power", xlab="datetime");


# Turn off device
x<-dev.off()