
## Variance and Standard Deviation................................................
X <- c(1,5,9,10,-23,67,0.3,18)

result.variance <- var(X)
result.std_dev <- sd(X)

print(result.variance)
print(result.std_dev)

##Normal Distribution ..........................................................
x <- seq(-20,20,by=0.1)
y <- dnorm(x,mean=5,sd=2)
plot(x,y,main="Normal Distribution",col="red")

x <- seq(-20,20,by=0.1)
y <- pnorm(x,mean=5,sd=2)
plot(x,y,main="Normal Distribution",col="red")

x <- seq(0,1,by=0.02)
y <- qnorm(x,mean=0.5,sd=2)
plot(x,y,main="Normal Distribution",col="red")

y <- rnorm(50)
hist(y,main="Histogram",col="orange")

##Skewness and Kurtosis ...........................................................

library(moments)

x <- c(1,5,7,8,9,1,44,56,23,45)

result.skewness <- skewness(x)

result.kutosis <- kurtosis(x)

print(result.skewness)

print(result.kutosis)

