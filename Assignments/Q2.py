import math as m
n=10000
limit=((m.pi)**4)/90
approx_value=0
true_value=((m.pi)**4)/90
print("True Value = ",true_value)

for i in range(n):
    if i!=0:
        if approx_value>limit:
            print("Limit reached/ f converged to (pi^4)/90  at n = ",i," and approximated value of f = ",approx_value)
            break
        if approx_value<=limit:
            approx_value=approx_value + 1/(i*4)    

approx_value=approx_value - 1/(i*4) 
print("Approximated_Value", approx_value)
error=(true_value-approx_value)

print("The true reletive error is ",error)




##       Output

##  True Value =  1.082323233711138
##  Limit reached/ f converged to (pi^4)/90  at n =  44  and approximated value of f =  1.0874996551504568
##  Approximated_Value 1.0818178369686386
##  The true reletive error is  0.0005053967424992756
