#! /bin/bash
# cars.sh
# Shree Murthy

NUM=0

while [ "$NUM" -ne "3" ]
do

	echo -e "Please enter 1 for a new Car."
        echo -e "Enter 2 to display the list of cars."
	echo -e "Enter 3 to quit"
	read -r NUM
	
	case "$NUM" in 
		"1") echo "Type in the year of the car."
		read -r YEAR
		echo "Type in the make of the car."
		read -r MAKE
		echo "Type in the model of the car."
		read -r MODEL
		NEWCAR="$YEAR:$MAKE:$MODEL"
		echo "$NEWCAR" >> My_old_cars.txt;;
		"2") sort My_old_cars.txt;;
		"3") echo "Goodbye thank you for using the program!";;
		*) echo "That is not a valid number. Try again";;
	esac
	
done
echo "Thank you for using this service today! Goodbye for now :)"

