# Guide to create and replicate dotfiles using bare repositories                          

> *Note*: This guide is also availabe on [Arch Wiki](https://wiki.archlinux.org/title/Dotfiles "Link to ArchWiki's guide for dotfiles") and [AskHN](https://news.ycombinator.com/item?id=11070797 "Link to AskHN's guide for dotfiles").

> *Warn*: SSH method is more secure but requires more time to configure.

**Step 1: Create a bare local repository**	⇨ *Initialize a bare Git repository in a new directory (e.g., `~/.dotfiles`)*

```
git init --bare ~/.dotfiles
```

**Step 2: Add an alias for convenience**
	⇨ *Create an alias to run Git with specific options*

```
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
```

**Step 3: Set status to show untracked files to no**
	⇨ *Disable the `status.showUntrackedFiles` option to avoid cluttering the `dotfiles status` output*

```
dotfiles config status.showUntrackedFiles no
```

**Step 4: Add and commit demo files**
	⇨ *Create some demo files in your home directory (e.g., `~/.config/...`) and add these files to the Git repository*

```
dotfiles add <file>
```
```
dotfiles commit -m "Initial commit"
```

**Step 5: Set up a link to a remote repository using SSH URL**
	⇨ *Create a remote repository on GitLab (e.g., `arch-dotfiles`) and Add the remote repository to your local repository using HTTPS or SSH URL*
```
dotfiles remote add origin git@gitlab.com:your-username/arch-dotfiles.git
```
```
dotfiles push -u origin master
```

***That's it! Follow these steps to set up your dotfiles repository.***
