(defun font-lock-replace-symbol (mode reg sym)
  (font-lock-add-keywords
   mode `((,reg
           (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                     ,sym 'decompose-region)))))))
