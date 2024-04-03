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
    (js2r-add-keybindings-with-prefix "C-c t"))

  (use-package add-node-modules-path
    :commands add-node-modules-path
    :config
    (add-hook 'js2-mode-hook #'add-node-modules-path))

  (setq js2-basic-offset 2)
  (setq js2-global-externs '("module" "require" "console" "JSON" "$" "_")))

(use-package jest
  :bind
  ("C-c , v" . jest-file)
  ("C-c , s" . jest-function)
  ("C-c , t" . dodecaphonic/jest-jump-between-test-and-impl))

(use-package prettier-js
  :commands prettier-js-mode)

(use-package rjsx-mode)

(provide 'js-config)
