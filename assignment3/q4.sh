echo "Enter a 5 digit number: "
read n

res=0

while [ $n != 0 ] 
do
	res=$((res + n%10))
	n=$((n/10))
done

echo "Result: $res"
