echo "Enter year: "
read year

if [ "$year" == '' ]
then
	year=$(date +"%Y")
fi

if [[ ($((year % 4)) == 0 && $((year % 100)) != 0 ) || ($((year % 400)) == 0) ]]
then
	echo "$year Leap Year"
else
	echo "$year Not Leap Year"
fi

