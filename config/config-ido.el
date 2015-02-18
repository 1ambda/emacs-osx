(require 'ido)

(ido-mode t)
(ido-everywhere 1)

(setq ido-enable-flex-matching t
      ido-enable-prefix nil
      ido-case-fold t
      
      ido-use-filename-at-point 'guess
      ido-use-url-at-point t
      
      ido-enable-tramp-completion nil

      ido-create-new-buffer 'always
      ido-default-file-method 'selected-window
      ido-default-buffer-method 'selected-window)

;; flx-ido
(require 'flx-ido)
(flx-ido-mode 1)

;; ido-at-point
(ido-at-point-mode)

;; ido-vertical
(require 'ido-vertical-mode)
(ido-vertical-mode 1)
(setq ido-max-prospects 10)

;; ido-sort-mtime
(ido-sort-mtime-mode 1)

;; ido-select-window
(global-set-key (kbd "C-x o") 'ido-select-window)

(provide 'config-ido)
