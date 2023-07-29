#case statement

#case expression in 
#	pattern1 )
#		statements ;;
#	pattern2 )
#	statements ;;
#...
#esac

# command: bash shell4.sh car

vehicle=$1   #$1 is the argument is given while executing the command


case $vehicle in 
	"car" )
		echo "car";;
	"car" )
		echo "car";;
	"car" )
		echo "car";;
	* ) 
		echo "default";;
esac


echo "enter the character"
read n


case $n in 
	[a-z] )
		echo "lowercase";;
	[A-Z] )
		echo "uppercase";;
	[0-9] )
		echo "numbers";;
	? )
		echo "special character";;
	* ) 
		echo "default";;
esac

#if it doesnt work, run command LANG=C in the terminal first and then try







