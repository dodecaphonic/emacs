(defadvice color-theme-solarized-dark (after rr-fix-faces activate) 
    ;; Code here gets executed after the theme has been applied. 
    ;; Customize your faces here.

  (custom-set-faces
   '(default ((t
               (:inherit nil
                         :stipple nil
                         :background "#0C1021"
                         :foreground "#F8F8F8"
                         :inverse-video nil
                         :box nil
                         :strike-through nil
                         :overline nil
                         :underline nil
                         :slant normal
                         :weight normal
                         :height 180
                         :width normal
                         :foundry "apple"
                         :family "Inconsolata"))))))
