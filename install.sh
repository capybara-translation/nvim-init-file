mkdir -p ${HOME}/.config/nvim

cd `dirname $0`
ln -s ${PWD}/init.vim ${HOME}/.config/nvim/init.vim
ln -s ${PWD}/commands.vim ${HOME}/.config/nvim/commands.vim
ln -s ${PWD}/.ideavimrc ${HOME}/.ideavimrc

mkdir -p ${HOME}/.config/nvim/colors
wget -P ${HOME}/.config/nvim/colors https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
wget -P ${HOME}/.config/nvim/colors https://raw.githubusercontent.com/aereal/vim-colors-japanesque/master/colors/japanesque.vim
wget -P ${HOME}/.config/nvim/colors https://raw.githubusercontent.com/cocopon/iceberg.vim/master/colors/iceberg.vim
