# set working directory (change this to fit your needs)
setwd('~/Source Code/GitHub/Exploratory-Data-Analysis')

# required packages
library(data.table)
library(lubridate)

# download the zip file and unzip
file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(file.url,destfile='source data/power_consumption.zip')
unzip('source data/power_consumption.zip',exdir='source data',overwrite=TRUE)

# read the raw table and limit to 2 days
dataset <- read.csv('source data/household_power_consumption.txt',header=TRUE, sep=";", na.strings = '?');
data<-dataset[dataset$V1=='1/2/2007'|dataset$V1=='2/2/2007',];
cols<-c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity',
        'SubMetering1','SubMetering2','SubMetering3');
colnames(data)<-cols;

# clean up the variable names and convert date/time fields
data$DateTime=dmy(data$Date)+hms(data$Time);
data<-data[,c(10,3:9)];

