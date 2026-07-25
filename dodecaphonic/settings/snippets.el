(setq yas-snippet-dirs
      (list
        (expand-file-name "dodecaphonic/snippets" user-emacs-directory)
        (expand-file-name "vendor/yasnippet/snippets" user-emacs-directory)))

(add-hook 'after-init-hook (lambda () (yas-global-mode 1)))
