## set the dataFile variable
globalactivedata <- "./data/household_power_consumption.txt"
data <- read.table(globalactivedata, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## set time variable limit data to 2 day period in Feb 2007.
 subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
 globalActivePower <- as.numeric(subSetData$Global_active_power)
## Generate png file
 png("plot1.png", width=800, height=800)
## Generate histogram 
 hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")  
 dev.off()

 