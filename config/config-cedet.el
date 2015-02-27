;; add cedet dir
(setq dir/setup-cedet (concat user-emacs-directory "setup/cedet"))
(setq dir/setup-cedet-contrib (concat user-emacs-directory "setup/cedet/contrib"))

(add-to-list 'load-path dir/setup-cedet)
(add-to-list 'load-path dir/setup-cedet-contrib)

(require 'cedet-devel-load)
(load-file "~/.emacs.d/setup/cedet/contrib/cedet-contrib.el")

(provide 'config-cedet)
