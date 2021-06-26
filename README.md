# MechaCar Statistical Analysis

### Purpose

AutosRUs’ new prototype (MechaCar) is experiencing production problems that are blocking the manufacturing team’s progress.  Analyses were conducted to help the manufacturing team move forward with their work.

## Analysis

### Linear Regression to Predict MPG Results Summary

-	Out of the five variables (vehicle length, vehicle weight, spoiler angle, ground clearance, and AWD), vehicle length and ground clearance provided a non-random amount of variance to the MPG values in the dataset.
-	The slope of the model is not considered to be zero because at least one coefficient is able to predict the dependent variable; therefore, we can reject the null hypothesis that the slope equals zero.
-	This model does predict MPG of prototypes effectively as the adjusted R-squared is medium-large (.68) and the p-value is well below .05.


![Linear Regression Pic](https://user-images.githubusercontent.com/80165223/123520342-dc459f00-d675-11eb-9b90-b93954f96f24.png)



### Summary Statistics on Suspension Coils Results
-	The design specifications for the MechaCar suspension coils required that the variance of the suspension coils must not exceed 100 pounds per square inch.  In reviewing the summary statistics for all lots combined the variance is approximately 62 meeting the design specification.  When breaking out the same data by lot, however, there are differences.  Lots 1 and 2 meet the requirements with variances at approximately 1 and 7.5, respectively, while Lot 3 does not meet requirements with a variance of 170.

Total Summary:

![Total Summary Pic](https://user-images.githubusercontent.com/80165223/123520354-e8316100-d675-11eb-91b6-c6a350c7b90c.png)


Lot Detail:

![Lot Summary Pic](https://user-images.githubusercontent.com/80165223/123520360-ebc4e800-d675-11eb-972e-e468459d596c.png)



### T-Tests on Suspension Coils
-	T-Tests were conducted on all lots combined and each individual lot to determine if the mean was statistically different from the population mean of 1500.  The overall mean, Lot 1 and Lot 2 did not have means that were significantly different than the population mean.  Lot 3’s mean was statistically different than the population mean of 1500.



![T-Test Pic](https://user-images.githubusercontent.com/80165223/123520371-fe3f2180-d675-11eb-8806-ae324c9b3134.png)




## Study Design: MechaCar vs Competition

In a hypothetical statistical model created to quantify how the MechaCar performs against competition, cost was the focus.  Below is are the main points of interest for that model:

1)	In quantifying the differences in overall cost, the price of car, highway fuel efficiency, and maintenance costs were considered for the two vehicle types.
2)	The null hypothesis is that there is no statistical difference in overall cost between MechaCar and its competitor, while the alternative hypothesis is that there is a significant statistical difference in cost between the two cars.
3)	To determine if there is a significant difference in mean between the cost of MechaCar vs its competitor a two-sample t-test could be run.  If there is a difference, a multiple linear regression could be run on both MechaCar and its competitor variables to see which one(s) are predicting the overall cost and, therefore, potentially driving price of each car.
4)	In order to run this test, overall cost of car for first two years of ownership, price of car, highway fuel efficiency, and average annual maintenance costs needed to be utilized in the model.  Overall cost is the dependent variable while the others are independent variables.
