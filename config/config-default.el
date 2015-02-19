;; remove tool bar
(tool-bar-mode -1)

;; enable line-number
(global-linum-mode t)

;; no start-up message
(setq inhibit-startup-message t)

;; alias
(defalias 'yes-or-no-p 'y-or-n-p)

;; no backup (~, .#)
(setq make-backup-files nil)
(setq create-lockfiles nil)

;; auto-save on switch buffer
(defadvice switch-to-buffer (before save-buffer-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice other-window (before other-window-now activate)
  (when buffer-file-name (save-buffer)))
(defadvice other-frame (before other-frame-now activate)
  (when buffer-file-name (save-buffer)))


;; open 'init.el' using C-c C-q
(global-set-key (kbd "C-c C-q") (lambda ()
				  (interactive)
				  (find-file "~/.emacs.d/init.el")))

(provide 'config-default)
