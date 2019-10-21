##if Condition in R..............................................................

values <- 1:10

if (sample(values,1)<=10) 
print(paste(values, " is less than or equal to 10 "))

##if-else Condition in R.........................................................

val1 = 4
val2 = 5

if (val1<val2) {
  print("value 1 is smaller than value 2")
}else if(val2 < val1){
  print("value 2 is greater than value 1")
}

##for Loop in R..................................................................

values <- c(10,20,30,40,50)

for (id in 1:5) {
  print(values[id])
}

##Nested Loop in R...............................................................

mat <- matrix(1:10,2)
mat

seq(nrow(mat))

seq(ncol(mat))

for (id1 in seq(nrow(mat))) {
  for (id2 in seq(ncol(mat))){
    print(mat[id1,id2])
  }
}

##while Loop in R................................................................

value = 3.1415

while (value<9.4589) {
  value = value + 0.5632
  print(c(value,value-1,value-2))
}

##repeat and break Statement in R................................................

value <- 10

repeat {
  print(value)
  value = value + 1
  if (value == 20) {
    break
  }
}

##next Statement in R............................................................

x <- 1:5

for (i in x) {
  if(i==3) {
    next
  }
  print(i)
}

##return Statement in R...........................................................

check <- function(x) {
  if (x<0) {
    result <- "x is less than 0"
  }else if(x == 0)  { 
    result <- "x is equal to zero"
  }else if (x>0) {
    result <- "x is greater than zero"
  }
  return(result)
}


check(-1)
check(10)
check(0)




