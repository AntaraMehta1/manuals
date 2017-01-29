# Collection of git commands

## Basic 

Initializing a directory:

~~~~
git init
~~~~

Checking status:

~~~~
git status
~~~~

Check log:

~~~~
git log
~~~~

## Configuration

Make git colourful:
git config --global color.ui auto

## Stage

Add a file to the staging area:

~~~~
git add octocat.txt
git add '*.txt'
~~~~

Physically delete a file and remove it from the staging area:
~~~~
git rm <file>
~~~~

Unstaging files:
~~~~
git reset octodog.txt
~~~~

######################
### --- Commit --- ###
######################

# - Commit (storing the staged changes)
git commit -m "Add cute octocat story"

#############################
### --- Repositiories --- ###
#############################

# - Add remote repository named 'origin'
git remote add origin https://github.com/try-git/try_git.git

#########################
### --- Push/pull --- ###
#########################

# - push command = where to put the commits
git push -u origin master

# - Pull new changes
git pull origin master

########################
### --- git diff --- ###
########################

# HEAD = latest commit for the current branch
# @ = alias for head

## - Diff between the working copy and the staging area
git diff

# - Diff between the working copy and the HEAD
git diff HEAD

# - Diff between HEAD and the previous commit before that
git diff HEAD HEAD^
git show

# - Diff between two commits specified by their hashes
git diff <commit1> <commit2>

# - Diff of the stage area the latest commit
git diff --staged

# - Launch visual diff tool
git difftool <commit1> <commit2>

########################
### --- Checkout --- ###
########################

# - Undo to last commit, getting rid of all changes since the last commit for octoca.txt
git checkout -- octocat.txt

# - Restore file from old commit in git
git checkout 'master@{7 days ago}' -- path/to/file.txt

# - Check out a single file from git repository
wget <github.url>

########################
### --- Branches --- ###
########################

# - Branching out
git branch clean_up

# - Switching between branches
get checkout clean_up

# - Merging
git merge clean_up

###################
### --- Etc --- ### 
###################

