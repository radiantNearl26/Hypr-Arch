<h1 style="text-align: center;">Hypr-Dots - A Super-charged Arch-Hyprland Setup</h1>

This repository contains my personal dotfiles, which are configuration files for various tools and applications on my system. These files are used to customize my workflow, shell, and other aspects of my computing environment.

## What's included?

1. .bashrc`: My bash shell configuration file, which sets up my command prompt, aliases, and other shell settings.

2. `nvim.lua: My NVim editor configuration file, which customizes my Vim experience with plugins, keybindings, and more.

3. `.gitconfig: My Git configuration file, which sets up my Git username, email, and other preferences.

4. `.zshrc: My Zsh shell configuration file, which sets up my command prompt, aliases, and other shell settings (for systems where I use Zsh).

## How to use these dotfiles
If you're interested in using these dotfiles, you can clone this repository and then create symbolic links to the files in your home directory. For example:

```zsh
git clone https://github.com/your-username/dotfiles.git
cd dotfiles
```
Then, you copy the config you like in your $XDG-CONFIG-DIR/.config folder. Have fun tweaking the configs.

## Note
Be careful when using someone else's dotfiles, as they may contain customizations that are specific to their system or workflow. Make sure to review the files carefully before using them.

## License
These dotfiles are released under the MIT License. See the `LICENSE` file for details.

## Contributing
If you'd like to contribute to these dotfiles, please feel free to submit a pull request or open an issue to discuss changes.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.
