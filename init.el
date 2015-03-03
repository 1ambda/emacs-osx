;; add config
(setq dir/config (concat user-emacs-directory "config/"))
(add-to-list 'load-path dir/config)

;; cask, pallet config
(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

;; load config files
(mapc 'require '(config-default
		 config-cedet		
		 config-theme
                 config-evil
		 config-restore
		 config-buffer
		 config-recentf
                 config-smex
		 config-ido
		 config-auto-complete
		 config-git
		 config-projectile
                 config-snippet

		 config-flycheck
		 language-html		
		 language-css
		 language-js
                 ;; todo
		 ;; auto-complete per language
		 ;; html, css, javascript
		 ;; python, scala, haskell
		 ;; lisp
		 ;; flycheck
                 ))


