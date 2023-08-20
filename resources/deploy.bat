@echo off
set aosjmi=<aosjmi>
 
REM Push source code to repo
git push origin master
 
REM Clone From GitHub Pages repo
git clone --depth 1 https://^%aosjmi^%@github.com/^%aosjmi^%/^%aosjmi^%.github.io.git public
REM Build blog
hugo --gc --minify --cleanDestinationDir

REM Push to GitHub Pages repo
set MSG=`git log --format=%B -n 1 HEAD`
cd public
git add .
git commit -m "%MSG%"
git push origin master
cd ..
rmdir /s /q public
rmdir /s /q resources