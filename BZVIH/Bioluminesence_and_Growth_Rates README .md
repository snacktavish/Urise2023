
# Growth Rates and Bioluminescence Data Organizer

## Acknowledgers
 * Brent Zeyus Valdez 
 * Isaac Hernandez 

 ## General Information
This string of code allows us to input raw data and allow the data to be organized in a particular format, allowing easy access to copy and paste onto a growth rates package on R studio and data visualization through Prism/GraphPad. 

## Purpose and significance 
Using this, we would be able to document the changes of bioluminsesence and growth rates onto the host-symbiont bacteria for Eupremna Scolopes (Vibrio Fischeri). Over time, we would be able to monitor the changes and patterns created for the different locations of the isolates collected. 

## Locations of the Squids 
    - Hawaii (ES-114) 
    - Australia (ETBB1-C)
    - The Philippines (EAS005)
    - Japan (EM-17)
Data can change depending on Vibrio fischeri reaction to the evolutionary/adaptive pressures from a change of temperature.

## Setup
```
# read in text file
file = open("Ancestor18C_Growthrates_FILE.csv", "r")

# loop through lines in file with enumerate for iterator
counter = 1
for line in file:
    # if statement should reset counter to 1 if it reaches 7
    # the counter is used to label the lines 1-6 for each line
    if counter == 7:
        counter = 1
    line = str(line).split(",")
    # the four lines below split every line into 4 lines
    # corresponding to the four strains retaining the timestep
    # and the label of the original string and the line number
    # it keeps the three replicates together in a single line
    print(str(line[0])+ ",S1,L"+ str(counter)+ ',' + ','.join(line[1:4]))
    print(str(line[0])+ ",S2,L"+ str(counter)+ ',' + ','.join(line[4:7]))
    print(str(line[0])+ ",S3,L"+ str(counter)+ ',' + ','.join(line[7:10]))
    print(str(line[0])+ ",S4,L"+ str(counter)+ ',' + ','.join(line[10:13]))

cat Ancestor18C_Growthrates_long_format.csv | grep "S1,L1"
```


## Sample Data Used 
## Programs Used

 - [R studio](https://posit.co/download/rstudio-desktop/)
 - [Prism/GraphPad](https://www.graphpad.com/)
 - [Python](https://code.visualstudio.com/)


