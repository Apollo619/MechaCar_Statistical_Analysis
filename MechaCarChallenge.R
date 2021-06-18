## loading the packages
library(dplyr)
library(jsonlite)
library(tidyverse)

## reading csv file
MechaCar_table <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

## create the linear model
linear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_table)

## create summary for p-value
summary(linear)

## get r-squared value
summary(linear)$r.squared

## reading csv file
Suspension_table <- read.csv(file="Suspension_Coil.csv", check.names=F, stringsAsFactors = F)

## total summary dataframe
total_summary <- Suspension_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## lot summary dataframe
lot_summary <- Suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

## t.test for PSI across all lots
t.test(Suspension_table$PSI, mu=mean(1500))

## t.test for PSI across each lot
lot1 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot1')
lot2 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot2')
lot3 <- Suspension_table %>% filter(Manufacturing_Lot=='Lot3')
t.test(lot1$PSI, mu=mean(Suspension_table$PSI))
t.test(lot2$PSI, mu=mean(Suspension_table$PSI))
t.test(lot3$PSI, mu=mean(Suspension_table$PSI))
