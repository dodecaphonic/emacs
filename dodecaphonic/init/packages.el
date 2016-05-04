(require 'cl)

(defun online? ()
  (if (and (functionp 'network-interface-list)
           (network-interface-list))
      (some (lambda (iface) (unless (equal "lo" (car iface))
                              (member 'up (first (last (network-interface-info
                                        (car iface)))))))
            (network-interface-list))
    t))

(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(when (online?)
  (unless package-archive-contents (package-refresh-contents)))

(when (not (package-installed-p 'paradox))
  (package-install 'paradox))

(when (not (package-installed-p 'use-package))
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(defvar dodecaphonic/required-packages
  '(flx json expand-region gist yasnippet rainbow-mode
    magit markdown-mode slime org
    htmlize smart-tabs-mode grizzl smartparens
    multiple-cursors flycheck nyan-mode auto-complete
    js2-mode tern js-comint js2-refactor company-tern tern-auto-complete
    rust-mode flycheck-rust
    haskell-mode hindent
    purescript-mode psci
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
