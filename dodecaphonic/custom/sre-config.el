;;; sre-config.el --- SRE-related stuff, like terraform, ansible, etc
;;; Commentary:
;;; Code:

(use-package terraform-mode)

(use-package company-terraform
  :after 'terraform-mode)

(provide 'sre-config)
;;; sre-config.el ends here
