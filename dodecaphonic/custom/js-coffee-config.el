(require 'coffee-mode)

(defun dodecaphonic-js2-mode-hook ()
  (setq js2-basic-offset 2)
  (setq js2-global-externs '("module" "require" "console" "JSON" "$" "_"))
  (tern-mode t))

(defun dodecaphonic-coffee-mode-hook ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2)
  (set (make-local-variable 'coffee-tab-width) 2)
  (setq coffee-debug-mode t)
  (local-set-key "\C-c\C-b" 'coffee-compile-buffer))

(with-eval-after-load "company"
  (require 'company-tern)
  '(progn
     (require 'tern-auto-complete)
     (add-to-list 'company-backends 'company-tern)))

(add-hook 'coffee-mode-hook 'dodecaphonic-coffee-mode-hook)

(autoload 'js2-mode "js2-mode" nil t)
(add-hook 'js2-mode-hook 'dodecaphonic-js2-mode-hook)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.es6$" . js2-mode))

;; Use js-mode for JSON, as js2-mode is very demanding
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
