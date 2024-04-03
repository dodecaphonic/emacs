(use-package org-roam
  :ensure t
  :init
  ;;(set org-roam-v2-ack t)
  :custom
  (org-roam-directory "~/SynologyDrive/Dropbox/RoamNotes")
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-setup))

(provide 'org-roam-config)
;;; org-roam-config.el ends here
