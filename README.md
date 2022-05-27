# Dotfiles customizations

---
## i3 Window Manager
```console
$ ln -s $(pwd)/i3 ~/.config/
```

---
## VIM

```console
$ ln -s $(pwd)/vim/.vimrc ~/.vim/vimrc
$ ln -s $(pwd)/vim/.vimrc.plug ~/.vim/
$ vim
:PlugInstall
```
---
## EMACS
```console
$ ln -s $(pwd)/emacs ~/.config/
$ emacs
C-x C-c // to exit
$ ln -s ~/.config/emacs/init.el ~/.emacs.d/
$ emacs
// for each plugin missing, install it and restart emacs
M-x package-install RET <plugin name>
```

---
## RCLONE
Rclone is configured to access a specific google drive location.

```console
// change rclone.service file in order to point to the desired directory
$ sudo cp rclone/rclone.service /etc/systemd/system

// uncomment 'user_allow_other' in /etc/fuse.conf
$ sudo systemctl daemon-reload
$ sudo systemctl enable rclone.service
$ sudo systemctl start rclone.service
```

