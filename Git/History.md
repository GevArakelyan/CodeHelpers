
## Ammend command examples

## [YoutobeLink](https://www.youtube.com/watch?v=ElRzTuYln0M)
- To just change commited files and leave message as is:
    - git commit --amend --no-edit

- To change commit message and leave files as is:
    - git regase -i Head~2 | here 2 is the number of commits we we want to work with
    - Then edit opened file and change to pick to reword for the message you want to edit and close file, this will open another file and you can edit it
1. To merge last 3 commits:
    - git rebase -i head~3 | then if replace pick with fixup for the commits you want to merge