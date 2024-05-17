# General nvim setup (not IDE) 

## setup
To setup on an new nvim environment just run the following script (repace the nvim-env-name with the nvim):
```bash
curl -sL https://raw.githubusercontent.com/eranheres/nvim-common-setup/main/setup.sh | bash -s <nvim-env-name> 
```

## TODO:
- [ ] create a repo to sync all the common plugins between nvims
- [ ] set autosession like in nvim-ios to common
- [ ] check how to create projects (or search the sessions history)
- [ ] add harpoon to common
- [ ] create nvim setup for obsidian
- [ ] check fidget addon (like in nvim-ios)
- [ ] read about the trouble plugin
- [ ] check if to use the autosession plugin that is in vim-ios instead
- [ ] check the Obsidian plugin
- [ ] set the borders of splits (different colors)
- [ ] setup other IDEs with copilot 
- [ ] set the actions.json file in ChatGPT to include the vim expert
- [ ] checkout the codi.vim plugin
 

## Done:
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

- use nmap command to find the actual command that is being used
- to print the local vim: print(vim.fn.stdpath('data'))  
