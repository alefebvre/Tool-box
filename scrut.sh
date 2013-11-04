#!/bin/bash
git config --global user.email "aurelien.lefebvre@viacesi.fr"
git config --global user.name "Travis"
git config --global push.default matching

curl https://scrutinizer-ci.com/g/alefebvre/Tool-box/inspections/921f8e8f-8c35-40fb-88a7-ab8fe82d32fb.diff?s=ad05ec8d7026374bcf84e0a5932c6aa3da1ebf0e \
    | git apply -

	git pull https://github.com/h4cc/scrutinizer patch-1
	


	

