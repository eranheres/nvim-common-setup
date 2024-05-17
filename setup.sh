#/bin/zsh
# echo on
set -x

## Verfiy first parameter is the name of the nvim
if [ -z $1 ]; then
    echo "Please provide the name of the nvim"
    exit 1
fi

nvimenv=$1
echo "setting to: $nvimenv"
## Verify tha the nvim folder exists
if [ ! -d ~/.config/$nvimenv ]; then
    echo "The nvim folder does not exist"
    exit 1
fi

if [ -d ~/.config/$nvimenv/lua/common ]; then
    echo "The folder exists"
    exit 1
fi

## Clone the repo to the common folder under the nvim env
git clone https://github.com/eranheres/nvim-common-setup ~/.config/$nvimenv/lua/common

# function to add line to file if the line does not exists
# $1: line to add
# $2: file to add to
add_line_to_file(){
    [ -z "$(grep "$1" $2)" ] && echo $1 >> $2
}

## Setup require statements
## autocmd.lua:
add_line_to_file 'require("common.config.common-autocmds")' ~/.config/$nvimenv/lua/config/autocmds.lua
add_line_to_file 'require("common.config.common-keymaps")' ~/.config/$nvimenv/lua/config/keymaps.lua

##common.lua:
echo 'return { require("common.plugins.all") }' > ~/.config/$nvimenv/lua/plugins/common.lua

