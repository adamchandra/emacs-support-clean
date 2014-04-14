;;; unicode-progress-reporter-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (unicode-progress-reporter-setup unicode-progress-reporter-type
;;;;;;  unicode-progress-reporter unicode-progress-reporter-redefine-spinner)
;;;;;;  "unicode-progress-reporter" "unicode-progress-reporter.el"
;;;;;;  (21151 41703))
;;; Generated autoloads from unicode-progress-reporter.el

(autoload 'unicode-progress-reporter-redefine-spinner "unicode-progress-reporter" "\
Set `progress-reporter--pulse-characters'.

SYMBOL is a symbol to set to VALUE.

VALUE should be a key in `unicode-progress-reporter-pulse-characters'.

\(fn SYMBOL VALUE)" nil nil)

(let ((loads (get 'unicode-progress-reporter 'custom-loads))) (if (member '"unicode-progress-reporter" loads) nil (put 'unicode-progress-reporter 'custom-loads (cons '"unicode-progress-reporter" loads))))

(defvar unicode-progress-reporter-type "Horizontal Blocks" "\
Type of spinner characters to use for progress-reporter.")

(custom-autoload 'unicode-progress-reporter-type "unicode-progress-reporter" nil)

(autoload 'unicode-progress-reporter-setup "unicode-progress-reporter" "\
Set up unicode spinners for progress-reporter.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("unicode-progress-reporter-pkg.el") (21151
;;;;;;  41703 211940))

;;;***

(provide 'unicode-progress-reporter-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; unicode-progress-reporter-autoloads.el ends here
