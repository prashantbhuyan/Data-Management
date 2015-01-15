# Prashant B. Bhuyan
# 9.5.2014
# Data Acquisition & Management


##### Question 1 #####  

v <- c(1:10,5:14)

# Answer: 
v
# [1]  1  2  3  4  5  6  7  8  9 10  5  6  7  8  9 10 11 12 13 14

##### Question 2 #####

as.character(v)

# Answer: 
as.character(v)
# [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "5"  "6"  "7"  "8" 
# [15] "9"  "10" "11" "12" "13" "14"

##### Question 3 #####

f <- factor(v)

# Answer:
# > f <- factor(v)
f
# [1] 1  2  3  4  5  6  7  8  9  10 5  6  7  8  9  10 11 12 13 14
# Levels: 1 2 3 4 5 6 7 8 9 10 11 12 13 14

##### Question 4 #####

levels(f)

# Answer:
levels(f)
# [1] "1"  "2"  "3"  "4"  "5"  "6"  "7"  "8"  "9"  "10" "11" "12" "13" "14"

###### Question 5 #####

f1<-function(x) 3*x^2-4*x+1
f1(v)

# Answer:
# [1]   0   5  16  33  56  85 120 161 208 261  56  85 120 161 208 261 320 385
# [19] 456 533

##### Question 6 #####

bhat <- solve(t(x)%*%x)%*%t(x)%*%y

# Answer:
bhat
#          [,1]
# [1,] 3.153126
# [2,] 1.983743
# [3,] 3.999539

##### Question 7 #####

nms <- list(studentAges = c(13,15,11,12,17,15,16,14,19,12), studentHeights = c(5.9,6.3,6.2,5.7,5.8,6.1,5.5,5.3,5.0,5.85), studentNames = c("jim","bob", "james", "kenya", "alex", "tom", "hillary", "bill", "louis", "patricia"))

# Answer:
nms$studentAges
# [1] 13 15 11 12 17 15 16 14 19 12
nms$studentHeights
# [1] 5.90 6.30 6.20 5.70 5.80 6.10 5.50 5.30 5.00 5.85
nms$studentNames
# [1] "jim"      "bob"      "james"    "kenya"    "alex"     "tom"     
# [7] "hillary"  "bill"     "louis"    "patricia"


##### Question 8 #####

numeric <- c(1:10)
date <- c(seq(as.Date("2014/09/04"), by = "day", length.out = 10))
factor <- c(rep("jim",3), rep("bob",3), rep("charlie", 4))
character <- paste(letters[1:10],sep = "")
data <- data.frame(numeric, date, factor, character)

# Answer:
numeric
# [1]  1  2  3  4  5  6  7  8  9 10
date
# [1] "2014-09-04" "2014-09-05" "2014-09-06" "2014-09-07" "2014-09-08"
# [6] "2014-09-09" "2014-09-10" "2014-09-11" "2014-09-12" "2014-09-13"
factor
# [1] "jim"     "jim"     "jim"     "bob"     "bob"     "bob"     "charlie"
# [8] "charlie" "charlie" "charlie"
character
# [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"
data
# numeric       date  factor character
# 1        1 2014-09-04     jim         a
# 2        2 2014-09-05     jim         b
# 3        3 2014-09-06     jim         c
# 4        4 2014-09-07     bob         d
# 5        5 2014-09-08     bob         e
# 6        6 2014-09-09     bob         f
# 7        7 2014-09-10 charlie         g
# 8        8 2014-09-11 charlie         h
# 9        9 2014-09-12 charlie         i
# 10      10 2014-09-13 charlie         j

##### Question 9 #####

newRow<-data.frame(numeric = 11, date = "2014-09-14", factor = "sarah", character = "k")

appendedData<-rbind(data, newRow)

# Answer: 
appendedData
# numeric       date  factor character
# 1        1 2014-09-04     jim         a
# 2        2 2014-09-05     jim         b
# 3        3 2014-09-06     jim         c
# 4        4 2014-09-07     bob         d
# 5        5 2014-09-08     bob         e
# 6        6 2014-09-09     bob         f
# 7        7 2014-09-10 charlie         g
# 8        8 2014-09-11 charlie         h
# 9        9 2014-09-12 charlie         i
# 10      10 2014-09-13 charlie         j
# 11      11 2014-09-14   sarah         k
levels(appendedData$factor)
# [1] "bob"     "charlie" "jim"     "sarah"  


##### Question 10 #####

setwd("~/Desktop")
file <- read.csv("temperatures.csv")

# Answer: 
file
# Temperature
# 1         91.2
# 2         81.7
# 3         51.4
# 4         65.0
# 5         66.4
# 6         67.1
# 7         63.9
# 8         79.3
# 9         76.7
# 10        88.4

##### Question 11 #####

# measurements.txt was stored on in the "~/Desktop" directory. 
# I then changed my working directory to "~/Documents".  

setwd("~/Documents")
file <- read.delim("~/Desktop/measurements.txt")

# Answer: 
file
# Measurements
# 1          4.20
# 2          8.20
# 3          5.14
# 4          6.13
# 5          5.66
# 6          6.71
# 7          9.35
# 8          3.98
# 9          7.67
# 10        48.80

##### Question 12 #####

webFile <- read.table("http://www.example.txt", sep = "|", header = TRUE)

# Answer:
# *Note: MADE UP URL*
webFile <- read.table("http://www.example.txt", sep = "|", header = TRUE)
# Warning message:
#  In read.table("http://www.example.txt", sep = "|", header = TRUE) :
#  incomplete final line found by readTableHeader on 'http://www.example.txt'


#### Question 13 #####

factorial = 1
for(i in 1:12){
  + factorial = factorial*i
  + }
print(factorial)

# Answer: 
print(factorial)
# [1] 479001600
# Check:
factorial(12)
# [1] 479001600

##### Question 14 #####

p = 1500
r = .0324
t = 6
n = 12

for (i in 1:72){
  + A = p*(1+(r/n))^(i)
  + print(round(A,digits = 1))
  + }

# Answer: 
# [1] 1504
# [1] 1508.1
# [1] 1512.2
# [1] 1516.3
# [1] 1520.4
# [1] 1524.5
# [1] 1528.6
# [1] 1532.7
# [1] 1536.8
# [1] 1541
# [1] 1545.2
# [1] 1549.3
# [1] 1553.5
# [1] 1557.7
# [1] 1561.9
# [1] 1566.1
# [1] 1570.4
# [1] 1574.6
# [1] 1578.8
# [1] 1583.1
# [1] 1587.4
# [1] 1591.7
# [1] 1596
# [1] 1600.3
# [1] 1604.6
# [1] 1608.9
# [1] 1613.3
# [1] 1617.6
# [1] 1622
# [1] 1626.4
# [1] 1630.8
# [1] 1635.2
# [1] 1639.6
# [1] 1644
# [1] 1648.5
# [1] 1652.9
# [1] 1657.4
# [1] 1661.8
# [1] 1666.3
# [1] 1670.8
# [1] 1675.3
# [1] 1679.9
# [1] 1684.4
# [1] 1688.9
# [1] 1693.5
# [1] 1698.1
# [1] 1702.7
# [1] 1707.3
# [1] 1711.9
# [1] 1716.5
# [1] 1721.1
# [1] 1725.8
# [1] 1730.4
# [1] 1735.1
# [1] 1739.8
# [1] 1744.5
# [1] 1749.2
# [1] 1753.9
# [1] 1758.7
# [1] 1763.4
# [1] 1768.2
# [1] 1772.9
# [1] 1777.7
# [1] 1782.5
# [1] 1787.3
# [1] 1792.2
# [1] 1797
# [1] 1801.9
# [1] 1806.7
# [1] 1811.6
# [1] 1816.5
# [1] 1821.4

A = p*(1+(r/n))^(n*t)

round(A,digits=1)
# [1] 1821.4

##### Question 15 #####

sum = 0
numbers<-1:20
for(i in numbers){
  + if(numbers[i]%%3==0){
    + sum = sum+numbers[i]
    + }
  + }

# Answer: 
print(sum)
# [1] 63

# Check: 
# > 3+6+9+12+15+18
# [1] 63

##### Question 16 #####

sumx = 0
x = 2
for(i in 1:10){
  + sumx = sumx + x^i
  + }

# Answer: 
print(sumx)
# [1] 2046

##### Question 17 #####

x = 2
sum = 0
i = 1
while(i <= 10){
  + sum = sum+x^i
  + i = i+1
  + print(sum)
}

# Answer: 
print(sum)
# [1] 2046
#
# and Iteratively:
# [1] 6
# [1] 14
# [1] 30
# [1] 62
# [1] 126
# [1] 254
# [1] 510
# [1] 1022
# [1] 2046

##### Question 18 #####

nVec <- 1:10
x = 2
sum(x^nVec)

# Answer: 
# [1] 2046

##### Question 19 #####

nSeq <- seq(20,50,by = 5)
nSeq

# Answer:
# [1] 20 25 30 35 40 45 50

##### Question 20 #####

chVec <- rep("example", 10)

# Answer:
#  [1] "example" "example" "example" "example" "example" "example" "example"
# [8] "example" "example" "example"

##### Question 21 #####

# Given three numbers a,b,c we can implement a quadratic function by testing whether or not
# A*x^2 + B*x + C has real roots in which case the discriminant given by 
# B^2 - 4*A*C >= 0.  A negative discriminant would mean that the quadratic equation has no
# solution.  We proceed by simulation. 

simulations = 6000000
a = runif(simulations)
b = runif(simulations)
c = runif(simulations)
z = b^2 - 4*a*c
roots = z >= 0
table(roots)/simulations

# Answer: 
table(roots)/simulations
# roots
# FALSE      TRUE 
# .7454437 .2545563 
#
# Thus, the real root is approx .2545563.  




