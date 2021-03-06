
to see branches 
git branch -v 

Creating local BRANCH
git checkout -b $BRANCH

Pushing to remote
git push -u origin $BRANCH


--------------------------
To create local branch from remote one. https://www.youtube.com/watch?v=e2IbNHi4uCI

git branch --track $BRANCH origin/$BRANCH    or  git branch --track feature/$BRANCH origin/feature/$BRANCH

the other way to get remote branch
git checkout -b $BRANCH origin/$BRANCH or git checkout --track origin/$BRANCH

--------------------------
You cannot delete current head branch
first look at the current branch
git branch -v
switch to another branch
git switch main for example
then delete the branch
git branch -d $BRANCH
--------------------------
On linux
alias graph="git log --all --graph --decorate --oneline --boundary"
On Windows
function graph() { git log --all --graph --decorate --oneline --boundary --color }

--------------------------
To see which branches are merged into current branch
git branch --merged
--------------------------
To delete local branch
git branch -d $BRANCH

And to remove remote branch
git push origin --delete $BRANCH
--------------------------
to check which commits are int branch 'feature/uploader' and not branch main
git log main..feature/uploader

other example
git log origin/main..main
--------------------------
Rename branch
git branch -m $BRANCH $NEW_BRANCH

If you are in branch then rename command will be
git branch -m new_branch

--------------------------
Uploading the local branch for the first time
git push -u origin $BRANCH

--------------------------
To clean and get specific commit
git reset --soft commitHash
above command won't delete the other commits but will stage them
git reset --hard commitHash | will delete the other commits, but will leave untracked files unchanged.

And to clean untracked files and folders
git clean -df
--------------------------

to add submodule
git submodule add remote_url_to_submodule

Rebasing commits
git rebase -i HEAD~2 # will rebase last 2 commits

To edit last commit message with amend
git commit --amend -m "new message"

to update submodule
git submodule update

--------------------------
to remove submodule
git submodule deinit -f submodule_name

Or 
git rm submodule
rm -force .git/modules/submodule

--------------------------

If you cloned the repo and it had submodule
to get submodule files after cloning
git submodule update --init --recursive


to clone repo with submodules
git clone --recurse-submodules remote_repo_url

to update submodule to latest commits
git submodule update --remote

git submodule update <submodule>

to run git command foreach submodule
git submodule foreach git <command>
example:
git submodule foreach git pull origin master
--------------------------

## To change or remove remote origin:
```
git remote set-url origin <new_remote_url>

git remote remove origin
```
