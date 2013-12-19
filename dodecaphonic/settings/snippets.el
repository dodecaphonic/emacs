(setq yas-snippet-dirs
      (list
        (expand-file-name "dodecaphonic/snippets" user-emacs-directory)
        (expand-file-name "vendor/yasnippet/snippets" user-emacs-directory)))

(yas-global-mode 1)
