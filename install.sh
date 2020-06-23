mkdir -p ${HOME}/.config/nvim

cd `dirname $0`
ln -s ${PWD}/init.vim ${HOME}/.config/nvim/init.vim
ln -s ${PWD}/commands.vim ${HOME}/.config/nvim/commands.vim
