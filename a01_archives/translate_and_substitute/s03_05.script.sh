clear
echo -n "Enter a month and we will display the 3 first letters in lowercase for your convenience: "
read mon
K=`echo $mon | cut -c 1-3 | tr "[A-Z]" "[a-z]"`
echo $K