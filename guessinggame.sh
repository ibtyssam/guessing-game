#!/bin/bash

function file_count {
    echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
correct_count=$(file_count)

while true; do
    read -p "How many files are in the current directory? " guess
    if [[ $guess -eq $correct_count ]]; then
        echo "Congratulations! You guessed the correct number of files!"
        break
    elif [[ $guess -lt $correct_count ]]; then
        echo "Too low. Try again."
    else
        echo "Too high. Try again."
    fi
done

