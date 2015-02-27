;; windmove, windcycle, buffcycle
(setq dir/setup-buffer (concat user-emacs-directory "setup/buffer"))
(add-to-list 'load-path dir/setup-buffer)

(require 'windmove)
(require 'windcycle)
(require 'buffcycle)

(provide 'config-buffer)
