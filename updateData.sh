#!/bin/bash
cd /home/aakash/unesco-tracking/

PATH=$HOME/.cabal/bin:$PATH

log=/home/aakash/unesco-tracking/log.txt 
projLoc=/home/aakash/unesco-tracking/index.Rmd

echo "rmarkdown::render('$projLoc')" | R --vanilla >$log

git config --global credential.helper store >>$log


git add .
git commit -m "Compiled on: `date +'%Y-%m-%d %H:%M:%S'`" >>$log
git push origin gh-pages >>$log

