# MechaCar Statistical Analysis

## Overview of Analysis: 
I was asked to help Jeremy and the data analytics team do a special project from ***AutosRUs’*** on there newest protype the *MechaCar*.

### Purpose
Using RStudio, we will need to perform a series of tests to determine the following:

1. Predict the MPG of *MechaCar* prototype by running multiple linear regression models.
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils
3. Find out if the manufacturing lots are statistically different from the mean population by run **t-tests**.
4. And lastly, design a statistical study to compare vehicle performance of the **MechaCar** vehicle against vehicles from other competitors. 

## Linear Regression to Predict MPG:
To answer a few questions about **MPG** a linear regression model was implemented on several variable based on the prototype. In the image below, highlighted in yellow you can see the results of the variables versus MPG.

- The “vehicle_weight”, “spoiler_angle”, and “AWD” provided the greatest non-random variance amount to MPG.
- The slope of the linear model is considered not zero, when looking at the **“Estimate”** track of the image you can see the values are not equal to zero indicating a change in y when x is moved along the axis. 

![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/mpg%20p-value.PNG)

- Based on the R2 value in the below image (~0.71) this would be considered an effective regression model. The level of effectiveness is dependent on how accurate the regression model is required to be. 

![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/r.squared.PNG)

## Summary Statistics on Suspension Coils:
When evaluating the variance of suspension coils for **”PSI”** based on the manufacturing lot, the specifications state the coils should not exceed 100 PSI. In the image below (***total_summary*** ) we can see that the variances are well within the specified parameters.
 
![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/total%20summary%20psi.PNG)  

A more detailed evaluation, ***”lot_summary”***, of the individual lots (see image below) reveals that one of the manufacturing lots, *Lot3*, does not pass the requirements of the specifications as the variances exceed 100 PSI. This lot needs a quality control check for proper proceed to determine if it’s a manufacturing problem or material problem. 

![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/lot%20summary%20psi.PNG)

## T-Tests on Suspension Coils
Using **t-tests** to interpret the **p-value** to help us determine how the PSI as a whole and as individuals manufacturing lots compare to the mean PSI of the population.

- In the image of the upper left quadrant we can see that the overall PSI from all manufacturing lots p-value is larger than our significance level of 0.05 which means we reject our null hypothesis that the PSI are not statistically different than the PSI population.
- In the image of the upper right quadrant we can see the p-value for PSI from **Lot 1** compared to the PSI population is smaller than the significance level of 0.05 and there for we can accept the null hypothesis that **Lot1** is statistically different than the PSI population.
- In the image of the bottom left quadrant reveals the p-value for PSI from **Lot 2** has the same outcome of being smaller than the significance level of 0.05 and there for we can also accept the null hypothesis. 
- For the last image in the bottom right quadrant the p-value for PSI from **Lot 3** is larger than the significance level of 0.05 so there for we can reject the null hypothesis.

![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/t.test%20all%20lots.PNG)![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/t.test%20lot1.PNG)
![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/t.test%20lot2.PNG)![]( https://github.com/Apollo619/MechaCar_Statistical_Analysis/blob/main/resources/t.test%20lot3.PNG)


## Study Design: MechaCar vs Competition
An important question ***AutosRUs’*** needs answered is how well will there newest prototype, **”MechaCar”** sell vs the other competitors vehicle? Performing a statistical study to quantify how the vehicle will perform depends on the features or for the studies purpose, the metrics:
- What metric or metrics are you going to test?
  - Advanced accident avoidance systems
  - Cost
  - MPG
  - Maintenance cost
  - Safety
  - Heated/Cooled front seats
- What is the null hypothesis or alternative hypothesis?
  - The null hypothesis is that the **MechaCar** will not sell as well as competitors if it contains all the suggested features above. 
- What statistical test would you use to test the hypothesis? And why?
  - Multiple Linear Regression (MLR) would be the recommend method to test the hypothesis.
  - The MLR method is used to determine how much variance in the dependent variable is accounted for in the linear combination of independent variables
- What data is needed to run the statistical test?
  - A dataset that contains the frequency in which consumers purchased vehicles with the suggested metrics.  
