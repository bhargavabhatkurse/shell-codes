# while loop

count=1

while [ $count -le 10 ]
do
	echo "$count"
	#count=$(( count + 1 ))		we can do this
	(( count++ ))		#post increment
	#(( ++n ))

done

#to use angular comparitor, use double ((  ))
count=1
while (( $count <= 10 ))
do
	echo "$count"
	#count=$(( count + 1 ))		we can do this
	(( count++ ))
	#(( ++n ))

done

count=1;
while (( $count <= 5 ))
do
	echo "$count"
	#count=$(( count + 1 ))		we can do this
	(( count++ ))
	#sleep 1 #every iteration will be after 1 second
	#(( ++n ))



done


#until loop: it prints until the condition is false
#in while loop, we print till the condition is true

count=1

until [ $count -gt 10 ]
do
	echo "$count"
	#count=$(( count + 1 ))		we can do this
	(( count++ ))		#post increment
	#(( ++n ))

done


#for loop

echo 'for loop'


for i in 1 2 3 4 5
do 
	echo $i
done

echo ${BASH_VERSION}
#this for loop will only work in version 4 or greater
for i in {1..10..2} #start from 1, till 10, increment by 2
do 
	echo $i
done


for (( i=0;i<5;i++ ))
do
		if [ $i -lt 5 ]
		then
		echo $i
		else break #we can similarly use continue as well
		fi
done


#select loop
#gives a prompt to select the option
select name in Bhargava Rajesh Bhatkurse
do 
	echo "$name selected"
done






