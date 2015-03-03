(require 'flycheck)

(eval-after-load 'flycheck
  '(custom-set-variables
    '(flycheck-display-errors-function
      #'flycheck-pos-tip-error-messages)))

(provide 'config-flycheck)
