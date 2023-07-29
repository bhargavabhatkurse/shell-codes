count=9

if [ $count -gt 1 ]				#can also do [ $count > 9 ] or 	if(($count > 9)) -- double brackets in this case
then
	echo "true"
fi


name=bhargava
if [ $name == "bhargava" ]			#for string comparison | for not equal [ $name != "bhargava" ]			
then
	echo "true"
fi

if [[ $name < "bhargava" ]]		#for angular comparitors, use double [[	]]		
then
	echo "true"
elif [[ $name > "bhargava" ]]
then echo "false1"

else echo "false2"
fi

val=20
if [ $name == "bhargava" ] && [ $val -lt 30 ]		#logical and
then echo "valid"
fi

val=300
if [ $name == "bhargava" ] || [ $val -lt 30 ]		#logical or
then echo "valid"
fi

