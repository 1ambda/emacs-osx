
;; configure recentf
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key (kbd "C-c f") 'recentf-ido-find-file)

;; with ido
(require 'ido)
(defun recentf-ido-find-file ()
  "Find a recent file using Ido."
  (interactive)
  (let* ((file-assoc-list
	  (mapcar (lambda (x)
		    (cons (file-name-nondirectory x)
			  x))
		  recentf-list))
	 (filename-list
	  (remove-duplicates (mapcar #'car file-assoc-list)
			     :test #'string=))
	 (filename (ido-completing-read "Choose recent file: "
					filename-list
					nil
					t)))
    (when filename
      (find-file (cdr (assoc filename
			     file-assoc-list))))))
(provide 'config-recentf)
