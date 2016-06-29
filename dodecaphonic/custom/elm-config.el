(use-package elm-mode
  :init
  (setq elm-format-path (expand-file-name "~/hacking/elm-format"))
  (add-to-list 'exec-path elm-format-path)
  (setenv "PATH" (concat (getenv "PATH") (concat ":" elm-format-path)))
  :config
  (setq elm-format-on-save t))

(provide 'elm-config)
