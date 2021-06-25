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

z=$(( $y + $a ))
echo "the value of $y + $a is" $z

echo "the value of $a+$b*$c is " $z




y=$(( $a * $b ))
echo "the value of $b * $c is" $y

z=$(( $y + $c ))
echo "the value of $y + $a is" $z

echo "the value of $a*$b+$c is " $z




y=$(( $a / $b ))
echo "the value of $a / $b is" $y

z=$(( $y + $c ))
echo "the value of $y + $c is" $z

echo "the value of $c+$a/$b is " $z


y=$(( $a % $b ))
echo "the value of $b % $c is" $y

z=$(( $y + $c ))
echo "the value of $y + $a is" $z

echo "the value of $a%$b+$c is " $z
