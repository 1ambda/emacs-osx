(require 'yasnippet)

;; add snippet dir
;;(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")

;; yas with ac
(add-to-list 'ac-sources 'ac-source-yasnippet)

(global-set-key (kbd "C-c s n") 'custom/create-new-snippet)
(global-set-key (kbd "C-c s r") 'yas-reload-all)

;; Use shift-TAB as yas-expand
;; (define-key yas-minor-mode-map (kbd "<S-iso-lefttab>") 'yas-expand) 
(define-key yas-minor-mode-map (kbd "S-<tab>") 'yas-expand)

;; create snippet function
(defun custom/create-new-snippet (snippet-name)
  (interactive "sSnippet name : ")
  (if (not (file-directory-p (format "~/.emacs.d/snippets/%s" major-mode)))
      (make-directory (format "~/.emacs.d/snippets/%s" major-mode)))
  (let ((file-name (format "~/.emacs.d/snippets/%s/%s" major-mode snippet-name)))
    (if (file-exists-p file-name)
        (progn (message "The snippet already exists")
               (switch-to-buffer (find-file-noselect file-name)))
      (progn (write-region *new-snippet-content* nil file-name)
             (switch-to-buffer (find-file-noselect file-name))))))

;; new snippet-contents
(setq *new-snippet-content*
"# name: 
# key: 
# --")

(yas-global-mode 1)
(provide 'config-snippet)
