;; emacs-color-themes (packagename: sublime-themes)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night t)

;; face
(set-face-attribute 'highlight nil
		     :background
		     "#313131")

;; (require 'powerline)
;; (powerline-default-theme)
(require 'powerline-evil)
(powerline-evil-vim-theme)

;; fci-mode
(require 'fill-column-indicator)
(setq fci-rule-width 2)
(define-globalized-minor-mode
 global-fci-mode fci-mode (lambda () (fci-mode 1)))
;;(global-fci-mode t)			
(setq fci-rule-color "cadet blue")

(provide 'config-theme)
