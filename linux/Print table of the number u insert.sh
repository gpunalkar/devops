echo "Enter a Number"
read n

echo "Enter Range"
read r
i=0
while [ $i -le $r ]
do
    echo " $n x $i = `expr $n \* $i`"
    i=`expr $i + 1`
done
