#!/usr/bin/python3

import os
import shutil
import pathlib
import subprocess
import sys
from pathlib import Path

# Packages for instalation
packs = [
        'curl', 'zsh', 'vim', 'tmux'
]

oh_my_zsh = True

# Dotfiles to create symlink for
dotfiles = [
	".aliases", ".profile", ".bashrc", ".zshrc", ".exports",
	".bash_profile", ".tmux.conf", ".vimrc", ".gitconfig", ".scripts"
]

# Creates symlinks for dotfiles to home directory
def dot_files_init():

    dst = str(Path.home()) + "/"

    src = str(pathlib.Path(__file__).parent.absolute()) + '/'
    old_conf = "old_conf/"

    # get files in dst
    dst_files = os.listdir(dst)

    #create folder if not exists
    if not os.path.exists(dst + old_conf):
        os.makedirs(dst + old_conf)

    # move or unlink previous conf
    for dot in dotfiles:
        if dot in dst_files:
            if os.path.islink(dst + dot):
                try:
                        os.unlink(dst + dot)
                except:
                        print('Can not unlike file: ' + dst + dot)
                else:
                        print('Unlinked file: ' + dot)
            else:
                try:
                        shutil.move(dst + dot, dst + old_conf + dot)
                except:
                        print('Can not move file: ' + dot + ' to ' + dst)
                else:
                        print('Moved file: ' + dot + ' to: ' + dst + old_conf)

    # Create new symlinks
    for dot in dotfiles:
        try:
                os.symlink(src + dot, dst + dot, target_is_directory=True)
        except Exception as e:
                print(e)
        else:
                print('symlink for file: ' + dot + ' created to:' + dst)

# Installs specified packages with apt install
def install_packs():

    # Install packs
    for pack in packs:
            subprocess.call('sudo apt install -y ' + pack, shell=True)

    # Update and Upgrade packs
    subprocess.call('sudo apt update', shell=True)
    subprocess.call('sudo apt upgrade', shell=True)

    # Install tmux plug manager
    subprocess.call('git clone https://github.com/tmux-plugins/tpm '
            + '~/.tmux/plugins/tpm', shell=True)


# Main function
def main():
    arguments = sys.argv

    if len(arguments) < 2:
            sys.exit('Please specify action\n')

    arg = str(arguments[1])

    if 'link' == arg:
            dot_files_init()

    elif 'install' == arg:
            install_packs()

    elif 'help' == arg:
            print(
                    "Available options:\n" +
                    "link: create symlinks for dotfiles\n" +
                    "install: install packages\n"
                    )

    else:
            print('Unknown argument: ' + arg)


if __name__ == '__main__':
	main()
