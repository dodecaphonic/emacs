;; Using whitespace-mode to visualize line length
;; From: http://emacsredux.com/blog/2013/05/31/highlight-lines-that-exceed-a-certain-length-limit/
(require 'whitespace)

(defun programming-custom()
  "Defaults for all children of prog-mode."
  (setq whitespace-line-column 80) ;; limit line length
  (setq whitespace-style '(face lines-tail))
  (setq show-trailing-whitespace t)
  (local-set-key (kbd "C-c =") 'dodecaphonic/align=)
  (local-set-key (kbd "C-c /") 'comment-region)
  (add-hook 'local-write-file-hooks
            '(lambda()
               (save-excursion
                 (untabify (point-min) (point-max))
                 (delete-trailing-whitespace)))))

(add-hook 'prog-mode-hook 'programming-custom)
