
### VECTORS : .....................................................................
vec1 = c(7,5,90,3,2)
vec2 = c(1,3.6,"Hello world",FALSE)

typeof(vec1)
typeof(vec2)

vec1 <- NULL
vec2 <- NULL

a <- seq(1,10,by=2)
print(a)

v <- c(2,-3,10,-5,10.4,1,3)
sort(v)

v1 <- c(1,2,3,4)
v2 <- c(5,6,7,8)

add.v <- v1+v2
print(add.v)
sub.v <- v1-v2
print(sub.v)
mul.v <- v1*v2
print(mul.v)
div.v <- v1/v2
print(div.v)

### LIST : .....................................................................

list1 <- list(1,2,3,"hi",0.345,FALSE,2/3)

list1[[5]]
### MATRIX.......................................................................

matrx1 <- matrix(1:12,nrow=3,ncol=4,byrow=FALSE)
print(matrx)

"""OUTPUT :
     [,1] [,2] [,3] [,4]
[1,]    1    4    7   10
[2,]    2    5    8   11
[3,]    3    6    9   12"""

matrx2 <- matrix(1:12,nrow=3,ncol=4,byrow=TRUE)
print(matrx)

"""OUTPUT : 
     [,1] [,2] [,3] [,4]
[1,]    1    2    3    4
[2,]    5    6    7    8
[3,]    9   10   11   12"""

matrx2[2,4] #second row and forth column

###DATAFRAME : ..................................................................

employee.no <- c(1,2,3,4,5)
employee.name <- c("Anderson","Peter","Rahul","Dinesh","Anand")
employee.salary <- c(10000,12000,9000,15000,19000)
emp.df <- data.frame(employee.no,employee.name,employee.salary)
print(emp.df)

"""Output : 
employee.no employee.name employee.salary
1           1      Anderson           10000
2           2         Peter           12000
3           3         Rahul            9000
4           4        Dinesh           15000
5           5         Anand           19000"""

result <- data.frame(emp.df$employee.name,emp.df$employee.salary)
print(result)

"""OUTPUT:
emp.df.employee.name emp.df.employee.salary
1             Anderson                  10000
2                Peter                  12000
3                Rahul                   9000
4               Dinesh                  15000
5                Anand                  19000"""


emp.df$employee.dependent <- c(2,3,1,5,2) #To add a new column
print(emp.df)

"""OUTPUT:
  employee.no employee.name employee.salary employee.dependent
1           1      Anderson           10000                  2
2           2         Peter           12000                  3
3           3         Rahul            9000                  1
4           4        Dinesh           15000                  5
5           5         Anand           19000                  2"""






