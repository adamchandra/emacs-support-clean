;;; unicode-enbox-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (unicode-enbox unicode-enbox-debox unicode-enbox-unicode-display-p
;;;;;;  unicode-enbox) "unicode-enbox" "unicode-enbox.el" (21151
;;;;;;  41704))
;;; Generated autoloads from unicode-enbox.el

(let ((loads (get 'unicode-enbox 'custom-loads))) (if (member '"unicode-enbox" loads) nil (put 'unicode-enbox 'custom-loads (cons '"unicode-enbox" loads))))

(autoload 'unicode-enbox-unicode-display-p "unicode-enbox" "\
Return t if the current display supports unicode box characters.

\(fn)" nil nil)

(autoload 'unicode-enbox-debox "unicode-enbox" "\
Remove box drawing from the border of STR-VAL.

Unless optional FORCE is set, do not attempt to debox unless
`unicode-enbox' was previously run on STR-VAL.  This is detected
by means of the text property `unicode-enbox-type', or falls
back to `unicode-enbox-default-type'.

Optional BOX-TYPE overrides the `unicode-enbox-type' text property
or default type.

\(fn STR-VAL &optional FORCE BOX-TYPE)" nil nil)

(autoload 'unicode-enbox "unicode-enbox" "\
Return multi-line STR-VAL enclosed in a box.

Unicode line-drawing characters are used if possible.  When
optional UNICODE-ONLY is set, boxing is only performed when
Unicode line-drawing characters are available on the current
display.

Optional SIDE-MODE defaults to 'smart, but can be set to 'append
or 'overwrite to control whether side box characters overwrite
content or append/prepend to it.

Optional TOP-MODE defaults to 'smart, but can be set to 'append
or 'overwrite to control whether top/bottom box characters
overwrite content or append/prepend to it.

Unless optional FORCE is set, do not attempt to debox unless
`unicode-enbox' was previously run on STR-VAL.  This is detected
by means of the text property `unicode-enbox-type'.

Optional BOX-TYPE overrides the `unicode-enbox-default-type'
customizable variable, which defaults to \"Standard\".

The text property `unicode-enbox-type' will be set on the return
value to match BOX-TYPE.

\(fn STR-VAL &optional UNICODE-ONLY SIDE-MODE TOP-MODE FORCE BOX-TYPE)" nil nil)

;;;***

;;;### (autoloads nil nil ("unicode-enbox-pkg.el") (21151 41704 526348))

;;;***

(provide 'unicode-enbox-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; unicode-enbox-autoloads.el ends here
