# coursework_MAT013_advanced_use_of_statistics_package
A coursework for one of my studying module in Cardiff University
link is here: http://ssa.cf.ac.uk/MAT013/SAS-R/Assessment/IndividualCoursework/2019-2020/index.html

Question 1:
In number theory, a polite number is a positive integer that can be written as the sum of two or more consecutive positive integers. Other positive integers are impolite.
Create a function that will give all impolite numbers less than k (an input). Demonstrate this function with k=70.
Furthermore write another function which takes also as input the name of a file and writes polite numbers with their sum representations to a csv file with that name. Demonstrate this function with k=70 and the file name “politenumbers.txt”.

Question 3:
Write a function that will return the nth Fibonacci number, F(n).
Modify the function so that it returns the nth number of the sequence defined by:
K(0)K(1)K(n)=a=b=αK(n−1)+βK(n−2)
where a,b,α and β are input parameters.
Write another function so that it will write all numbers of the form K(n) less than some number k to a csv file. The name of the csv file must not be an input parameter to the function but include the parameters a,b,α and β as well as the date on which the code was run. For example: general_fib_a=2_b=3_alpha=10_beta=2_2020-04-24.csv.


Question 4:
Load the dataset Seatbelts from library datasets in R. The dataset has 192 observations of monthly data on the number of deaths and serious injuries in the UK, for some months before and after introducing the legislation for seatbelts. Each row represents a month and for each month we measured 8 variables including the number of car driver deaths (DriversKilled), the number of deaths and serious injuries (drivers), the number of deaths and serious injuries in the front seat (front), the number of deaths and serious injuries in the rear seat (rear), distance driven (kms), petrol price (PetrolPrice), number of van drivers killed (VanKilled) and whether the law was in eect or not that month (law). Open the help le in R to see more details for the dataset.

Create a histogram demonstrating the number of drivers that died or seriously injured in an accident and histograms for the people in the front and rear seats of the car that died or seriously injured.

Compute the average number of people in the front seat that die or seriously injured is dierent for the months that the law is not in effect and the months the law it is in effect.

What is the correlation between variables front and rear.


Question 5:
Suppose that we want to compute the integral

I=∫∞0f(x)p(x)dx,
where p(x) is the density of the Chi-Square distribution with df=3. Consider the sum

SN=1/N∑i=1Nf(zi),
where zi,i=1,...,N, are independent identically distributed random variables with the standard lognormal distribution. By the Central Limit Theorem (CLT), we have
SN→I  as  N→∞,
Thus, SN is an estimator of I.

Consider the function f(x)=cos(x4)/(1+|x|). Using R, write a function GetSN with argument N which returns SN . Write a file with 40 evaluations of the function GetSN for N=5000. What can you say statistically about I?

SAS language part question
A perfect number is a natural number that is equal to the sum of its divisors (excluding itself). For example 1,2,4,7 and 14 divide 28 and 28=1+2+4+7+14.
Write code in SAS that allows one to write to a csv file a data set with all natural numbers less than a given parameter N as well as a boolean variable indicating if the number is perfect or not. 
