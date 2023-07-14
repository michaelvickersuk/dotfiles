;; -*- mode: emacs-lisp; lexical-binding: t -*-

;; ---------------------------------------
;; PHP configuration
;; ---------------------------------------

(add-hook 'before-save-hook 'php-cs-fixer-before-save)

(add-to-list 'auto-mode-alist '("\\.blade.php\\'" . web-mode))

(require 'flycheck-phpstan)
(flycheck-add-next-checker 'phpstan 'php-phpmd)

(setq lsp-diagnostic-package :none)
(setq flycheck-phpmd-rulesets "/home/michael/path/to/the/phpmd.xml")
(setq php-cs-fixer-config-option "/home/michael/path/to/the/.php-cs-fixer.php")

(with-eval-after-load 'lsp-mode
    (add-to-list 'lsp-file-watch-ignored-directories "[/\\\\]\\vendor\\'"))
