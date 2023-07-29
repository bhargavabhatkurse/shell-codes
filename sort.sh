echo "enter the number of elements: "
read n;
echo "enter the numbers: "

a=0
while [ $a -lt $n ]
do
  read  arr[$a] 	
  a=$(($a+1))
done

for ((i = 0; i<n-1; i++))
do
    for((j = 0; j<n-i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}
