(use-package js2-mode
  :commands js2-mode
  :mode
  ("\\.js$" . js2-mode)
  ("\\.jsx$" . js2-mode)
  ("\\.es6$" . js2-mode)
  :config
  (use-package js2-refactor
    :commands (js2r-add-keybindings-with-prefix)
    :init
    (add-hook 'js2-mode-hook #'js2-refactor-mode)
    (js2r-add-keybindings-with-prefix "C-c t"))

  (setq js2-basic-offset 2)
  (setq js2-global-externs '("module" "require" "console" "JSON" "$" "_"))
  (setq inferior-js-program-command "node --interactive"))

(use-package tern
  :commands tern-mode
  :init
  (add-hook 'js2-mode-hook (lambda () (tern-mode t)))
  :config
  (with-eval-after-load 'company
    (require 'company-tern)
    (require 'tern-auto-complete)
    (add-to-list 'company-backends 'company-tern)))

;; Use js-mode for JSON, as js2-mode is very demanding
(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))

(provide 'js-config)
