# General nvim setup (not IDE) 

## setup
To setup on an new nvim environment just run the following script (repace the nvim-env-name with the nvim):
```bash
curl -sL https://raw.githubusercontent.com/eranheres/nvim-common-setup/main/setup.sh | bash -s <nvim-env-name> 
```
## TODO:

#### general
- [ ] open-close braces annoying behaviour

#### obsidian
- [ ] create nvim setup for obsidian
- [ ] check the Obsidian plugin

#### nvim-ios
- [ ] fix iOS code formatting 
- [ ] fix the debug session on nvim-ios
- [ ] check which options to copy fron nvim-ios to common-setup
- [ ] move the chatgpt setup from nvim-ios to common-setup
- [ ] check fidget addon (like in nvim-ios)
- [ ] read about the trouble plugin
- [ ] set the borders of splits (different colors)
- [ ] setup other IDEs with copilot 
- [ ] set the actions.json file in ChatGPT to include the vim expert
- [ ] check lazy plugin of mini-surrounding
- [ ] checkout the codi.vim plugin
- [ ] check how to create projects (or search the sessions history)
 

## Done:
- [x] add harpoon to common
- [x] set the suggestion approval to be <Tab> and nvigation keys
- [x] make C-K and C-J to browse through iTerm history
- [x] fix the issue with the error on nvim-a
- [x] create a repo to sync all the common plugins between nvims
- [x] set autosession like in nvim-ios to common
- [x] create nvim setup for neovim develpment (located on nvim-lua including example of a setup)

- [x] autosession or use the built in Session command (autosession and sessionlens)
- [x] setup Spectre search and replace (<leader>sr)  - solution use the ^ $ and !
- [x] Set a special GPT helper for nvim using GPT
- [x] run checkhealth and fix issues
- [x] Set search to find a keymap and its configuration using Telescope
- [x] Do I need the windows operations or only buffers?
- [x] setup chatgpt help
- [x] create git repo for this project
- [x] have the autosave command
- [x] copy the list of keys from other profiles
- [x] create shortcuts for toggleterm 

## Tips and tricks

- to print path of local env: vim.print(vim.fn.stdpath('data'))  
- use nmap command to find the actual command that is being used
