#!/bin/bash

  cp -Rv Application $HOME/Application
  
          # go to home and setup git
        cd $HOME
        git config --global user.email "aurelien.lefebvre@viacesi.fr"
		git config --global user.name "Travis"
        git config --global push.default matching
       
        # using token clone gh-pages branch
        git clone --quiet https://${GH_TOKEN}@github.com/alefebvre/Tool-box.git repo > /dev/null || error_exit "Error cloning the repository";

        # go into repo anc copy data
        cd repo
        
        # checkout gh-pages
        git checkout stable
        
        # Remove "old" stuff
        rm -rf $HOME/Application
    
        

        # copy stuff
        cp -Rv $HOME/Application


        # add, commit and push files
		
        git add *
        git commit -m "Travis build $TRAVIS_BUILD_NUMBER pushed to stable"
        git push > /dev/null
        echo -e "Pushed to GitHub"


end=$(date +%s)
elapsed=$(( $end - $start ))
minutes=$(( $elapsed / 60 ))
seconds=$(( $elapsed % 60 ))
echo "Post-Build process finished in $minutes minute(s) and $seconds seconds"