# sin(x) as series expansion
#!/bin/Bash
# Inital values

x=$1
eps=$2

i=0
sign=1
power=$x
fact=1
term=$x
sum=0

while true
do
    # Computing the current sum
    sum=$(echo "$sum+$term"|bc-l)

    # Preparing next iteration
    i=$((i+1))

    # Computing alternating sign
    sign=$(echo "-1*$sign"|bc-l)

    # Computing incremental power
    power=$(echo "$power*$x*$x"|bc-l)

    # Computing the incremental factorial values
    fact=$(echo "$fact*(2*$i)*(2*$i+1)"|bc-l)

    # Computing the next term
    term=$(echo "$sign*$power/$fact"|bc-l)

    # Convergence check
    abs=$(echo "if($term<0) -$term else $t"|bc-l)
    if["$(echo "$abs<$eps"|bc-l)"-eq1]; then
        break
    fi
done
echo "$sum"
