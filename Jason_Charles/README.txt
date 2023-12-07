pysmooth

A program which takes in a point cloud and traces a continuous curve through points, aiming to produce a line
representative of all the points in the cloud without necessarily passing through all of them.

This project is aimed towards ecological applications, and was designed with the intent to smooth GPS point
clouds generated from transect runs. Eventually, the length of a transect might be determined from its point
cloud, and not from a physical transect line.

We are currently working to implement a bezier-curve based smoothing algorithm in combination with our arithmetic
smoothing algorithm.

Installation:
Clone from our github please!

PRAXIS:
Right now, you have to manually go in and change the entered csv name and the skiprows argument in the readcsv
function so it'll skip to the row you want the table to begin in. Also, you'll need to change column names 
referenced throughout the program to match up with yours. Latitude and longitude to meters are done with respect to 
central California, so if you're in a different part of the world you'll have to change the conversion factor too.

Credits:
Jason Tello & Charles Hu
