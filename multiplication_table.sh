#!/bin/bash

# Prompt the user for full or partial table
echo
read -p "Do you want a full table or a partial table? (Enter 'f' for full, 'p' for partial): " choice
echo
# Prompt for the number to generate the table
read -p "Enter the number for the multiplication table: " number
echo
# Validate if the user wants a full or partial table
if [[ $choice == "f" ]]; then
    echo "The Full multiplication table for $number:"
    echo
    for i in {1..10}; do
        echo "$number x $i = $((number * i))"
    done
    echo
elif [[ $choice == "p" ]]; then
    # Ask for start and end range for the partial table
    read -p "Enter the starting number (between 1 and 10): " start
    echo    
    read -p "Enter the ending number (between 1 and 10): " end
    echo

    # Check if start and end are valid
    if [[ $start -ge 1 && $start -le 10 && $end -ge 1 && $end -le 10 && $start -le $end ]]; then
        echo "The Partial multiplication table for $number from $start to $end:"
	echo
        for i in $(seq $start $end); do
            echo "$number x $i = $((number * i))"
        done
	echo
    else
        echo "Invalid range! Starting and ending numbers must be between 1 and 10, and the starting number must be less than or equal to the ending number."
	echo    
    fi
else
    echo "Invalid choice! Please enter 'f' for full or 'p' for partial."
    echo
fi
