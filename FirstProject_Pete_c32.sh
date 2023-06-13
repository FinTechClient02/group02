#!/bin/bash
# The script will ask you each question in the questions array. 
# Enter your responses, and after answering all the questions, 
# it will display the collected information.

# Array to store the questions
questions=(
    "What is your name?"
    "Where are you from?"
    "What is your favorite color?"
    "How old are you?"
    "What is your favorite food?"
    "What is your profession?"
    "What is your hobby?"
)

# Array to store the user's answers
answers=()

# Loop through the questions and prompt the user
for question in "${questions[@]}"; do
    echo "$question"
    read answer
    answers+=("$answer")
done

# Display the collected information
echo "Here is the collected information:"
for ((i=0; i<${#questions[@]}; i++)); do
    echo "${questions[$i]} ${answers[$i]}"
done
