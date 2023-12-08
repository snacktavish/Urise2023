Statistical Analysis Toolbox: A Comprehensive R Code of T-Tests, One-Way-ANOVA, and Visualization Plots for Multi-Group Experimental Research

Project Description:
The Statistical Analysis Toolbox, an R code project designed to streamline statistical analysis for researchers conducting experiments with multiple experimental groups. This tool is particularly useful for investigators seeking to assess the effectiveness of treatments across different groups. It specializes in T-tests for comparing two groups and utilizes one-way ANOVA for more than two groups. R was selected for its robust statistical capabilities and rich visualization libraries. While developing Statistical Analysis Toolbox challenges arose in optimizing code efficiency and user-friendliness, striking a balance between simplicity and functionality. Plans for the future include integrating more statistical methods and improving plot customization to meet diverse research needs.The first section of the code focuses on T-testing, allowing users to compare two experimental groups and visualize the data through boxplots. The second section employs one-way ANOVA, providing users with informative boxplots enhanced with scatter points for a representative view. Additionally, a second plot option adds a more detailed and creative perspective to the data visualization. Statistical Analysis Toolbox simplifies the analysis of experimental data with multiple groups, providing an efficient and visually appealing solution. Whether for conference posters or gaining deeper research insights, this project meets your statistical analysis needs.


Installation: 
Have R studio installed and have your csv files ready. To run project, clone code from github and make adjustment based on file names/ your project. 


How to Use the Project:
Provide instructions and examples so users/contributors can use the project. This will make it easy for them in case they encounter a problem – they will always have a place to reference what is expected.
Before starting make sure that the csv files for the T-Test only have 2 experimental groups, this can be achieved by having one column with the experimental groups ( only 2 groups )and the other column has the numerical data. Similar to the one way anova, however for the column with experimental groups you may have multiple groups ( for instance I had 3 experimental rat groups).  
To start off make sure you are in the correct Directory in R studio that has all your csv files, I recommend having all the csv documents in a file that is easy to access. As of right now you have to manually change the entered csv names and labeled variables to align with your work. Additionally for the T-test,  remove the # on #install.packages("ggplot2") in order to install ggplot2 but after its installed add the # again since you will now have ggplot2 in your library. The same process goes for the #’s in the one way anova, they are going to be #install.packages("multcompView") and #install.packages("dplyr"). For the one way anova, especially the 2 boxplot that is more detailed, you can change the color for the boxplots by either writing the name of the color or you can write a specific color number. 


Before initiating the analysis, ensure that the CSV files are organized appropriately. For T-tests, have a CSV file with only two experimental groups, where one column contains the group labels (only 2 groups), and the other column contains the numerical data. For one-way ANOVA, you may have multiple groups in the column with experimental labels (e.g., I had 3 experimental rat groups). To get started you need to navigate the R Studio directory containing all your CSV files. Organize your files in an easily accessible folder. Manually adjust the entered CSV names and labeled variables in the code to align with your specific dataset.

T-Test Section:
~ Uncomment the line #install.packages("ggplot2") to install ggplot2. After installation, comment out the line again as ggplot2 will now be in your library.
~ Execute the T-test section to compare two experimental groups. The code will generate boxplots for visualization.

One-Way ANOVA Section:
~ Uncomment the lines #install.packages("multcompView") and #install.packages("dplyr") to install required packages. After installation, comment out these lines.
~ Execute the one-way ANOVA section, which includes two types of boxplots – a standard boxplot and a more detailed, customizable version.
~Customize the boxplot colors by specifying either the color name or a specific color number.

Note:
*Take care to follow these steps in the correct order for a seamless experience.
*Ensure that R Studio is set to the directory where your CSV files are located.
*Adjust CSV names and variables to match your dataset.
*Installation of required packages is a one-time process; comment out the installation lines after the first use.
*Explore and modify color options for boxplots in the one-way ANOVA section based on your preferences.


Credits:
Marisol Hernandez Garcia & Jackie Badillo 

