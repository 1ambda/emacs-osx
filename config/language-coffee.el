(require 'coffee-mode)

;; auto-complete
(add-to-list 'ac-modes 'coffee-mode)
(add-to-list 'ac-sources 'ac-source-yasnippet)

;; yasnippet
(defun config:coffee-mode ()
     (yas-activate-extra-mode 'coffee-mode))

(add-hook 'coffee-mode-hook
  '(lambda() (config:coffee-mode)))

(custom-set-variables
 '(coffee-tab-width 2)
 '(coffee-args-compile '("-c" "--bare")))

;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
;; only show bad whitespace
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))

(provide 'language-coffee)
