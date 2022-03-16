# cloned url is the url of the repo being cloned 
# rmurl (receiving murge url) is the url of the repo being merged into

$clonedurl = Read-Host "Please enter the URL of the repo to be cloned"
$clonedreponame = Read-Host "Please enter the name of the repo being cloned"

$rmurl = Read-Host "Please enter the URL of the repo being merged into"

git clone $url
cd $reponame
git remote rm origin
git remote add origin $rmurl
git checkout main
git branch -m main-holder
git fetch
git checkout main
git pull origin main
git merge main-holder --allow-unrelated-histories
git push origin main
cd ..