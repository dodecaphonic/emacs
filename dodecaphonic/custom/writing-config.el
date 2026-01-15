;;; writing-config.el -- Stuff related to writing longform text
;;; Commentary:
;;; Code:

(use-package markdown-mode)

(use-package org
  :config
  (require 'ox-md)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((shell . t)
     (ruby . t)
     (haskell . t))))

(use-package darkroom)

(provide 'writing-config)
;;; writing-config.el ends here
