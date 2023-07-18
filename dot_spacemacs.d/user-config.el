;; -*- mode: emacs-lisp; lexical-binding: t -*-

;; ---------------------------------------
;; User specific configuration
;; ---------------------------------------

(editorconfig-mode 1)

(global-whitespace-mode)

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)

(set-face-attribute 'whitespace-newline nil
                    :background nil
                    :foreground "gray30")

(set-face-attribute 'whitespace-space nil :background nil :foreground "gray30")

(setq elisp-autofmt-python-bin "python3")
(setq highlight-indent-guides-method 'character)

(spacemacs/treemacs-project-toggle)

(progn
  ;; Make whitespace-mode with very basic background coloring for whitespaces.
  ;; http://xahlee.info/emacs/emacs/whitespace-mode.html
  (setq whitespace-style
        (quote (face spaces tabs newline space-mark tab-mark newline-mark)))

  ;; Make whitespace-mode and whitespace-newline-mode use “¶” for end of line char and “▷” for tab.
  (setq
   whitespace-display-mappings
   ;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
   '((space-mark 32 [183] [46]) ; SPACE 32 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
     (newline-mark 10 [8629 10]) ; LINE FEED,
     (tab-mark 9 [9655 9] [92 9]) ; tab
     )))
