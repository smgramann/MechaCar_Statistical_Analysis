library(dplyr)
library(tidyverse)

#Read in MechaChar csv
MechaCar_Table <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#generate the multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table)

#Determine p-value and r-squared
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_Table))

#Read in suspension coil csv
Suspension_Coil <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

#Create total summary dataframe
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')

#Create lot summary dataframe
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')

#ttest 1 - all lots
t.test(Suspension_Coil$PSI, mu=1500)

#ttest 2 - lot 1
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot1")$PSI, mu=1500)

#ttest 2 - lot 2
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot2")$PSI, mu=1500)

#ttest 2 - lot 3
t.test(subset(Suspension_Coil, Manufacturing_Lot=="Lot3")$PSI, mu=1500)