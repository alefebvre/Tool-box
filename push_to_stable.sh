#!/bin/bash

		cp -Rv build/ $HOME/build/
        cp -Rv build/ $HOME/build/
       
        git config --global user.email "aurelien.lefebvre@viacesi.fr"
		git config --global user.name "Travis"
        git config --global push.default matching
       
        git clone --quiet https://${GH_TOKEN}@github.com/alefebvre/Tool-box.git repo > /dev/null || error_exit "Error cloning the repository";

        # checkout gh-pages
        git checkout stable
        
        git pull origin master