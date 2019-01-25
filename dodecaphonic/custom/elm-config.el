(use-package elm-mode
  :config
  (use-package flycheck-elm)
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'company-elm))

  (setq elm-format-on-save t)
  (add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
  (add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

(provide 'elm-config)
