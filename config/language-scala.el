(require 'scala-mode2)
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
     
;; setup auto indent after inserting {
(sp-local-pair 'scala-mode "{" nil :post-handlers
	       '((custom:create-newline-and-enter-sexp "RET")))


(provide 'language-scala)
