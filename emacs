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

;;color
(require 'color-theme)
(color-theme-calm-forest)

(set-default-font "-adobe-courier-medium-r-normal--12-120-75-75-m-70-iso8859-1")

