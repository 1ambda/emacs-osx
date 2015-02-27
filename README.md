# Emacs 24.4 on OSX

### Cloning Repo

```
$ git clone --recursive git://github.com/1ambda/emacs-osx ~/.emacs.d/
$ cd ~/.emacs.d/
```

### Building CEDET

```
$ cd ~/.emacs.d/setup/cedet
$ make clean-all && make
$ cd ~/.emacs.d/setup/cedet/contrib
$ make
```

### Cask

(1) install [cask](http://cask.readthedocs.org/en/latest/guide/installation.html)

(2) download dependencies

`$ cask install`

