
#https://www.geeksforgeeks.org/array-basics-shell-scripting-set-1/
#https://www.geeksforgeeks.org/array-basics-shell-scripting-set-2-using-loops/
echo "manual array "

number=(1 2 3 4 5)
echo "array element : ${number[@]}"
echo "index 2 element : ${number[2]}"

echo "input form user"
read -p "Enter array size : " count;
declare -a numbers
for((i =0;i<count;i++))
do
   #num for input array element
   read -p "enter index ${i} element : " num;
   numbers[i]=$num;
done


echo "Array elements by count variabel: "
for((i =0;i<count;i++))
do
   
   echo "${numbers[i]}"
done


echo "another approach ";
for num in  "${numbers[@]}"
do 
  echo "element : ${num}"
done


echo "by array size: "
i=0

while [ $i -lt ${#numbers[@]} ]
do
    # To print index, ith
    # element
    echo ${numbers[$i]}
     
    # Increment the i = i + 1
    i=`expr $i + 1`
done



