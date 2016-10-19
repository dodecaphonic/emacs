(use-package elm-mode
  :init
  (setq elm-format-path (expand-file-name "~/hacking/elm-format"))
  (add-to-list 'exec-path elm-format-path)
  (setenv "PATH" (concat (getenv "PATH") (concat ":" elm-format-path)))
  :config
  (defun dodecaphonic-elm-mode-hook ()
    (company-mode t)
    (add-to-list 'company-backends 'company-elm))

  (setq elm-format-on-save t)
  (add-hook 'elm-mode-hook 'dodecaphonic-elm-mode-hook)
  (add-hook 'elm-mode-hook #'elm-oracle-setup-completion))

(provide 'elm-config)
