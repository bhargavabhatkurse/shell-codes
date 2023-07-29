echo "enter the number of coordinates: "
read n;
echo "enter the coordinates: "

#a is like a counter variable
a=0
while [ $a -lt $n ]
do
  read  coordinate_x[$a] coordinate_y[$a] 		#accepting the coordinates in 2 arrays
  a=$(($a+1))
done



a=1;
x=0.0
y=0.0
while [ $a -lt $n ]
do
  y=$(( ${coordinate_y[$a]}-${coordinate_y[0]} ))
  x=$(( ${coordinate_x[$a]}-${coordinate_x[0]} ))
  slope[$a]=$(echo "$y/$x" | bc -l)   	#finding the slope
  a=$(($a+1))
done

a=2
while [ $a -lt $n ]
do	
	str=$(echo "${slope[$a]} != ${slope[1]}" | bc -l)  	
	if [ $str -eq 1 ] #if the slope is not equal
	then
		break #then break
	fi
 a=$(($a+1))
done

if [ $a -eq $n ]        #if the previous while loop breaks before a == n, it is non-linear
then
	echo "the points form a linear eqn"
else 
	echo  "the points are non-linear"
fi


