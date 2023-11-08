echo "Enter 1st number: "
read a
echo "Enter 2nd number: "
read b

echo "$a + $b: " $(echo "$a + $b" | bc)
echo "$a - $b: " $(echo "$a - $b" | bc)
echo "$a * $b: " $(echo "$a * $b" | bc)
echo "$a / $b: " $(echo "scale=3; $a / $b" | bc)
echo "$a % $b: " $(echo "$a % $b" | bc)
