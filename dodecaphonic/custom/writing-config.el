;;; writing-config.el -- Stuff related to writing longform text
;;; Commentary:
;;; Code:

(use-package markdown-mode)

(use-package org)

(use-package org-roam
      :ensure t
      :hook
      (after-init . org-roam-mode)
      :custom
      (org-roam-directory "/home/dodecaphonic/Dropbox/Notes")
      :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph-show))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate))))

(use-package darkroom)

(provide 'writing-config)
;;; writing-config.el ends here
