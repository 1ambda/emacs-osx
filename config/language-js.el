;; js2-mode
(require 'js2-mode)
;; json config
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)

;; ac-js2
;; (require 'auto-complete)
;; (require 'ac-js2)
;; (add-hook 'js2-mode-hook 'ac-js2-mode)

;; js2-refactor
(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")

;; smartparens: setup auto indent after inserting {
(sp-local-pair 'js2-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))

(custom-set-variables  
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p nil))

(setq-default js2-global-externs '("jQuery"
				   "$"
				   "module"
				   "require"
				   "buster"
				   "sinon"
				   "assert"
				   "refute"
				   "setTimeout"
				   "clearTimeout"
				   "setInterval"
				   "clearInterval"
				   "location"
				   "__dirname"
				   "console"
				   "JSON"))

(defun js2-mode-config ()
  (yas-activate-extra-mode 'js-mode)
  (tern-mode t)
  (fci-mode 1)
  (flycheck-mode t)
  ;; (setq ac-js2-evaluate-calls t)	
  (add-to-list 'ac-sources 'ac-source-yasnippet))

(add-hook 'js-mode-hook 'js2-mode-config)

;; tern
(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (setq tern-ac-on-dot t)
     (tern-ac-setup)))

;; when tern doesn't auto refresh
(defun delete-tern-process ()
  (interactive)
  (delete-process "Tern"))

;; make .tern-project file
(defun make-tern-project ()
  (interactive)
  (shell-command "cp ~/.emacs.d/templates/.tern-project ."))

(define-key js2-mode-map (kbd "C-c j") 'tern-find-definition)

(provide 'language-js)
