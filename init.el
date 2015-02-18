;; add load dir
(setq dir/config (concat user-emacs-directory "config/"))
(add-to-list 'load-path dir/config)

;; load config files
(mapc 'require '(config-default
		 config-cask
                 config-pallet
                 config-smex
		 config-ido
                 config-evil
                 ;; todo
		 ;; frame, window
		 ;; git gutter
		 ;; projectile
                 ;; config-theme, powerline, font
                 ;; config-autocomplete
                 ;; config-yasnippet
                 ))

