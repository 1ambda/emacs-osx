;; set fringe size
(setq-default left-fringe-width 15)

(require 'magit)
(require 'git-gutter+)
(require 'git-gutter-fringe+)


(global-git-gutter+-mode t)

(provide 'config-git)
