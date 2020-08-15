#The following is the script for build the requested plots

# The subsetted dataframe is called "analysisDate2"

#Plot 4 

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