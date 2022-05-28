Let's say you have done reset and lost your commit.
To recover your commit, you can use the following command:
git reflog | will show you the commit history.
git checkout commit-id | will recover the commit.

After above is done you need to create a new branch, because git will remove commit's in reflog after garbage collection.
git branch backup | will create a new branch named backup.