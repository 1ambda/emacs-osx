;; restore buffers, frame layout
(setq wg-session-file "~/.emacs.d/.emacs.workgroups")
(setq wg-prefix-key (kbd "C-c w"))
(workgroups-mode 1)

;; restore frame size
(setq warning-suppress-types nil)
(add-to-list 'warning-suppress-types '(frame-restore))
(frame-restore-mode)

(provide 'config-restore)
