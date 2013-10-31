#!/bin/bash

 
        cd $HOME
        git config --global user.email "aurelien.lefebvre@viacesi.fr"
		git config --global user.name "Travis"
        git config --global push.default matching
       
        

        # checkout gh-pages
        git checkout stable
        
        git pull