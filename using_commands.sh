
ch=1
while [ $ch -eq 1 ]
do
	echo "Menu"
	echo "1. Display user"
	echo "2. Display processes executed"
	echo "3. Display Number of files in directory"
	echo "4. Exit"
	echo "Enter your choice: "
	read choice
	case $choice in
		1) pwd;;
		2) ps;;
		3) ls -l  | wc -l ;;
		4) echo "Quiting.."
			exit;;
		*) echo "invalid option";;
esac
	echo "Do you want to continue (1/0)"
	read ch
	done