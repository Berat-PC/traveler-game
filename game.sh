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

    if  [[ $PWD == "${current_path}/Start_point/Start_point" ]]; then 
        echo "Start the travel"
        echo "Chose the city"
    fi
    
    if  [[ $PWD == "${current_path}/Start_point/Zurich" ]]; then
        echo "Welcome to Zurich!
 ____ _   _  ___  ___  ___  _  _ 
 |_  /| | | || _ \|_ _|/ __|| || |
  / / | |_| ||   / | || (__ | __ |
 /___| \___/ |_|_\|___|\___||_||_|
                                  

Zurich: Switzerland’s largest city, is a dynamic blend of urban sophistication and natural beauty. Set on the shores of Lake Zurich with the snow-capped Alps as a backdrop, the city is a global financial hub that effortlessly balances innovation with a deep sense of history. Its charming old town is filled with medieval streets, boutique shops, and vibrant cafes, while its world-class museums and galleries highlight a rich cultural heritage. Known for its pristine lifestyle, Zurich also boasts a lively arts and nightlife scene, making it a city where tradition and modernity seamlessly coexist."
       cd ${current_path}/Start_point  
    fi

    if  [[ $PWD == "${current_path}/Start_point/Basel" ]]; then
        echo "
 | _ )  /_\  / __|| __|| |   
 | _ \ / _ \ \__ \| _| | |__ 
 |___//_/ \_\|___/|___||____|"

        echo "Basel: Switzerland’s cultural capital, is a vibrant city where tradition and modernity meet along the banks of the Rhine River. Known for its thriving art scene, Basel hosts the world-renowned Art Basel fair and boasts over 40 museums, including the striking Fondation Beyeler. Its medieval old town, with narrow cobblestone streets and centuries-old architecture, contrasts beautifully with cutting-edge modern buildings by renowned architects. With its rich history, lively festivals, and proximity to both France and Germany, Basel offers a unique blend of charm, creativity, and cross-cultural energy." 
        cd ${current_path}/Start_point 
    fi

    if  [[ $PWD == "${current_path}/Start_point/Bern" ]]; then
        echo "Welcome to BERN

 | _ )| __|| _ \| \| |
 | _ \| _| |   /| .  |
 |___/|___||_|_\|_|\_| "

    echo "Bern, the capital of Switzerland, is a city where time seems to stand still, yet it's alive with culture and history. Known for its beautifully preserved medieval architecture, Bern’s UNESCO-listed old town is cradled by the winding Aare River and features iconic landmarks like the Zytglogge clock tower and the Gothic Bern Minster. The city’s vibrant streets are filled with charming arcades, cafes, and museums, including the world-renowned Zentrum Paul Klee. With its blend of political significance, timeless beauty, and a laid-back atmosphere, Bern offers a uniquely Swiss experience that is both historic and welcoming."
 
    cd ${current_path}/Start_point 
    fi

    if  [[ $PWD == "${current_path}/Start_point/Lugano" ]]; then
        echo "Welcome to LUGANO !
  _    _   _   ___    _    _  _   ___  
 | |  | | | | / __|  /_\  | \| | / _ \ 
 | |__| |_| || (_ | / _ \ |  | | (_) |
 |____|\___/  \___|/_/ \_\|_|\_| \___/ "
        echo "Lugano, a picturesque city in Switzerland's Italian-speaking Ticino region, blends Mediterranean flair with Swiss elegance. Set along the sparkling shores of Lake Lugano and surrounded by lush mountains, the city offers a perfect mix of natural beauty and cultural richness. Its charming piazzas, palm-lined promenades, and vibrant parks create a laid-back, yet sophisticated atmosphere. Visitors can explore world-class art galleries, boutique shops, and enjoy the region's exquisite cuisine. With its sunny climate, stunning lake views, and a fusion of Italian and Swiss influences, Lugano is a true gem in the heart of Europe."
        cd ${current_path}/Start_point 
    fi

    if  [[ $PWD == "${current_path}/Start_point/Geneva" ]]; then
        echo "Welcome to Geneva!
   ___  ___  _  _  ___  _   _  _
  / __|| __|| \| || __|\ \ / //_\  
 | (_ || _| | .  || _|  \ V // _ \ 
  \___||___||_|\_||___|  \_//_/ \_\ "

        echo " Nestled between the Alps and the Jura mountains, Geneva is a cosmopolitan gem known for its stunning natural beauty and global influence. This picturesque city is home to the serene Lake Geneva, where the iconic Jet d’Eau fountain soars into the sky. A hub for diplomacy and international cooperation, it hosts the United Nations and the Red Cross, symbolizing peace and progress. With its charming old town, world-class museums, and a backdrop of snow-capped peaks, Geneva offers a perfect blend of culture, history, and breathtaking landscapes."
        cd ${current_path}/Start_point 
    fi
    
 
}

function custom_cd {
    builtin cd "$@" && check_directory
}

alias cd='custom_cd'