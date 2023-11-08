echo "Enter char: "
read ch

n=${#ch}

if [ "$n" -gt 1 ]
then
	echo "Input Length greater than 2"
else
	if [[ ("$ch" == [A-Z]) ]]
	then
		echo "Upper Case"
	elif [[ ("$ch" == [a-z]) ]]
	then 
		echo "Lower Case"
	elif [[ ("$ch" == [0-9]) ]]
	then
		echo "Digit"
	else
		echo "Special Characters"
	fi
fi

	
