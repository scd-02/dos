echo "Enter day: "
read day

case "$day" in 
	"monday") echo "c 020 10:00am - 11:00am";;
	"tuesday") echo "c 020 03:00pm - 04:00pm";;
	"wednesday") echo "c 020 02:00pm - 04:00pm";;
	"thrusday") echo "c 020 10:00am - 11:00am";;
	"friday") echo "no class on $day";;
	"saturday") echo "no class on $day";;
	"sunday") echo "Holiday";;
esac
	
