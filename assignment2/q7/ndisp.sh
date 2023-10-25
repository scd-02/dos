n=$1
m=$2
filename=$3
echo "First $n lines: " 
echo $(head -n $n $filename)
echo "Last $m lines: " 
echo $(tail -n $m $filename)
