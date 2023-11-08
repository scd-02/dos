echo "Enter salary: "
read s

dearness=$(echo "$s * 0.4" | bc)
rent=$(echo "$s * 0.2" | bc)
salary=$(echo "$dearness + $rent + $s" | bc)

echo "Ramesh Salary: $salary"
