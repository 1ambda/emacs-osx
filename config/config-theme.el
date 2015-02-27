;; emacs-color-themes (packagename: sublime-themes)
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night t)

;; face
(set-face-attribute 'highlight nil
		     :background
		     "#515151")

;; powerline
(require 'powerline)
(powerline-center-theme)		

(provide 'config-theme)
