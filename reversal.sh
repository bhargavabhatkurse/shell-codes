echo "Enter a number: "
read a
m=$a
rev=0
while [ $a -ne 0 ]
do
	t=$(($a%10))
	rev=$(($rev*10 + $t))
	a=$(($a/10))
done
echo "Reverse of $m is: $rev" 
