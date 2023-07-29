read -a array
echo "${array[@]}"
n=$(( ${#array[@]} ))

for (( i=0;i<n; i++))
do 

    for (( j=0;j<n-i-1;j++))
    do
       
       if (( ${array[$j]} < ${array[$(($j+1))]} )) #LOOK AT THIS SYNTAX
       then
               temp=$(( ${array[$j]} ));
               array[$j]=$(( ${array[$(($j+1))]} ));
               array[$(($j+1))]=$temp;
       fi
    done
done

echo "${array[@]}"
