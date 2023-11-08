check=$(cmp $1 $2)
if [ "$check" == "" ]
then
	echo "$1 and $2 are same:"
	$(rm $2)
	echo "$2 removed successfully"
else
	echo "Files are different"
fi

