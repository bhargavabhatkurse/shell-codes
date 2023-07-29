echo "Enter a number: "
read a
m=$a
fact=1
while [ $a -ne 0 ]
do
	fact=$(($fact*$a))
	a=$(($a-1))
done
echo "Factorial of $m: $fact" 
