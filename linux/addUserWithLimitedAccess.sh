printf "Enter User Name:"
read name

adduser --home /restricted $name
exit