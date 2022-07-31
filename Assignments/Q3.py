import math as mt


def factorial(number):
    fact=1
    for i in range(number+1):
        if i!=0:
            fact=fact*i

    return fact




def approach1(Tn, n):
    i=1
    sum=1
    for i in range(Tn):
        if i !=0:
            if (i%2==0):
                sum=sum+((n**i)/factorial(i))
            else:
                sum=sum-((n**i)/factorial(i))    
            
    return (sum)



def approach2(Tn,n):
    i=1
    sum=0
    for i in range(Tn):
        if i !=0:
            sum=sum+((n**i)/factorial(i))
    return (1/sum)


true_value=0.006737947
Tn=20
n=5


print("True Value = ",true_value)
print("Approximated Value from Approach 1 = ",approach1(Tn,n))
print("Approximated Value from Approach 2 = ",approach2(Tn,n))


##         Output

##  True Value =  0.006737947
##  Approximated Value from Approach 1 =  0.006745540097711817
##  Approximated Value from Approach 2 =  0.006783655460139556

