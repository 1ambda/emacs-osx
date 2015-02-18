(require 'evil)
(evil-mode 1)

;; unmap some keys in evil-insert mode
(define-key evil-insert-state-map (kbd "C-p") nil)
(define-key evil-insert-state-map (kbd "C-n") nil)
(define-key evil-insert-state-map (kbd "C-a") nil)
(define-key evil-insert-state-map (kbd "C-e") nil)
(define-key evil-insert-state-map (kbd "C-w") 'kill-region)
(define-key evil-insert-state-map (kbd "C-y") 'yank)
(define-key evil-insert-state-map (kbd "C-d") 'delete-char)

;; evil-surround
(require 'evil-surround)
(global-evil-surround-mode 1)

;; evil-exchange
(require 'evil-exchange)
(setq evil-exchange-key (kbd "zx"))
(evil-exchange-install)

;; evil-numbers
(require 'evil-numbers)
(global-set-key (kbd "C-+") 'evil-numbers/inc-at-pt)
(global-set-key (kbd "C--") 'evil-numbers/dec-at-pt)

;; evil-matchit
(require 'evil-matchit)
(global-evil-matchit-mode 1)

;; evil-leader key: '\'
(require 'evil-leader)
(global-evil-leader-mode)
(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer)

;; evil-easymotion
(evilem-default-keybindings "SPC")

;; evil-escape
(require 'evil-escape)
(setq-default evil-escape-key-sequence ";'")
(evil-escape-mode t)

;; expand-region
(require 'expand-region)
(define-key evil-normal-state-map (kbd "+") 'er/expand-region)
(define-key evil-normal-state-map (kbd "-") 'er/contract-region)
(define-key evil-visual-state-map (kbd "x") 'er/expand-region)
(define-key evil-visual-state-map (kbd "X") 'er/contract-region)

;; evil-iedit-state
(require 'evil-iedit-state)

;; evil-smartparens
(require 'smartparens-config)
(smartparens-global-mode 1)
(add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)


(provide 'config-evil)
