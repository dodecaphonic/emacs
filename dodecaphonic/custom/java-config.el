;;; java-config.el -- Programming Java in Emacs
;;; Commentary:
;;; Code:

(defun dodecaphonic-java-mode-hook ()
  "Configure Java editing preferences."
  (setq c-basic-offset 4)
  (smart-tabs-advice c-indent-line c-basic-offset)
  (smart-tabs-advice c-indent-region c-basic-offset))

(add-hook 'java-mode-hook #'dodecaphonic-java-mode-hook)

(use-package lsp-java
  :ensure t :after lsp
  :config
  (setq lombok-jar-path (expand-file-name "~/hacking/lombok/lombok-1.18.6.jar"))
  (setq lsp-java-vmargs `(
                          , (concat "-javaagent:" lombok-jar-path)
                          , (concat "-Xbootclasspath/a:" lombok-jar-path)
                            ))
  (add-hook 'java-mode-hook #'lsp))

;; (use-package dap-java :after (lsp-java))

(use-package maven-test-mode)

(provide 'java-config)

;;; java-config.el ends here
