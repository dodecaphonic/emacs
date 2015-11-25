(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(add-to-list
         'comint-preoutput-filter-functions
         (lambda (output)
           (replace-regexp-in-string "\033\\[[0-9]+[GJK]" "" output)))

(set-exec-path-from-shell-PATH)
(setq shell-command-switch "-ic")

(when (and window-system (eq system-type 'darwin))
  (setq system-uses-terminfo nil))
