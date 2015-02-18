;; add load dir
(setq dir/config (concat user-emacs-directory "config/"))
(add-to-list 'load-path dir/config)

(mapc 'require '(config-cask
                 config-pallet
                 config-evil
                 config-smex
                 ))

