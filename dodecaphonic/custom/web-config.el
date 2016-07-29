(use-package scss-mode
  :config
  (setq scss-compile-at-save nil))

(use-package web-mode
  :config
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode)))

(use-package rainbow-mode)

(provide 'web-config)
