(use-package scala-mode
  :config
  (use-package ensime
    :config
    (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)))

(provide 'scala-config)
