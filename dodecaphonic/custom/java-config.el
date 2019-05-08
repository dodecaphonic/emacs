;;; java-config.el -- Programming Java in Emacs
;;; Commentary:
;;; Code:

(defun dodecaphonic-java-mode-hook ()
  "Configure Java editing preferences."
  (setq c-basic-offset 4)
  (require 'dap-java))

(add-hook 'java-mode-hook #'dodecaphonic-java-mode-hook)

(use-package lsp-java
  :config
  (setq lombok-jar-path (expand-file-name "~/hacking/lombok/lombok-1.18.6.jar"))
  (setq lsp-java-vmargs `(
                          , (concat "-javaagent:" lombok-jar-path)
                          , (concat "-Xbootclasspath/a:" lombok-jar-path)
                            ))
  (add-hook 'java-mode-hook #'lsp))

(provide 'java-config)

;;; java-config.el ends here
