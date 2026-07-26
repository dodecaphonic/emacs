(use-package magit :ensure t
  :commands magit-status
  :bind ("C-x g" . magit-status)
  :config
  (define-key magit-mode-map (kbd "RET") 'magit-diff-visit-worktree-file))

(provide 'magit-config)
