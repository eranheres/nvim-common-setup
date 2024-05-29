#/bin/zsh
set -e
## Verfiy first parameter is the name of the nvim
if [ -z $1 ]; then
    echo "[-] Please provide the name of the nvim"
    exit 1
fi

nvimenv=$1
echo "setting to: $nvimenv"
## Verify tha the nvim folder exists
if [ ! -d ~/.config/$nvimenv ]; then
    echo "[-] The nvim folder does not exist"
    exit 1
fi

if [ -d ~/.config/$nvimenv/lua/common ]; then
    echo "[-] The folder exists"
    exit 1
fi

pushd $(PWD)
cd ~/.config/$nvimenv

## Clone the repo to the common folder under the nvim env
git submodule add --force https://github.com/eranheres/nvim-common-setup lua/common
git submodule update --init --remote
## git submodule absorbgitdirs

# function to add line to file if the line does not exists
# $1: line to add
# $2: file to add to
add_line_to_file(){
    [ -z "$(grep "$1" $2)" ] && echo $1 >> $2
}

## Setup require statements
## autocmd.lua:
add_line_to_file 'require("common.config.common-autocmds")' lua/config/autocmds.lua
add_line_to_file 'require("common.config.common-keymaps")' lua/config/keymaps.lua

##common.lua:
echo 'return { require("common.plugins.all") }' > lua/plugins/common.lua

cp lua/common/init_lua init.lua

popd
echo [+] Done
