# Dotfiles customizations

---
## i2 Window Manager
```console
$> ln -s $(pwd)/i3 ~/.config/
```

---
## VIM

```console
$> ln -s $(pwd)/vim ~/.config/
```

### plugins
```console
$> vim
$> :PlugInstall
```
---
## EMACS
```console
$> ln -s $(pwd)/emacs ~/.config/
```

### plugins
```console
$> emacs
$> # for each plugin missing, install it and restart emacs
$> M-x package-install RET <plugin name>
```


