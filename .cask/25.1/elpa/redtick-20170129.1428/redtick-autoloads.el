;;; redtick-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "redtick" "redtick.el" (22740 43595 0 0))
;;; Generated autoloads from redtick.el

(defvar redtick-mode nil "\
Non-nil if Redtick mode is enabled.
See the `redtick-mode' command
for a description of this minor mode.")

(custom-autoload 'redtick-mode "redtick" nil)

(autoload 'redtick-mode "redtick" "\
Little pomodoro timer in the mode-line.

\(fn &optional ARG)" t nil)

(autoload 'redtick "redtick" "\
Enable minor-mode, and start the pomodoro.

\(fn)" t nil)

(autoload 'redtick-with-description "redtick" "\
Ask for DESCRIPTION, enable minor-mode, and start the pomodoro.

\(fn DESCRIPTION)" t nil)

;;;***

;;;### (autoloads nil nil ("redtick-pkg.el") (22740 43595 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; redtick-autoloads.el ends here
