if [[ ("$1" -lt "$2") && ("$1" -lt "$3") ]]
then
	echo "$1 is smaller"
elif [[ ("$2" -lt "$2") && ("$2" -lt "$3") ]]
then 
	echo "$2 is smaller"
else
	echo "$3 is smaller"
fi
