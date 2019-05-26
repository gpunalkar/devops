## Enter a number and it'll print next 10 numbers. ##
printf "Enter a number : \n"
read number
printf "Here are the next 10 numbers\n\n"

for ((i=0;i<=9;i++))
do
echo "$((number + i))"
done
exit
