;; add config, setup dir
(setq dir/config (concat user-emacs-directory "config/")
      dir/setup  (concat user-emacs-directory "setup/"))

(add-to-list 'load-path dir/config)
(add-to-list 'load-path dir/setup)

;; cask, pallet config
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; load config files
(mapc 'require '(config-default
                 config-evil
		 config-theme
		 config-restore
		 config-buffer
		 config-recentf
                 config-smex
		 config-ido
		 config-git
		 config-projectile
                 ;; todo
		 ;; projectile
                 ;; config-autocomplete
                 ;; config-yasnippet
                 ))
