(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(defvar dodecaphonic/required-packages
  '(clojure-mode coffee-mode expand-region gist inf-ruby ruby-mode
    magit markdown-mode yaml-mode rspec-mode flx-ido rainbow-mode json
    scala-mode2 slime yasnippet color-theme-sanityinc-tomorrow org
    ack-and-a-half projectile htmlize fill-column-indicator multi-term
    ruby-refactor smart-tabs-mode scss-mode web-mode grizzl js2-mode ensime
    smartparens ruby-tools go-mode multiple-cursors flycheck rubocop
    rust-mode flycheck-rust haskell-mode nyan-mode purescript-mode psci
    elm-mode enh-ruby-mode yard-mode robe tern tern-auto-complete
    js2-refactor company-tern)
 "A list of packages to ensure are installed at launch.")

(defun dodecaphonic/bootstrap-required-packages-installed-p ()
  (loop for p in dodecaphonic/required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (dodecaphonic/bootstrap-required-packages-installed-p)
  ;; check for new packages (package versions)
  (message "%s" "Refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; install the missing packages
  (dolist (p dodecaphonic/required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
