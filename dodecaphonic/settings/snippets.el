(yas/load-directory
 (expand-file-name "dodecaphonic/snippets" user-emacs-directory))

(yas/global-mode)

(setq yas-prompt-functions '(yas/ido-prompt))
