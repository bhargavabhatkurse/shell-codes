os=('hi' 'my name is' 'bhargava')

os[3]="Bhatkurse"	#adding a new element

echo "${os[@]}"		#print all the elements 	
echo "${os[0]}"		#print value of an index
echo "${!os[@]}"	#print the indices

echo "${#os[@]}"  #length of the array

unset os[2]			#deleting an element in the array
echo "${os[@]}"	

#we can use the string as an array as well
#but the whole string will be saved in the index 0 of the array therefore the length will be 1
string="BhargavaBhat"
echo "${string[@]}"	
echo "${#string[@]}" 		#this length will give 1










