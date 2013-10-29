#!/bin/bash

curl https://scrutinizer-ci.com/g/alefebvre/Tool-box/inspections/76ed71c6-f5cd-41bb-a1d7-f7e208bc5d9c.diff?s=77733959b98bc633370442396c478c5122af8885 \
    | git apply -v
	
	 
        git config --global user.email "aurelien.lefebvre@viacesi.fr"
		git config --global user.name "Travis"
        git config --global push.default matching
       
        # using token clone gh-pages branch
        git clone --quiet https://${GH_TOKEN}@github.com/alefebvre/Tool-box.git repo > /dev/null || error_exit "Error cloning the repository";
		
		git add .
        git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to Master"
        git push > /dev/null
        echo -e "Pushed to GitHub"

	

