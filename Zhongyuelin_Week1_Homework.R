## Part 2 
#2.1
x=12
a=2
b=4
#1
z=x**(a**b)
#2
z=(x**a)**b
#3
z=3*(x**3)+2*(x**2)+6*x+1
#4
z=z+1

##2.2 Give R expressions that return the following vectors 
#1. (1,2,3,4,5,6,7,8,7,6,5,4,3,2,1)
#2. (1,2,2,3,3,3,4,4,4,4,5,5,5,5,5)
#1.
X=c(1:8,7:1)
#2.
Y=rep(1:5,times=c(1,2,3,4,5))

#2.3 Find the number from 1 to 100 that is divisible by 2 or 3 or 7
a=c()
H=c(1:100)
for (i in H){
  if(i%%2==0 || i%%3==0 ||i%%7==0){
    a=c(a,i)
    
    
    
  }
}
print(a)

#2.4
queue = c("Steve", "Russell", "Alison", "Liam") 
#2.41  Barry arrives
queue=append(queue,"Burry")
#2.42 Steve is served
queue=queue[-1]
#2.43 Pam talks her way to the front with one item
queue=append(queue,"Pam", after=0)
#2.44 Barry gets impatient and leaves
queue=queue[-4]
#2.45 Alison gets impatient and leaves.
queue=queue[-3]
#2.46 Using the function which(x), find the position of Russell in the queue
which(queue=="Russell")

#Part 3
# Install R package carData.
install.packages("carData")
library(carData)
#3.1 How many rows and how many columns does Salaries have? 397 rows 6 columns
dim(Salaries)
#3.2 How many columns are numerical, how many columns contain factors? 3 factors columns 3 int columns
#install "dplyr' packages
install.packages("dplyr")
library('dplyr')
group_by(Salaries)
#3.3  Create a new data.frame, salaries_a, that only contains the data from discipline = "A". How many rows does this data.frame have? Check the documentation, what does discipline = "A" stand for? 181 rows
salaries_a=data.frame(filter(Salaries,discipline=="A"))
dim(salaries_a)
#3.4 Create a new data.frame, salaries_f, that only contains the data from the Female professor at a  ROWS rank of AssocProf. How many of those are in discipline A, how many in discipline B? A:6 B:5
salaries_f= data.frame(filter(Salaries,sex=="Female"))
salaries_f= data.frame(filter(salaries_f,rank=="AsstProf")) 
salaries_f_A=data.frame(filter(salaries_f,discipline=="A")) 
salaries_f_B=data.frame(filter(salaries_f,discipline=="B")) 
dim(salaries_f_A)
dim(salaries_f_B)
#3.5 What is the percentage of professors that started this year (yrs.service == 0)? 11 people
salaries_y=data.frame(filter(Salaries,yrs.service==0))
dim(salaries_y)
#3.6 How many professors in discipline A have been professor for more than 10 years (i.e., yrs.service larger than 10)? 119 people
salaries_10y=data.frame(filter(salaries_a,yrs.service>10))
dim(salaries_10y)
#3.7 Add a new column called luck to Salaries and fill it with random samples from the integers 1 to 6.
Salaries[ , 'luck_of_salaries'] = (sample(1:6,397,replace = T))
#3.8 How many of the Associate Professors (i.e., rank of AssocProf) got lucky (i.e., have a 6 in column luck)? What percentage of the Associate Professors got lucky? 12 people
salaries_luck=data_frame(filter(Salaries,luck_of_salaries==6))
salaries_luck_asst=data_frame(filter(salaries_luck,rank=="AsstProf"))
dim(salaries_luck_asst)