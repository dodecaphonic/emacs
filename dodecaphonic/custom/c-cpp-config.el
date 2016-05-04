;; sets c-mode formatting to my taste
(defun my-c-mode-common-hook ()
  (setq c-basic-offset 8)
  (setq cua-auto-tabify-rectangles nil)
  ;;(setq c-macro-prompt-flag t)
  (define-key c-mode-base-map "\C-m" 'c-context-line-break)
  (define-key c-mode-base-map "\C-o" 'c-context-open-line)
  (smart-tabs-advice c-indent-line c-basic-offset)
  (smart-tabs-advice c-indent-region c-basic-offset))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(provide 'c-cpp-config)
