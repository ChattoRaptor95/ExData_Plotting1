#The following is the script for build the requested plots

#Plot 1

hist(analysisDate$Global_active_power,
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", 
     col = "Red")

#Plot 2 ###############################################################

plot(analysisDate2$datetime, analysisDate2$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")

# my plot has a little error, it prints "ju", "vi", "sá" instead
# instead of "Thru", "Fri", Sat" because the system language of my computer
# is spanish but the day names are correct

#Plot 3 ##############################################################

par(mar = c(2, 4, 2, 4))
# adjusting plot margings for better fit 

plot(analysisDate2$datetime, analysisDate2$Sub_metering_1,
     type = "l", 
     ylim = c(0, 40), 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering")
par(new = TRUE)
# creating the first plot and adjusting the parameter function in order to
# adding the new two plots 


plot(analysisDate2$datetime, analysisDate2$Sub_metering_2, 
     type = "l", 
     ylim = c(0, 40), 
     col = "red", 
     xlab = "", 
     ylab = "Energy sub metering")
par(new = TRUE)
# creating and adding the second plot and adjusting the parameter function in order to
# adding the last plot

plot(analysisDate2$datetime, analysisDate2$Sub_metering_3, 
     type = "l", 
     ylim = c(0, 40), 
     col = "blue", 
     xlab = "", 
     ylab = "Energy sub metering")
#creating and adding the third plot

legend("topright",lty= 1, 
       col=c("black", "red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       cex = 0.50)
#creating and adjusting the plot legend 

#Plot 4 ##############################################################

par(mfrow = c(2,2))
# adjusting parameters 

# adding the first plot

plot(analysisDate2$datetime, analysisDate2$Global_active_power, 
     type = "l", 
     xlab = "",  
     ylab = "Global Active Power", 
     cex.lab = 0.8, 
     cex.axis = 0.8, 
     cex.sub = 0.8)

# adding the second plot
plot(analysisDate2$datetime, analysisDate2$Voltage, 
     type = "l", 
     xlab = "",  
     ylab = "Voltage", 
     cex.lab = 0.8, 
     cex.axis = 0.8, 
     cex.sub = 0.8)

# adding the third plot (same as before)
plot(analysisDate2$datetime, analysisDate2$Sub_metering_1,
     type = "l", 
     ylim = c(0, 40), 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering")
par(new = TRUE)

plot(analysisDate2$datetime, analysisDate2$Sub_metering_2, 
     type = "l", 
     ylim = c(0, 40), 
     col = "red", 
     xlab = "", 
     ylab = "Energy sub metering")
par(new = TRUE)

plot(analysisDate2$datetime, analysisDate2$Sub_metering_3, 
     type = "l", 
     ylim = c(0, 40), 
     col = "blue", 
     xlab = "", 
     ylab = "Energy sub metering")

legend("topright",lty= 1, 
       col=c("black", "red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), 
       cex = 0.50)


# adding the fourth plot
plot(analysisDate2$datetime, analysisDate2$Global_reactive_power, 
     type = "l", 
     xlab = "",  
     ylab = "Global Reactive Power", 
     cex.lab = 0.8, 
     cex.axis = 0.8, 
     cex.sub = 0.8)