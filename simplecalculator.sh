#!/bin/bash

# Welcome to my first Program written in Bash Scripts
# This is a Simple Calculator

start="
--------------------------------

Welcome to my Program, called Simple Calculator

Remember the operations before you get started:
1) Add
2) Subtract
3) Multiply
4) Divide

Break a Leg!
---------------------------------
"

# Display ASCII art on the screen
echo "$start"


# function to sum two numbers
sum(){
result=$(( $1 + $2 ))
echo "$result"
}


# function to subtract two numbers
sub(){
result=$(( $1 - $2 ))
echo "$result"
}


# function to multiply two numbers
mul(){
result=$(( $1 * $2 ))
echo "$result"
}


# function to divide two numbers, zero division error handled
div(){
if [ $2 -eq 0 ]; then
	echo "Zero Division Error: Cannot perform division by zero."
else
	result=$(( $1 / $2 ))
	echo "$result"
fi
}

# Ask the user for the first number
echo "Input First number: "
read num1


# Ask the user for the second number
echo "Input Second number: "
read num2


# Ask the user for the operation
echo "Which operation do you want to perform? "
read operation

if [ $operation -eq 1 ]; then
	echo "Result of addition is: $(sum $num1 $num2)"
elif [ $operation -eq 2 ]; then
	echo "Result of subtraction is: $(sub $num1 $num2)"
elif [ $operation -eq 3 ]; then
	echo "Result of multiplication is: $(mul $num1 $num2)"
elif [ $operation -eq 4 ]; then
	echo "Result of division is: $(div $num1 $num2)"
else
	echo "Invalid Operation Provided."
fi