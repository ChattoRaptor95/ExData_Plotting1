#The following is the script for build the requested plots

# The subsetted dataframe is called "analysisDate2"


#Plot 2 

plot(analysisDate2$datetime, analysisDate2$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")

# my plot has a little error, it prints "ju", "vi", "sá" instead
# instead of "Thru", "Fri", Sat" because the system language of my computer
# is spanish but the day names are correct
