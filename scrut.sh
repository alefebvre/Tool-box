#!/bin/bash
git config --global user.email "aurelien.lefebvre@viacesi.fr"
git config --global user.name "Travis"
git config --global push.default matching

curl https://scrutinizer-ci.com/g/alefebvre/Tool-box/inspections/b804ffab-9816-4828-9893-8b8d3f07f30c.diff?s=1a92acd8d95f2ec043e6e3bb7b79096f0327389b  
    | git apply  -
	
	
	git push  https://${GH_TOKEN}@github.com/alefebvre/Tool-box.git
	


	

