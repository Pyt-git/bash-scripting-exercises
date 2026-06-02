# sin(x) as series expansion
#!/bin/Bash
# Valeurs initiales

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
    # Calcul de la présente somme
    sum=$(echo "$sum+$term"|bc-l)

    # Préparer prochaine itération
    i=$((i+1))

    # Calcul du signe alternant
    sign=$(echo "-1*$sign"|bc-l)

    # Calcul de la puissance incrémentale
    power=$(echo "$power*$x*$x"|bc-l)

    # Calcul de la factorielle incrémentale
    fact=$(echo "$fact*(2*$i)*(2*$i+1)"|bc-l)

    # Calcul du prochain terme
    term=$(echo "$sign*$power/$fact"|bc-l)

    # Vérification de convergence
    abs=$(echo "if($term<0) -$term else $t"|bc-l)
    if["$(echo "$abs<$eps"|bc-l)"-eq1]; then
        break
    fi
done
echo "$sum"
