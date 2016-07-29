(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setq-default indent-tabs-mode nil)
(setq require-final-newline t)
(global-auto-revert-mode t)

(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
