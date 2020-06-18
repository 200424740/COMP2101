#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

firstnum=5
secondnum=2
sum=$((firstnum + secondnum))
dividend=$((firstnum / secondnum))
fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")


#Using read commands to assign three numbers
read -p "Enter the first number =" Num1
read -p "Enter the second number =" Num2
read -p "Enter the third number =" Num3

#sum of the numbers
sum=$((Num1 + Num2 + Num3))
#Multiple of the numbers
multiple=$((Num1 * Num2 * Num3))
#displaying the sum and multiple
echo "$sum, $multiple"


cat <<EOF
$firstnum plus $secondnum is $sum
$firstnum divided by $secondnum is $dividend
  - More precisely, it is $fpdividend
EOF
