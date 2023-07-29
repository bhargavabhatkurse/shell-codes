echo "Enter a number: "
read n
sum=0
while [ $n -ne 0 ]
do
num=$(($n%10))
if [ $((num%2)) -ne 0 ]
then
 	sum=$(($sum + $(($num%10))))
 	n=$(($n/10))
else
 	n=$(($n/10))
fi
 done
 echo "sum of odd digits: $sum"

