##SIMPLE LINEAR REGRESSION  - SALARY DATA.........................................

df <- read.csv("50_Startups.csv") #IMPORT DATASET
df                                #DISPLY DATASET

scatter.smooth(x=df$R.D.Spend,y=df$Profit,main="R&D Spend vs Profit") #SCATTER PLOT
cor(df$R.D.Spend,df$Profit) #Correlation
#OUTPUT :
"""[1] 0.9729005 pOSITIVE CORRELATION"""

scatter.smooth(x=df$Administration,y=df$Profit,main="Administration vs Profit") #SCATTER PLOT
cor(df$Administration,df$Profit) #Correlation
#OUTPUT :
"""[1] 0.2007166 ZERO CORRELATION"""

scatter.smooth(x=df$Marketing.Spend,y=df$Profit,main="Marketing Spend vs Profit") #SCATTER PLOT
cor(df$Marketing.Spend,df$Profit) #Correlation
#OUTPUT :
"""[1] 0.7477657 HIGHLY CORRELATED"""

#BOXPLOT (to find outliers in the dataset)..........................................................

par(mfrow=c(1,3))

boxplot(df$R.D.Spend,main="R&D Spend",sub=paste("outlier :" , boxplot.stats(df$R.D.Spend)$out))

boxplot(df$Administration,main="Salary",sub=paste("outlier :" , boxplot.stats(df$Administration)$out))

boxplot(df$Marketing.Spend,main="Salary",sub=paste("outlier :" , boxplot.stats(df$Marketing.Spend)$out))


#Linear Regression Model..........................................................
linearMod <- lm(Profit~R.D.Spend+Administration+Marketing.Spend,data=df)
linearMod #intercept and gradient

"""OUTPUT :

Coefficients:
(Intercept)        R.D.Spend   Administration  Marketing.Spend  
5.012e+04        8.057e-01       -2.682e-02        2.723e-02 """

summary(linearMod) #R-sqaured and Adjusted R-squared error

"""OUTPUT :
Residuals:
   Min     1Q Median     3Q    Max 
-33534  -4795     63   6606  17275 

Coefficients:
Estimate Std. Error t value Pr(>|t|)    
(Intercept)      5.012e+04  6.572e+03   7.626 1.06e-09 ***
R.D.Spend        8.057e-01  4.515e-02  17.846  < 2e-16 ***
Administration  -2.682e-02  5.103e-02  -0.526    0.602    
Marketing.Spend  2.723e-02  1.645e-02   1.655    0.105    
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 9232 on 46 degrees of freedom
Multiple R-squared:  0.9507,	Adjusted R-squared:  0.9475 
F-statistic:   296 on 3 and 46 DF,  p-value: < 2.2e-16"""