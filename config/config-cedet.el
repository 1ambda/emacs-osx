;; add cedet dir
(setq dir/setup-cedet (concat user-emacs-directory "setup/cedet"))
(setq dir/setup-cedet-contrib (concat user-emacs-directory "setup/cedet/contrib"))

(add-to-list 'load-path dir/setup-cedet)
(add-to-list 'load-path dir/setup-cedet-contrib)

(require 'cedet-devel-load)
(load-file "~/.emacs.d/setup/cedet/contrib/cedet-contrib.el")

(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode) (add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-decoration-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)

;; advanced functionality for name completion
(require 'semantic/ia)

;; semantic C/C++ Setting
(require 'semantic/bovine/gcc)

;; semantic for javascript
(require 'semantic/wisent)

;; activate semantic
(semantic-mode 1)

;; enable srecode
(global-srecode-minor-mode 1)

;; use contrib-eassist
(require 'eassist)

;; imenu intergration
(add-hook 'semantic-init-hooks
  (lambda ()
  (imenu-add-to-menubar "TAGS")))

;; key bindings
(global-set-key (kbd "<C-return>") 'semantic-ia-complete-symbol-menu)
(global-set-key (kbd "C-c j") 'semantic-ia-fast-jump)
(global-set-key (kbd "C-c y") 'semantic-decoration-include-visit)
(global-set-key (kbd "C-c Y") 
  'semantic-decoration-unparsed-include-parse-all-includes)
(global-set-key (kbd "C-c p") 'semantic-analyze-proto-impl-toggle)
(global-set-key (kbd "C-c u") 'senator-fold-tag-toggle)
(global-set-key (kbd "C-c e") 'eassist-list-methods)
(global-set-key (kbd "C-c r") 'semantic-symref)
;; (global-set-key (kbd "C-c ?") 'semantic-ia-complete-symbol)
;; (global-set-key (kbd "C-c >") 'semantic-complete-analyze-inline)
;; (global-set-key (kbd "C-c q") 'semantic-ia-show-doc)
;; (global-set-key (kbd "C-c s") 'semantic-ia-show-summary)

(provide 'config-cedet)
