(use-package js2-mode
  :commands js2-mode
  :mode
  ("\\.js$" . js2-mode)
  ("\\.jsx$" . js2-mode)
  ("\\.es6$" . js2-mode)
  :config
  (use-package js2-refactor
    :commands (js2r-add-keybindings-with-prefix)
    :config
    (add-hook 'js2-mode-hook #'js2-refactor-mode)
    (add-hook 'js2-mode-hook #'dodecaphonic-tide-setup)
    (js2r-add-keybindings-with-prefix "C-c t"))

  (use-package add-node-modules-path
    :commands add-node-modules-path
    :config
    (add-hook 'js2-mode-hook #'add-node-modules-path))

  (setq js2-basic-offset 2)
  (setq js2-global-externs '("module" "require" "console" "JSON" "$" "_")))

(use-package jest)

(use-package tern
  :commands tern-mode
  :config
  (use-package company-tern
    :config
    (use-package tern-auto-complete
      :config
      (with-eval-after-load 'company
        (require 'company-tern)
        (require 'tern-auto-complete)
        (add-to-list 'company-backends 'company-tern)))))

(use-package prettier-js
  :commands prettier-js-mode)

(use-package rjsx-mode)

(provide 'js-config)
