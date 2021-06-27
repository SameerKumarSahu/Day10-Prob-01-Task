#!/bin/bash -x

echo "Welcome to the Program"



read -p "Enter the First number :-" a
echo "the First number is " $a


read -p "Enter the Second number :-" b
echo "the Second number is " $b


read -p "Enter the Third number :- " c
echo "the Third number is " $c


y=$(( $b * $c ))
echo "the value of $b * $c is" $y

z1=$(( $y + $a ))
echo "the value of $y + $a is" $z1

echo "the value of $a+$b*$c is " $z1




y=$(( $a * $b ))
echo "the value of $b * $c is" $y

z2=$(( $y + $c ))
echo "the value of $y + $a is" $z2

echo "the value of $a*$b+$c is " $z2




y=$(( $a / $b ))
echo "the value of $a / $b is" $y

z3=$(( $y + $c ))
echo "the value of $y + $c is" $z3

echo "the value of $c+$a/$b is " $z3


y=$(( $a % $b ))
echo "the value of $b % $c is" $y

z4=$(( $y + $c ))
echo "the value of $y + $a is" $z4

echo "the value of $a%$b+$c is " $z4



declare -A Dict

Dict[z1]=$z1
Dict[z2]=$z2
Dict[z3]=$z3
Dict[z4]=$z4

echo "All computes result is stored in dictionary" ${Dict[@]}



VALUES=()
count=0
for DATA in "${Dict[@]}";
do
        VALUES+=("${DATA##*:}")
	let count++
done

for(( i=0;i<count; i++ ))
do
	arr[i]=${VALUES[i]}
done

echo ${arr[i]}
sort=0

for ((i=0; i<=3; i++))
do
    for((j=0; j<=3; j++))
    do
        if [ ${arr[i]} -lt ${arr[j]} ]
        then
		continue
	else
            sort=${arr[i]}
            arr[i]=${arr[j]}
            arr[j]=$sort
        fi
    done
done


echo "${arr[@]}"


sort=0

for ((i=0; i<=3; i++))
do
    for((j=0; j<=3; j++))
    do
        if [ ${arr[i]} -lt ${arr[j]} ]
        then
            sort=${arr[i]}
            arr[i]=${arr[j]}
            arr[j]=$sort
	else
		continue
        fi
    done
done

echo "${arr[@]}"







