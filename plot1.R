#The following is the script for build the requested plots

# The subsetted dataframe is called "analysisDate2"

#Plot 1

hist(analysisDate$Global_active_power,
     xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", 
     col = "Red")