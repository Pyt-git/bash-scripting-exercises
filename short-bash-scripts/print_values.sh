# code that outputs the value of a function y for values of x going from -10 to 10

# For f(x) = x:
#!/bin/bash
x=-10
while[ "$x" -le 10 ]
do
    echo "$x"
    x=$((x+1))
done

# For f(x) = x**2:
#!/bin/bash
x=-10
while[ "$x" -le 10 ]
do
    y=$((x*x))
    echo "y = $y"
    x=$((x+1))
done
