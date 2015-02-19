;; add load dir
(setq dir/config (concat user-emacs-directory "config/"))
(add-to-list 'load-path dir/config)

;; cask config
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)

;; load config files
(mapc 'require '(config-default
                 config-pallet
                 config-smex
		 config-ido
		 config-restore
                 config-evil
                 ;; todo
		 ;; frame, window
		 ;; git gutter
		 ;; projectile
                 ;; config-theme, powerline, font
                 ;; config-autocomplete
                 ;; config-yasnippet
                 ))

