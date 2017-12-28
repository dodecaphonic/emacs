(use-package elm-mode
  :init
  (setq elm-format-path (expand-file-name "~/hacking/elm-format"))
  (add-to-list 'exec-path elm-format-path)
  (setenv "PATH" (concat (getenv "PATH") (concat ":" elm-format-path)))
  :config
  (use-package flycheck-elm)
  (with-eval-after-load 'company
    (add-to-list 'company-backends 'company-elm))

  (setq elm-format-on-save t)
  (add-hook 'elm-mode-hook #'elm-oracle-setup-completion)
  (add-hook 'flycheck-mode-hook #'flycheck-elm-setup))

(provide 'elm-config)
