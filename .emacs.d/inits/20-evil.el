;; evil
(require 'evil)
(evil-mode t)

;; evil-numbers
(require 'evil-numbers)
(define-key evil-normal-state-map (kbd "C-a") 'evil-numbers/inc-at-pt)
(define-key evil-normal-state-map (kbd "C-x") 'evil-numbers/dec-at-pt)

;; evil-tabs
(global-evil-tabs-mode t)
