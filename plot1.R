data_file <- read.table("household_power_consumption.txt",skip=1,sep=";")
names(data_file) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
sub_data <- subset(data_file,data_file$Date=="1/2/2007" | data_file$Date =="2/2/2007")
hist(as.numeric(as.character(sub_data$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
