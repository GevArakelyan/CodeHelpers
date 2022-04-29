<!-- Inside submodule you can do following. -->
git checkout main
git add .
git commit -m "message"
git push
<!-- after that you need to go to out of that repo and run below command -->
git submodule update SubmoduleName
<!-- above command will just reset submodule to state before your chanes. -->

<!-- To update the submodule to the latest commit of branch, run the following command: -->

git submodule update --remote

