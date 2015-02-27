;; configure auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")
(ac-config-default)
(add-to-list 'ac-sources 'ac-source-semantic)

;; set min char to start auto-complete
(setq ac-auto-start 2)

;; define move key
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)

(provide 'config-auto-complete)
