#!/bin/bash

current_path=$(pwd)
initial_money=510
# current_money=510
cd Zurich

function check_money {
    # current_money=initial_money - 10
     if [ "$initial_money" > 0 ]; then
        echo "You spent 10CHF for ticket" 
        # cd ${current_path}/Start_game
    elif [ "$initial_money" <= 0]; then
        echo "You have no money to travel" 
    fi
}

function check_directory {
    check_money
    echo $current_path
    
    if  [[ $current_path == *"Zurich"* ]]; then
        echo "Story about Zurich"
        
    fi

    if  [[ $current_path == *"Basel"* ]]; then
        echo "Story about Basel"
        
    fi

    if  [[ $current_path == *"Bern"* ]]; then
        echo "Story about Bern"
        
    fi

    if  [[ $current_path == *"Lugano"* ]]; then
        echo "Story about Bern"
        
    fi
    
 
}

function custom_cd {
    builtin cd "$@" && check_directory
}

alias cd='custom_cd'