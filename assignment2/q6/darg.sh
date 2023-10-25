echo "Total Number of arguments: "$#
echo "First Argument: "$1
echo "Second Argument: "$2

i=1
for arguments in $@
do
	echo "Argument $i: " $arguments;
	i=$((i + 1));
done

