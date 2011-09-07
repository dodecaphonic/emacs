(autoload 'markdown-mode "markdown-mode.el"
       "Major mode for editing Markdown files" t)
(setq auto-mode-alist
      (cons '("\\.md$" . markdown-mode) auto-mode-alist))

(defun insert-markdown-header-date ()
  (interactive)
  (insert (format-time-string "%b %d, %Y")))

(defun markdown-header-date ()
  (format-time-string "%b %d, %Y"))
