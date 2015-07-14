#!/bin/bash
cd /home/aakash/unesco-tracking/

oldLastSubmission=`node getLastSubmission.js`
echo "Old = $oldLastSubmission"

#curl -X GET https://ona.io/api/v1/forms/49501 >formDetails.json
curl -X GET -u "klltesting:klltesting" https://ona.io/api/v1/forms/65829 >formDetails.json

newLastSubmission=`node getLastSubmission.js`
echo "New = $newLastSubmission"

if [ "$oldLastSubmission" == "$newLastSubmission" ]
then
	echo "hello"
else
	log=/home/aakash/unesco-tracking/log.txt 
	projLoc=/home/aakash/unesco-tracking/index.Rmd
	
	echo "rmarkdown::render('$projLoc')" | R --vanilla >$log
	
	git config --global credential.helper store >>$log
	
	
	git add .
	git commit -m "Compiled on: `date +'%Y-%m-%d %H:%M:%S'`" >>$log
	git push origin gh-pages >>$log
fi	
