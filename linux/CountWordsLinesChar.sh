printf "Enter a file name:\n"
read fileName
printf "Number of lines in file:\n"
wc -l $fileName
printf "Number of words in file:\n"
wc -w $fileName
printf "Number of charecters in file:\n"
wc -m $fileName


