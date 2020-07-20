/* /1/ ** Basic Commands **/
$ git init 						/* Initialize Local Git Repository */
$ git add <file>				/* Add Files to Index */
$ git status					/* check status of working tree */
$ git commit					/* commit changes in index */
$ git push						/* Push to remote repository */
$ git pull						/* pull latest from remote repository */
$ git clone						/* Clone repository into a New Directory */
---------------------------------------------------------------------------------------------

$ git init
$ git config --global user.name '     '
$ git config --global user.email 'abc@gmail.com'
$ git add index.html
$ git status
$ git rm --cached index.html		/* to remove */
$ git add *.html					/* add all html files*/
$ git add .							/* add all types of files*/
$ git add -A						/* add all files together */
$ git commit 
	type 1	opens VIM editor  → Click i(to go in insert mode) → ESC &:wq + enter
	type 2 (New)	
$ git commit -m 'changed app.js'
$ git commit -a -m "adding 3 files"	 /* to commit all files together */
$ git log 
$ gitignore
-----------------------------------------------------------------------------------
/*/2/  *** Branch ****/
$ git branch loginbranch 				/* Login branch creation */
$ git checkout loginbranch 				/* to enter in branch */
$ git merge loginbranch 				/* merge branch into master */
$ cat edu.text
--------------------------------------------------------------------------
/*/3/ ### Rebasing ### **/
$ git add -A
$ git commit -a -m "commiting rebasing"

$ git rebase master 

$ ssh-keygen
	$ cat copy ssh key into the github-proflie-settings-SSH & GPG keys
	$ ssh -T git@github.com

$ git checkout firstbranch
$ git push origin firstbranch
--------------------------------------------------------------------------
/*/4/ ***Remote Repository **/
	$ git remote add origin "https -----"
	$ git push -u origin master
	$ touch README.md
	$ git
	$ git commit -m 'Added readme'
	$ git push
	$ git clone https://-------

second Option
$ git remote add origin "https -----"
$ git pull origin master

//5/ *** Revert ***///
$ Cat revert.txt
$ git log						// to check the previous version 
$ git checkout 802d31b4 revert.txt
$ Cat revert.txt



