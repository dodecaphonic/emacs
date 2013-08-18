(setq backup-directory-alist
      (list (cons "." (expand-file-name "backup" (concat emacs-root ".emacs.d")))))

(setq-default indent-tabs-mode nil)
(setq require-final-newline t)
(global-auto-revert-mode t)

(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)
