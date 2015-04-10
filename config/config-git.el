;; set fringe size
(setq-default left-fringe-width 15)

(require 'magit)

(setq magit-auto-revert-mode nil)
(setq magit-last-seen-setup-instructions "1.4.0")

(require 'git-gutter+)
(require 'git-gutter-fringe+)


(global-git-gutter+-mode t)

(provide 'config-git)
