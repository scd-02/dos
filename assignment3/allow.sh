echo "Enter marks: "
read marks
echo "Enter attendance: "
read attend

if [[ ("$marks" -ge 20) && ("$attend" -ge 47) ]]
then 
	echo "Allowed for semester"
else
	echo "Not Allowed for semester"
fi
