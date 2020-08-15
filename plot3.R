#The following is the script for build the requested plots

# The subsetted dataframe is called "analysisDate2"

#Plot 3

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