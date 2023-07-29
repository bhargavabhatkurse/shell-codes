num1=20
num2=5

echo $(( num1 + num2 ))  #double ((  )) and dollar sign to get the value and leave space between ( and num1. and num2 and )
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

#using expr
echo $( expr $num1 + $num2 )
echo $( expr $num1 + $num2 )
echo $( expr $num1 \* $num2 )  #using expr, * is not escaped. so we need to \ escape character
echo $( expr $num1 / $num2 )
echo $( expr $num1 % $num2 )




#floating point number 
#we need to use bc because by default bash can't do decimal point arithmetic
#it will show an error saying non decimal arithmetic

num1=20.5
num2=5

echo "20.5 + 10" | bc

echo "20.5 - 10" | bc

echo "20.5 * 10" | bc

echo "scale=2;20.5 / 10" | bc  		#scale is to display the decimals. for eg scale=2 means till do decimal digits

echo "20.5 % 10" | bc

num=35
echo "scale=2;sqrt($num)" | bc -l   #bc-l is to call the math library which has the sqrt fucntion
echo "scale=2;3^3" | bc -l		#exponential 


# to check all other bc commands, run command:  man bc