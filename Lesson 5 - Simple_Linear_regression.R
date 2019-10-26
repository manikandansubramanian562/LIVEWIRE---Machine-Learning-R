##SIMPLE LINEAR REGRESSION  - SALARY DATA.........................................

df <- read.csv("Salary_Data.csv") #IMPORT DATASET
df                                #DISPLY DATASET

scatter.smooth(x=df$YearsExperience,y=df$Salary,main="Salary Data") #SCATTER PLOT

#BOXPLOT (to find outliers in the dataset)........................................

par(mfrow=c(1,2))

boxplot(df$YearsExperience,main="Years of Experience",sub=paste("outlier :" , boxplot.stats(df$YearsExperience)$out))

boxplot(df$Salary,main="Salary",sub=paste("outlier :" , boxplot.stats(df$Salary)$out))

cor(df$YearsExperience,df$Salary) #Correlation

"""OUTPUT : [1] 0.9782416""" #highly positive correlated dataset

#Linear Regression Model..........................................................
linearMod <- lm(YearsExperience~Salary,data=df)
linearMod #intercept and gradient

"""OUTPUT :
Call:
lm(formula = YearsExperience ~ Salary, data = df)

Coefficients:
(Intercept)       Salary  
 -2.3831606    0.0001013"""

summary(linearMod) #R-sqaured and Adjusted R-squared error

"""OUTPUT :
Call:
lm(formula = YearsExperience ~ Salary, data = df)

Residuals:
Min       1Q   Median       3Q      Max 
-1.12974 -0.46457  0.04105  0.54311  0.79669 

Coefficients:
Estimate Std. Error t value Pr(>|t|)    
(Intercept) -2.383e+00  3.273e-01  -7.281  6.3e-08 ***
Salary       1.013e-04  4.059e-06  24.950  < 2e-16 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 0.5992 on 28 degrees of freedom
Multiple R-squared:  0.957,	Adjusted R-squared:  0.9554 
F-statistic: 622.5 on 1 and 28 DF,  p-value: < 2.2e-16"""