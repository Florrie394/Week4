function checknum1 {
local reply1=blah
if [[ $1 != "" ]] && [[ $2 != "" ]] && [[ $1 -gt $2 ]]
then local reply1=1
elif [[ $1 != "" ]] && [[ $2 != "" ]] && [[ $1 -lt $2 ]]
then
local reply1=2
fi
echo $reply1
}

echo "How many files are in this directory?"
read response

numberoffiles=$(ls -al | grep '^-' | wc -l) 

while [[ $response -ne $numberoffiles ]]
do
source function.sh
result=$(checknum1 $response $numberoffiles)
if [[ $result -eq 1 ]]
then
echo "Your guess is too high, try again"
elif [[ $result -eq 2 ]]
then 
echo "Your guess is too low, try again"
fi
read response
done

echo "Well done that guess is correct!"

