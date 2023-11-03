install.packages("ggplot2")
#Set working directory 

#import your dataset

HNE <- read.csv("oletf_oletfcbd.csv", header = TRUE, sep =',')

#load ggplot 2 - it's great for making graphs 
library(ggplot2)

#let's go through the steps of hypothesis testing 

#state your null and alternative hypothesis 
##null: there is no difference in mean induction between the protein expression of 4HNE in oletf and oletfcbd 
##alternative: there is a difference in mean induction between the protein expression of 4HNE oletf and oletfcbd 

#is this a one-sided or two-sided t-test? 
  ##two-sided. No directionality is implied 

#graph the data!
  ##a boxplot works great for numerical and categorical data 

ggplot(HNE, aes(x = Group, y = Final_percentage)) + geom_boxplot() + theme_classic()

#back to hypothesis: STEP 2 Calculate the test statistic 

t.test(Final_percentage~Group, data = HNE, var.equal = TRUE, paired = FALSE)


##t = 6.2163
#step 3: calculate your p-value 
## p = 4.475e-05

#step 4: state your conclusion
##Our p-value is 4.475e-05, therefore we can reject the null hypothesis that
##there is no difference in mean induction between the protein expression of
##4HNE in oletf and oletfcbd 

