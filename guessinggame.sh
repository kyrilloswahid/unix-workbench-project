# Get the number of files in the current directory
function get_files_count {
    echo $(ls -1 | wc -l)
}

# Get the actual number of files
files_count=$(get_files_count)

# Process user's guess
function user_guess {
    echo "Guess how many files are in the current directory:"
    read guess

    while [[ $guess -ne $files_count ]]
    do
        if [[ $guess -lt $files_count ]]
        then
            echo "Your guess is too low. Try again:"
        else
            echo "Your guess is too high. Try again:"
        fi
        read guess
    done

    echo "Congratulations! You guessed the correct number of files."
}

# Start the guessing game
user_guess
