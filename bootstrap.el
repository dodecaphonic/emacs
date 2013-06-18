;; Taken and adapted from Emacs Prelude
;; http://batsov.com/articles/2012/02/19/package-management-in-emacs-the-good-the-bad-and-the-ugly/

(defvar required-packages
  '(clojure-mode coffee-mode expand-region gist inf-ruby ruby-mode
    magit markdown-mode solarized-theme yaml-mode rspec-mode csharp-mode
    rainbow-mode json scala-mode2 rvm slime yasnippet-bundle
    color-theme-sanityinc-tomorrow gist org ack-and-a-half projectile
    htmlize fill-column-indicator ruby-hash-syntax sr-speedbar
    multi-term)
  "A list of packages to ensure are installed at launch.")

(defun bootstrap-required-packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (bootstrap-required-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(provide 'bootstrap)
;;; bootstrap
