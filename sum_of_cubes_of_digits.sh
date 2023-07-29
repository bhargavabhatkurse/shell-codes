

num=222
sum=0

while (( $num > 0 ))
do 
	mod=$(( $num % 10 ))
	sum=$(( $sum + $(echo "$mod^3" | bc -l) ));
	num=$(( $num / 10 ))

done
