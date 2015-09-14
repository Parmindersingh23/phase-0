#Tracking Changes

How does tracking and adding changes make developers' lives easier?

  Being be able to track and look at what changes have been made to the files helps anyone that wants to contribute to the file. Developers' can look get a better understanding on why changes were made and what exactly was changed.

What is a commit?

  Commit is a bundle of changes to a file.

What are the best practices for commit messages?

  The best practices for commit messages would be to have a short subject type of message. You should use the present tense to decribe the changes made and also why it was made.
What does the HEAD^ argument mean?

  The HEAD^ argument can bring back a file that is staged to unstaged. Which further changes then can be made.


What are the 3 stages of a git change and how do you move a file from one stage to the other?

  1. Make a new branch so you don't mess up the master branch, and check the git status.
  2. Use git add to add the file
  3. Then use git commit -m "" to commit the changes.and then recheck the git status

Write a handy cheatsheet of the commands you need to commit your changes?

 1. git co -b = makes a new branch
 2. git status = checks the status of files in the directory
 3. git log = all the commit history for the file
 4. git merge master = merges changes from master into your feature branch
 5. git push origin feature-branch-name = pushes the changes from the local copy to the remote. (github)


What is a pull request and how do you create and merge one?

  A pull request will merge your changes into the master branch.

  1. Go into your github profile. Click Compare & pull request.
  2. Change the base fork to your profile if not already done.
  3.Create the pull request and then confirm it.

Why are pull requests preferred when working with teams?

  It is an easy way for team members to review and look at your code.

