#/bin/bash

user_score=0
computer_score=0

while [ $user_score -lt  "5" ]  && [ $computer_score -lt "5" ]; do 
    computer_input=$((1 + $RANDOM % 3))
   # echo "computer input: $computer_input" #debug

    echo "1 is rock"
    echo "2 is scissor"
    echo "3 is paper"
    echo "Choose a number between 1 to 3 :"
    read user_input
    echo "you entered: $user_input"

    if [ $user_input = $computer_input ]; then
        echo "It is a tie!"
    elif [ $user_input = "1" ] && [ $computer_input = "2" ]; then   
        echo "user wins!"
        user_score=$((user_score + 1))
    elif [ $user_input = "1" ] && [ $computer_input = "3" ]; then   
        echo "computer wins!"
        computer_score=$((user_score + 1))
    elif [ $user_input = "2" ] && [ $computer_input = "1" ]; then   
        echo "computer wins! " 
        computer_score=$((user_score + 1))
    elif [ $user_input = "2" ] && [ $computer_input = "3" ]; then   
        echo "user wins!"
        user_score=$((user_score + 1))
    elif [ $user_input = "3" ] && [ $computer_input = "1" ]; then   
        echo "user wins!"
        user_score=$((user_score + 1))
    elif [ $user_input = "3" ] && [ $computer_input = "2" ]; then   
        echo "computer wins!"
        computer_score=$((user_score + 1))
    fi
    echo "user: $user_score and computer: $computer_score"
done
