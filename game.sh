#!/bin/bash

current_path=$(pwd)
initial_money=510
# current_money=510
cd Start_point

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
    # check_money
    echo $PWD

    if  [[ $PWD == "${current_path}/Start_poinr" ]]; then 
         echo "Start the travel"
         echo "Chose the city"
    fi
    
    if  [[ $PWD == "${current_path}/Zurich" ]]; then
        echo "Welcome to Zurich!
 ____ _   _  ___  ___  ___  _  _ 
 |_  /| | | || _ \|_ _|/ __|| || |
  / / | |_| ||   / | || (__ | __ |
 /___| \___/ |_|_\|___|\___||_||_|
                                  

Zurich: Switzerland’s largest city, is a dynamic blend of urban sophistication and natural beauty. Set on the shores of Lake Zurich with the snow-capped Alps as a backdrop, the city is a global financial hub that effortlessly balances innovation with a deep sense of history. Its charming old town is filled with medieval streets, boutique shops, and vibrant cafes, while its world-class museums and galleries highlight a rich cultural heritage. Known for its pristine lifestyle, Zurich also boasts a lively arts and nightlife scene, making it a city where tradition and modernity seamlessly coexist."
       cd ${current_path}/Start_point  
    fi

    if  [[ $PWD == *"Basel"* ]]; then
        echo "
 | _ )  /_\  / __|| __|| |   
 | _ \ / _ \ \__ \| _| | |__ 
 |___//_/ \_\|___/|___||____|"
 cd ${current_path}/Start_point 
    fi

    if  [[ $PWD == *"Bern"* ]]; then
        echo "Welcome to BERN

 | _ )| __|| _ \| \| |
 | _ \| _| |   /| .` |
 |___/|___||_|_\|_|\_| 
    cd ${current_path}/Start_point 
    fi

    if  [[ $PWD == *"Lugano"* ]]; then
        echo "Welcome to LUGANO !
  _    _   _   ___    _    _  _   ___  
 | |  | | | | / __|  /_\  | \| | / _ \ 
 | |__| |_| || (_ | / _ \ | .` || (_) |
 |____|\___/  \___|/_/ \_\|_|\_| \___/ 
        cd ${current_path}/Start_point 
    fi
    
 
}

function custom_cd {
    builtin cd "$@" && check_directory
}

alias cd='custom_cd'