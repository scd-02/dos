echo "Enter cost price: "
read cp
echo "Enter sell price: "
read sp

res=$((sp-cp))

if [ $res -lt 0 ]
then
	echo "Loss: $res"
else
	echo "profit: $res"
fi

