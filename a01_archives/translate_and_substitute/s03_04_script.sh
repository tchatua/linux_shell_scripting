clear
echo -n "Enter a filename to delete all numbers from the file: "
read fname
tr -d "[0-9]" <$fname >tmp
mv tmp tchatua/$fname 
echo -e "All the numbers from $fname deleted\n"