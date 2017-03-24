;;; dionysos-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "dionysos-fs-mode" "dionysos-fs-mode.el" (22740
;;;;;;  43646 0 0))
;;; Generated autoloads from dionysos-fs-mode.el

(autoload 'dionysos-fs-list "dionysos-fs-mode" "\
Show music files in `DIRECTORY'.

\(fn DIRECTORY)" t nil)

;;;***

;;;### (autoloads nil "dionysos-mpd-mode" "dionysos-mpd-mode.el"
;;;;;;  (22740 43646 0 0))
;;; Generated autoloads from dionysos-mpd-mode.el

(autoload 'dionysos-mpd-playlist "dionysos-mpd-mode" "\
Show music files from MPD playlist.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "dionysos-version" "dionysos-version.el" (22740
;;;;;;  43646 0 0))
;;; Generated autoloads from dionysos-version.el

(autoload 'dionysos-version "dionysos-version" "\
Get the dionysos version as string.
If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.
The returned string includes both, the version from package.el
and the library version, if both a present and different.
If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

;;;***

;;;### (autoloads nil nil ("dionysos-backend-mpd.el" "dionysos-backend-mplayer.el"
;;;;;;  "dionysos-backend-vlc.el" "dionysos-backend.el" "dionysos-custom.el"
;;;;;;  "dionysos-io.el" "dionysos-mode.el" "dionysos-notify.el"
;;;;;;  "dionysos-pkg.el" "dionysos-process.el" "dionysos-ui.el"
;;;;;;  "dionysos-volume.el" "dionysos.el") (22740 43646 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; dionysos-autoloads.el ends here
