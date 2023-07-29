#shell scripts are interpreted, not compiled
#cat /etc/shells     -- shows which shells are supported 
#bash - Bourne again SHELL
# which bash - to check where the bash is located

#touch hello.sh - command to create a new shell file

#--! /bin/bash       hash bang(#!) - (OPTINAL) tells the which shell we are using

echo "hello world"

#two types are variables: system variables and user variables
#system var: capital case is used(maintained by linux)

echo $BASH;  #system 
echo $BASH_VERSION
echo $HOME		#home directory
echo $PWD		#present directory

VAL=10;						#no space between varible, =, and 10;
echo $VAL;

read name name1 name2 
echo "entered name: $name $name1 $name2"

read -p 'username: ' user_var			#-p to take the input on the same line
echo $user_var

read -sp 'username: ' user_pass			#-s the input will not be shown on the screen
echo $user_pass

read -a names				#reads names like an array
echo "names: ${names[0]} ${names[1]}"


#if you dont mention the name of the variable after taking input, it goes to the default variable called REPLY
read
echo "Read value: $REPLY"







