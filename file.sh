read c1
read c2

cat> c1

if [ -f c1 ]
then
	cp c1 c2;
	cat c1;
	cat c2;
fi

