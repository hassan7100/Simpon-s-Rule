function Script21()
%Here we get lower and upper bound of integration and number of
%subintervals 
%here we apply simson's 3/8 rule for function x*e^(2x) 
format long
a=input("Enter lower bound:");
b=input("Enter Upper bound:");
n=input("Enter n must be multiple of 3:");
%finding h
h=(b-a)/n;
%x represnt different
x=(a:h:b);
for i=1:n+1
   y(i)=x(i)*exp(2*x(i));
end
%finding the sum of valuesother than values multiple of 3 then multiply by3
sum3=0;
for i=2:n
    if rem(i-1,3)==0
        continue
    end
    sum3=sum3+y(i);
end
sum3=3*sum3;
%finding the sum of values multiple of 3 then multiply by 2
sum2=0;
for i=4:3:n
    sum2=sum2+y(i);
end
sum2=2*sum2;
%finding final result as formula
value=(3*h/8)*(sum3+sum2+y(1)+y(n+1));
disp("Value of approximating integral xe^2x from "+num2str(a)+" to "+num2str(b)+ " is "+num2str(value));

