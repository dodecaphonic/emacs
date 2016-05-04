(use-package scala-mode2
  :config
  (use-package ensime
    :config
    (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)))

(provide 'scala-config)
