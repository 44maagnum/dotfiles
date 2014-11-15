= Setup Dotfiles
- Clone dotfiles repo into ~/
- Symlink ~/.vim -> ~/dotfiles/config/.vim/
- Symlink ~/.vimrc -> ~/dotfiles/config/.vimrc
- mkdir -p ~/.vimfiles/backup ~/.vimfiles/swap ~/.vimfiles/undo
- ln -s ~/dotfiles/config/bash_profile ~/.bash_profile
- ln -s ~/dotfiles/config/.bashrc ~/bash_profile
- ln -s ~/dotfiles/config/.bashrc ~/.bashrc
- ln -s ~/dotfiles/config/.bashrc ~/.profile

= Install Software
- Install iTerm
    - Setup hotkey window
- Install Jumpcut
    - Set to run on login
- Install Divvy
    - Set to run on login
