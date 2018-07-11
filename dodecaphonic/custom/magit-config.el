(use-package magit
  :commands magit-status
  :bind ("C-x g" . magit-status)
  :custom
  (setq magit-revision-show-gravatars '("^Author:     " . "^Commit:     ")))

(provide 'magit-config)
