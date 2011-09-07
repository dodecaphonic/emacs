;; Fullscreen, baby
(defun fullscreen (&optional f)
      (interactive)
      (set-frame-parameter f 'fullscreen
                           (if (frame-parameter f 'fullscreen)
                               nil
                             'fullboth)))
(global-set-key [f11] 'fullscreen)

(defun set-frame-size-according-to-resolution ()
  (interactive)
  (if window-system
  (progn
    ;; use 120 char wide window for largeish displays
    ;; and smaller 80 column windows for smaller displays
    ;; pick whatever numbers make sense for you
    (if (> (x-display-pixel-width) 1280)
           (add-to-list 'default-frame-alist (cons 'width 120))
           (add-to-list 'default-frame-alist (cons 'width 80)))
    ;; for the height, subtract a couple hundred pixels
    ;; from the screen height (for panels, menubars and
    ;; whatnot), then divide by the height of a char to
    ;; get the height we want
    (add-to-list 'default-frame-alist 
         (cons 'height (/ (- (x-display-pixel-height) 200)
                             (frame-char-height)))))))

(defun insert-standard-date ()
    "Inserts standard date time string." 
    (interactive)
    (insert (format-time-string "%c")))

(defun insert-heading-underline (graphic)
  "Inserts heading underline for a string using a given graphic."
  (interactive "P")
  (let ((num-chars (- (point-at-eol) (point-at-bol))))
    (move-end-of-line 1)
    (insert "\n")
    (let ((underline-char (if (null graphic) ?=
                            (string-to-char (symbol-name graphic)))))
      (insert (make-string num-chars underline-char))))
      (insert "\n\n"))

;; In Darwin, please use PATH from .profile/.bashrc
;; From: http://stackoverflow.com/questions/5543989/pylint-not-working-with-emacs-gui-on-os-x-works-from-command-line
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string
                           "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq exec-path (split-string path-from-shell path-separator))))

