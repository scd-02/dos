
line=$(wc -l < $1)
word=$(wc -w < $1)
char=$(wc -c < $1)

echo "filename linecount wordcount charcount"
echo  "$1       $line      $word       $char"
