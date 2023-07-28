;; -*- mode: emacs-lisp; lexical-binding: t -*-

;; ---------------------------------------
;; User specific configuration
;; ---------------------------------------

(editorconfig-mode 1)

(global-whitespace-mode)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(setq elisp-autofmt-python-bin "python3")
(setq highlight-indent-guides-method 'character)
(setq whitespace-line-column 120)

(spacemacs/treemacs-project-toggle)

