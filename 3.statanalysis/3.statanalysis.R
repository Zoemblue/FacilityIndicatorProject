#====ANOVA tests====

birth.data <- read.csv(paste(path.data, "births_clean_1.csv", sep = ""), 
                       stringsAsFactors = FALSE)
#INDICATOR #1
#defining group and variable for ANOVA
peergroup <- birth.data$Hospital.peer.group
var1 <- birth.data$Vaginal.delivery.for.first.time.eligible.mothers..percentages.

#running ANOVA for variable #1 
aov1 <- aov(var1 ~ peergroup) #ANOVA test
summary(aov1) #summary of ANOVA test  
#            Df Sum Sq Mean Sq F value Pr(>F)  
#peergroup    3 0.3672 0.12241   2.861  0.047 *
# Residuals  46 1.9679 0.04278
# p = 0.047

#INDICATOR #2
#defining group and variable for ANOVA 
peergroup = peergroup
var2 <- birth.data$Early.repeat.CS.delivery..percentages.

#running ANOVA for variable #2 
aov2 <- aov(var2 ~ peergroup) #ANOVA test
summary(aov2) #summary of ANOVA test
#            Df Sum Sq Mean Sq F value Pr(>F)  
#peergroup    3 0.1446 0.04819   2.484 0.0725 .
#Residuals   46 0.8924 0.01940  
# p = 0.0725

#INDICATOR #3
#defining group and variable for ANOVA 
peergroup = peergroup 
var3 <- birth.data$Post.date.inductions.done.early..percentages.

#running ANOVA for variable #3 
aov3 <- aov(var3 ~ peergroup) #ANOVA test
summary(aov3) #summary of ANOVA test 
#            Df    Sum Sq   Mean Sq F value Pr(>F)
#peergroup    3 0.0000618 2.061e-05   1.396  0.256
#Residuals   46 0.0006791 1.476e-05 
#p = 0.256

#INDICATOR #4
#defining group and variable for ANOVA 
peergroup = peergroup 
var4 <- birth.data$Only.intermittent.Auscultations.in.low.risk.deliveries..percentages.

#running ANOVA for variable #4 
aov4 <- aov(var4 ~ peergroup) #ANOVA test 
summary(aov4) #summary of ANOVA test
#            Df Sum Sq Mean Sq F value Pr(>F)
#peergroup    3 0.0496 0.01655   0.638  0.595
#Residuals   46 1.1937 0.02595    
# p = 0.595

#INDICATOR #5
#defining group and variable for indicator #5
peergroup = peergroup  
var5 <- birth.data$Healthy.babies.fed.with.only.breastmilk..percentages.

#running ANOVA for variable #5 
aov5 <- aov(var5 ~ peergroup) #ANOVA test 
summary(aov5) #summary of ANOVA test 
#            Df Sum Sq Mean Sq F value Pr(>F)
#peergroup    3 0.0798 0.02661   1.376  0.262
#Residuals   46 0.8894 0.01933
#p = 0.262

#INDICATOR #6 
#Defining group and variable for indicator #6 
peergroup = peergroup 
var6 <- birth.data$Attempted.VBAC..percentages.

#running ANOVA for variable #6
aov6 <- aov(var6 ~ peergroup) #ANOVA test 
summary(aov6) # summary of ANOVA test 

#            Df Sum Sq Mean Sq F value Pr(>F)  
#peergroup    3 0.1919 0.06398   4.085 0.0118 *
#Residuals   46 0.7205 0.01566                 
#p = 0.0118

#====Post-Hoc Analysis with Tukey's HSD Test====

# A tukey test is necessary to compare patterns between the specific groups 
# that demonstrated statistic significance (ie. Indicators #1 and #6)

# INDICATOR #1 

#running Tukey HSD 
var1_Tukey <- TukeyHSD(aov1)
var1_Tukey #results 

#Tukey multiple comparisons of means
#95% family-wise confidence level

#Fit: aov(formula = var1 ~ peergroup)

#$peergroup
#               diff        lwr         upr     p adj
#medium-large   0.01613846 -0.2157602 0.248037073 0.9977020
#small-large   -0.16753636 -0.3778026 0.042729880 0.1608317
#xlarge-large  -0.01980000 -0.3217719 0.282171902 0.9980750
#small-medium  -0.18367483 -0.3765414 0.009191725 0.0671344
#xlarge-medium -0.03593846 -0.3260637 0.254186758 0.9874184
#xlarge-small   0.14773636 -0.1254075 0.420880226 0.4804932

#INDICATOR #6

#running Tukey HSD 
var6_tukey <- TukeyHSD(aov6)
var6_tukey #results

#Tukey multiple comparisons of means
#95% family-wise confidence level

#Fit: aov(formula = var2 ~ peergroup)

#$peergroup
#               diff         lwr       upr     p adj
#medium-large   0.08989231 -0.05042527  0.23020989 0.3315139
#small-large   -0.05957273 -0.18680096  0.06765550 0.6000238
#xlarge-large   0.04220000 -0.14051764  0.22491764 0.9265874
#small-medium  -0.14946503 -0.26616503 -0.03276504 0.0071174
#xlarge-medium -0.04769231 -0.22324173  0.12785712 0.8869486
#xlarge-small   0.10177273 -0.06350159  0.26704705 0.3661627

