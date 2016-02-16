(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(defvar dodecaphonic/required-packages
  '(flx-ido json expand-region gist yasnippet rainbow-mode
    magit markdown-mode slime org projectile
    htmlize smart-tabs-mode scss-mode web-mode grizzl smartparens
    multiple-cursors flycheck nyan-mode auto-complete
    clojure-mode
    ruby-mode inf-ruby rspec-mode ruby-tools rubocop ruby-refactor
    yard-mode yaml-mode
    scala-mode2 ensime
    js2-mode tern js-comint js2-refactor company-tern tern-auto-complete
    go-mode
    rust-mode flycheck-rust
    haskell-mode hindent
    purescript-mode psci psc-ide
    elm-mode)
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
