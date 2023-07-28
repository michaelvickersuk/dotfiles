;; -*- mode: emacs-lisp; lexical-binding: t -*-

;; ---------------------------------------
;; Version Control configuration
;; ---------------------------------------

(defun visit-new-pull-request-url ()
  "Create a pull request for the current branch on GitHub"
  (interactive)
  (browse-url
   (format "https://github.com/%s/pull/new/%s"
           (replace-regexp-in-string
            "\\`.+github\\.com:\\(.+\\)\\.git\\'"
            "\\1"
            (magit-get "remote" (magit-get-push-remote) "url"))
           (magit-get-current-branch))))

(eval-after-load
    'magit '(define-key magit-mode-map "v" #'visit-new-pull-request-url))
