;; slime
;;(setq inferior-lisp-program "/usr/bin/cm-cmucl")
;;(add-to-list 'load-path "/usr/share/slime")
(require 'slime)
(slime-setup)

;;; Always do syntax highlighting
(global-font-lock-mode 1)
(setq font-lock-maximum-decoration 3)

;;; Also highlight parens
(setq show-paren-delay 0
      show-paren-style 'parenthesis)
(show-paren-mode 1)

