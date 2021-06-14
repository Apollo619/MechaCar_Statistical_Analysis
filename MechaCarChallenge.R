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
