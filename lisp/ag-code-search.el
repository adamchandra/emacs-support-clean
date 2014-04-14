;; Code Search functions

;; (setq *csearch-index-dir* "/home/saunders/projects/the-kitchen/var/run/cindex/")
;; (setq *csearch-index* "/home/saunders/projects/the-kitchen/var/run/cindex/.cindex-data")

;; Todo: look into eev mode
(defun cs/path (pathre codere)
  (interactive "sPath RE: \nMCode RE: ")
  (compilation-start 
   (concat "csearch -n -f '" pathre "' '" codere "'")
   'grep-mode
   )
  )

(defun cs/ext (pathre codere)
  (interactive "sPath RE: \nMCode RE: ")
  (compilation-start 
   (concat "csearch -n -f '\." pathre "$' '" codere "'")
   'grep-mode
   )
  )



;; (defun symbol-string-at-point ()
;;   (interactive)
;;   (let* ((bounds (bounds-of-thing-at-point 'symbol))
;; 
;;          (thing-string (buffer-substring (car bounds) (cdr bounds))))
;;     (message thing-string)
;;     thing-string)
;;   )

(defun symbol-string-at-point ()
  (interactive)
  (let* ((bounds (bounds-of-thing-at-point 'symbol)))
    (if bounds
        (let ((thing-string (buffer-substring (car bounds) (cdr bounds))))
          (message thing-string)
          thing-string))))



;; (defun csearch-def (codere)
;;   (interactive
;;    (let ((default-sym (symbol-string-at-point)))
;;      (list 
;;       (read-string "def> " default-sym))))
;; 
;;   (let ((compilation-environment (list 
;;                                   (concat "CSEARCHINDEX=" *csearch-index*))))
;;     (compilation-start 
;;      (concat "csearch -n -f '.*\.scala$' 'def\\s+" codere "[\\s(:[]'")
;;      'grep-mode
;;      )))





;; (defun csearch-occur (codere)
;;   (interactive
;;    (let ((default-sym (symbol-string-at-point)))
;;      (list 
;;       (read-string "occurs> " default-sym))))
;; 
;;   (let ((compilation-environment (list 
;;                                   (concat "CSEARCHINDEX=" *csearch-index*))))
;;     (compilation-start 
;;      (concat "csearch -n -f '.*\.scala$' '\\W" codere "\\W'")
;;      'grep-mode
;;      )))

;; (defun csearch-class (codere)
;;   (interactive
;;    (let ((default-sym (symbol-string-at-point)))
;;      (list 
;;       (read-string "class> " default-sym))))
;; 
;;   (let ((compilation-environment (list 
;;                                   (concat "CSEARCHINDEX=" *csearch-index*))))
;;     (compilation-start 
;;      (concat "csearch -n -f '.*\.scala$' '(class|trait|object)\\s+" codere "[\\s([]'")
;;      'grep-mode
;;      )))

;; (defun code-search (command-args)
;;   (interactive
;;    (progn
;;      (let ((default "csearch"))
;;        (list (read-shell-command "Run code-search (like this): "
;;                                  (if current-prefix-arg default "csearch")
;;                                  'grep-history
;;                                  (if current-prefix-arg nil default))))))
;; 
;;   ;; Setting process-setup-function makes exit-message-function work
;;   ;; even when async processes aren't supported.
;;   (compilation-start (if (and grep-use-null-device null-device)
;;                          (concat command-args " " null-device)
;;                        command-args)
;;                      'grep-mode))
;; 
;; (defun compilation-start (command &optional mode name-function highlight-regexp)
;;   "Run compilation command COMMAND (low level interface).
;; If COMMAND starts with a cd command, that becomes the `default-directory'.
;; The rest of the arguments are optional; for them, nil means use the default.
;; 
;; MODE is the major mode to set in the compilation buffer.  Mode
;; may also be t meaning use `compilation-shell-minor-mode' under `comint-mode'.
;; 
;; If NAME-FUNCTION is non-nil, call it with one argument (the mode name)
;; to determine the buffer name.  Otherwise, the default is to
;; reuses the current buffer if it has the proper major mode,
;; else use or create a buffer with name based on the major mode.
;; 
;; If HIGHLIGHT-REGEXP is non-nil, `next-error' will temporarily highlight
;; the matching section of the visited source line; the default is to use the
;; global value of `compilation-highlight-regexp'.


(defun eproject-grep-symbol (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "def> " default-sym))))
  (eproject-grep codere))


;; from eproject-extras.el
;; (defun eproject-grep (regexp)
;;   "Search all files in the current project for REGEXP."
;;   (interactive "sRegexp grep: ")
;;   (let* ((root (eproject-root))
;;          (default-directory root)
;;          (files (eproject-list-project-files-relative root)))
;;     (grep-compute-defaults)
;;     (lgrep regexp (combine-and-quote-strings files) root)))


   

(defun ag-search-def (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "def> " default-sym))))

  (let ()
    (compilation-start 
     (concat "ag --noheading --ignore '*---' -G 'scala$' 'def\\h+" codere "[\\h(:[]' /home/saunders/projects/the-livingroom/dvcs-mirrors/")
     'grep-mode
     )))

(defun ag-search-occur (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "occur> " default-sym))))

  (let ()
    (compilation-start 
     (concat "ag --noheading --ignore '*---' -G 'scala$' '\\W" codere "\\W' /home/saunders/projects/the-livingroom/dvcs-mirrors/")
     'grep-mode
     )))


(defun ag-search-class (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "class> " default-sym))))

  (let ()
    (compilation-start 
     (concat "ag --noheading --ignore '*---' -G '(java|scala)$' '(type|class|trait|object)\\h+" codere "[\\s([]'  /home/saunders/projects/the-livingroom/dvcs-mirrors/")
     'grep-mode
     )))
