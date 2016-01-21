#### How does tracking and adding changes make developers' lives easier?
Without version tracking developers working on teams would need to compare their work with others in order to determine what changes they've made that conflict with the changes other developers have made. If two developers altered the same file, they would have to argue over which piece of code to keep and how to re-assign work that will need to be completed again. Duplication of work would become exhausting.

#### What is a commit?
A commit is a point in time that a developer saves their work and articulates what changes they have made to the existing project.

#### What are the best practices for commit messages?
Committing frequently with diligent notes makes everyone's job easier.

#### What does the HEAD^ argument mean?
HEAD refers to the code that existed before any commits were made to it.

#### What are the 3 stages of a git change and how do you move a file from one stage to the other?
1. Pull and merge recent changes from the remote repository
- from the master branch you pull from your feature-branch
2. Make a pull request to merge your changes to the master branch
- after completing your work add changes to be committed
- commit changes
- push your branch changes to origin
- fetch origin master and merge
3. Merge your own pull request
- from Github, merge your pull request and delete your branch

#### Write a handy cheatsheet of the commands you need to commit your changes?

git pull
git checkout -b "branch-name"
git add
git commit -m "commit message"
git push origin branch-name
git chechout master
git fetch origin master
git merge origin/master

#### What is a pull request and how do you create and merge one?
A pull request is a way to add code from a feature-branch to into the master branch.
1. Create a new branch
2. Checkout branch
3. Add and commit changes
4. Push the branch to Github
5. Issue a pull request to the master branch
In Github:
- Compare & pull request
- Create pull request
- Merge pull request
- Confirm merge
- Delete branch

#### Why are pull requests preferred when working with teams?
Adding code directly to the master branch can be detremental to collaborating with other developers. The version tracking process depends on all members of a team following the system in order to protect previous versions of the code.