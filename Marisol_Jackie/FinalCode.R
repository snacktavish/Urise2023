#install.packages("ggplot2")
#Set working directory 

#import your dataset

HNE <- read.csv("oletf_oletfcbd.csv", header = TRUE, sep =',')

#load ggplot 2 - it's great for making graphs 
library(ggplot2)

#let's go through the steps of hypothesis testing 

#state your null and alternative hypothesis 
##null: there is no difference in mean induction between the protein expression of 4HNE in oletf and oletfcbd 
##alternative: there is a difference in mean induction between the protein expression of 4HNE oletf and oletfcbd 

#is this a one-sided of two-sided t-test? 
##two-sided.

ggplot(HNE, aes(x = Group, y = Final_percentage)) + geom_boxplot() + theme_classic()

#back to hypothesis: STEP 2 calculate the test statistic  

t.test(Final_percentage~Group, data = HNE, var.equal = TRUE, paired = FALSE)

##t = 6.2163
#step 3: calculate your p-value 
## p = 4.475e-05

#step 4: state your conclusion
##Our p-value is 4.475e-05, therefore we can reject the null hypothesis that
##there is no difference in mean induction between the protein expression of 4HNE in oletf and oletfcbd 
##Resulting that there is significant difference between the protein expression of 4HNE in oletf and oletfcbd 

#LETO VS OLETF+CBD 
fourHNE <- read.csv("leto_oletfcbd.csv", header = TRUE, sep =',')
library(ggplot2)
ggplot(fourHNE, aes(x = Groups, y = Final_Percentage)) + geom_boxplot() + theme_classic()
t.test(Final_Percentage~Groups, data = fourHNE, var.equal = TRUE, paired = FALSE)

#LETO VS OLETF
HNEprotein <- read.csv("leto_oletf.csv", header = TRUE, sep =',')
library(ggplot2)
ggplot(HNEprotein, aes(x = group, y = final_percentage)) + geom_boxplot() + theme_classic()
t.test(Final_Percentage~Groups, data = fourHNE, var.equal = TRUE, paired = FALSE)

##############################################################################################


#ONE WAY ANOVA 
#install.packages("multcompView")
#install.packages("dplyr")

library(ggplot2)
library(multcompView)
library(dplyr)
HNE_expression <- read.csv("HNEexpression_groups.csv", header = TRUE, sep =',')
str(HNE_expression)
anova <- aov(Final_Percentage_Normalized ~ Rat_Groups, data = HNE_expression)
summary(anova)
tukey <- TukeyHSD(anova)
print(tukey)

#Time to plot 
ggplot(HNE_expression, aes(Rat_Groups, Final_Percentage_Normalized)) +
  geom_boxplot() +
  labs(x="Groups", y="Final Percentage Normalized to LETO") + geom_point() 



#Make it more colorful!
HNE_expression$Rat_Groups <- ordered(HNE_expression$Rat_Groups,
                                     levels = c("LETO", "OLETF", "O+CBD"))
#install.packages("ggpubr")
library("ggpubr")
ggboxplot(HNE_expression, x = "Rat_Groups", y = "Final_Percentage_Normalized", 
          color = "Rat_Groups", palette = c("#00A36C", "#FF0000", "#800080"),
          order = c("LETO", "OLETF", "O+CBD"),
          ylab = "Final Percentage Normalized to LETO", xlab = "Groups")+ geom_point() 


