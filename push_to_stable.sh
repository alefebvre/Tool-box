#!/bin/bash

		cp -Rv Application $HOME/Application/
        cp -Rv test $HOME/test/
       
	    cd $HOME
        git config --global user.email "aurelien.lefebvre@viacesi.fr"
		git config --global user.name "Travis"
        git config --global push.default matching
       
        git clone --quiet https://${GH_TOKEN}@github.com/alefebvre/Tool-box.git
     	
        git checkout stable
        
        git pull origin master