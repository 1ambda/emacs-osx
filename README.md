# Emacs 24.4 on OSX

### Installing Emacs

(1) Build [emacs-mac-port](https://github.com/railwaycat/emacs-mac-port)  

```
$ git clone git://github.com/railwaycat/emacs-mac-port.git
$ brew install autoconf automake libtool
$ ./configure --with-mac --enable-mac-app
$ make && make install
```

(2) Cloning Repo

```
$ git clone --recursive git://github.com/1ambda/emacs-osx ~/.emacs.d/
$ cd ~/.emacs.d/
```

(3) Building CEDET

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

### Javascript

- install [jshint](http://truongtx.me/2014/02/21/emacs-setup-jshint-for-on-the-fly-petential-error-checking/), [tern](http://truongtx.me/2014/04/20/emacs-javascript-completion-and-refactoring/)