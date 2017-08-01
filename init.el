;; require dotsecret files
;; Wire everything to dotemacs.org

;;;; From: https://github.com/wasamasa/dotemacs/blob/master/init.el
;; from wasamasa

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(defmacro with-timer (&rest forms)
  "Run the given FORMS, counting and displaying the elapsed time."
  (declare (indent 0))
  (let ((nowvar (make-symbol "now"))
        (body `(progn ,@forms)))
    `(let ((,nowvar (current-time)))
       (prog1 ,body
         (let ((elapsed (float-time (time-subtract (current-time) ,nowvar))))
           (when (> elapsed 0.001)
             (message "spent (%.3fs)" elapsed)))))))

;; From: https://github.com/wasamasa/dotemacs/blob/master/init.el
;; see http://endlessparentheses.com/init-org-Without-org-mode.html
(let (errors)
  (with-temp-buffer
    (insert-file "~/.emacs.d/init.org")
    (goto-char (point-min))		; set point to beg of buffer
    (search-forward "\n* Init")
    (while (not (eobp))
      (forward-line 1)
      (cond
       ;; skip headers marked as TODO
       ((looking-at "^\\(\\*+\\) TODO +.*$")
        (search-forward (format "\n%s " (match-string 1))))
       ;; report headers
       ((looking-at "\\*\\{2,3\\} +.*$")
        (message "%s" (match-string 0)))
       ;; evaluate code blocks
       ((looking-at "^#\\+BEGIN_SRC +emacs-lisp.*$")
        (let (src-beg src-end)
          (condition-case error
              (progn
                (setq src-beg (match-end 0))
                (search-forward "\n#+END_SRC")
                (setq src-end (match-beginning 0))
                (with-timer (eval-region src-beg src-end)))
            (error
             (push (format "%s for:\n%s\n\n---\n"
                           (error-message-string error)
                           (buffer-substring src-beg src-end))
                   errors)))))
       ;; finish on the next level-1 header
       ((looking-at "^\\* ")
        (goto-char (point-max))))))
  (when errors
    (with-current-buffer (get-buffer-create "*init errors*")
      (insert (format "%i error(s) found\n\n" (length errors)))
      (dolist (error (nreverse errors))
        (insert error "\n"))
      (goto-char (point-min))
      (special-mode))
    (setq initial-buffer-choice (lambda () (get-buffer "*init errors*")))))

(put 'narrow-to-region 'disabled nil)

;; =============================================================================
;; Add Secret Files
;; =============================================================================

;; Add dotsecret .el files to path (do not need trailing '/')
(add-to-list 'load-path "/Volumes/dotsecret")
(add-to-list 'load-path "~/.emacs.d/lisp")

;; External Lisp Packages
(require 'idomenu)

(require 'init-irc)			; For IRC Connection/Authentication
(require 'init-gnus)			; For Email Authentication
(require 'init-org)			; My Personal Calendar, etc...

