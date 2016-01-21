How does tracking and adding changes make developers' lives easier?
It allows us to see different versions of a program, and if documentation is good, we will know why we made a particular change, and if there are bugs, we can go back to an earlier version. If there are multiple developers, it becomes possible for them to work on one code file at the same time.

What is a commit?
After a set of changes has been made, then set for staging, a commit creates a fixed point when those changes are set for those files.

What are the best practices for commit messages?
Use imperative language, keep it under 72 characters, describe why the change was made

What does the HEAD^ argument mean?
it means the last commit

What are the 3 stages of a git change and how do you move a file from one stage to the other?
1>  new branch is created, within that, changes are made, these are "tracked"
2> changed files are staged using the "add" command, this means they are ready to be committed, but have not been committed yet
3> commit the changes

Write a handy cheatsheet of the commands you need to commit your changes?
A> git checkout - b branch-name to open a branch to work on (while keeping the master safe)
B> do some work.
C> git status to see the changes we have made
D> git add to stage the changes for a commit
E> git commit -m "Message" to make the commit, along with a message describing it

What is a pull request and how do you create and merge one?
A pull request means we have pushed changes to a GitHub account, to be reviewed (often by team members)prior to being merged into the GitHub directory. After changes have been pushed from a local directory to the GitHub (using the command git push origin new-branch-name), the owner of the GitHub account can click "compare & pull request," then click "create pull request," to see the differences presented in the new code, and if he / she approaves the changes, can click "merge pull request" to complete the process.

Why are pull requests preferred when working with teams?
It gives others a change to review code, and possibly resolve differences / discuss issues, before making (potentially destructive) changes to the code base
