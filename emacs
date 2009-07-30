;; -*- mode: lisp -*-

;; slime
;;(setq inferior-lisp-program "/usr/bin/cm-cmucl")
;;(add-to-list 'load-path "/usr/share/slime")
;;(require 'slime)
;;(slime-setup)

;;; Always do syntax highlighting
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration 3)

;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)


;; erlware emacs mode
(setq load-path (cons "/home/dagvl/vcs/erlware-mode" load-path))
(require 'erlang-start)

;; org-mode
(setq load-path (cons "~/vcs/org-mode" load-path))
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; remember clock on exit
(setq org-clock-persist t)
;;(org-clock-persistence-insinuate)

;;color
(require 'color-theme)
(color-theme-calm-forest)

(set-default-font "-adobe-courier-medium-r-normal--12-120-75-75-m-70-iso8859-1")

;; show trailing spaces
(require 'show-wspace)
(add-hook 'font-lock-mode-hook 'show-ws-highlight-trailing-whitespace)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
