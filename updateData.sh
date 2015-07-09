#!/bin/bash

PATH=$HOME/.cabal/bin:$PATH

echo "rmarkdown::render('index.Rmd')" | R --vanilla

git config --global credential.helper store


git add .
git commit -m "Compiled on: `date +'%Y-%m-%d %H:%M:%S'`" 
git push origin gh-pages

