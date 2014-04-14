(defun escape-squote(str)
  (string-match "'" str)
  (replace-match "\\\'" t t  str))


(defun describe-face-at-point ()
  "Describe face at point."
  (interactive)
  (describe-face (get-face-at-point)))

(defun customize-face-at ()
  "Customize face at point."
  (interactive)
  (customize-face (get-face-at-point)))

(defun get-face-at-point ()
  "Determine face at point using `get-char-property'.  
If char at point has no face property, examine the text on the same line
as point as well."
  (let ((face (get-char-property (point) 'face)))
    (unless face
      (let ((start (point)))
	(while (null (or (setq face (get-char-property (point) 'face))
			 (eolp)))
	  (forward-char 1))))
    (unless face
      (let ((start (point)))
	(while (null (or (setq face (get-char-property (point) 'face))
			 (bolp)))
	  (forward-char -1))))
    (unless face
      (error "No face selected."))
    (if (listp face)
	(setq face (car face)))
    face))


(defun kill-whitespace-in-region()
  (interactive)
  (let* ((start (min (point) (mark)))
	 (end (max (point) (mark)))
	 (charcount (- end start)))
    (goto-char start)
    (while 
	(> charcount 0)
      (cond ((member (char-after) (list ?\t ?\ ))
	     (delete-char 1))
	    (t (forward-char)))
      (setq	 charcount (1- charcount))
      )))


 
(defun kill-Ms ()
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "")
      (replace-match ""))))


(defun make-one-liner ()
  (interactive)
  (let* ((start (min (point) (mark)))
	 (linecount (count-lines (point) (mark))))
    (goto-char start)
    (while 
	(> linecount 0)
      (end-of-line)
      (delete-char 1)
      (setq linecount (1- linecount)))
    (beginning-of-line)))

(defun kill-superfluous-buffers()
  (interactive)
  (mapcar '(lambda(buffer)
	   (let ((blength (length (buffer-name buffer)))
		 (bstring (buffer-name buffer))
		 )
	     (if (and 
		  (string-equal (substring bstring 0 1) "*")
		  (string-equal (substring bstring (- blength 1) blength) "*"))
		 (kill-buffer buffer)))
	   )
	 (buffer-list)))
	 

(defun kill-current-buffer ()
  (interactive)
  (kill-buffer (current-buffer)))

(defun kill-current-buffer-and-window ()
  (interactive)
  (kill-buffer (current-buffer))
  (delete-window))


;;(defun www-stl-toc ()
;;  (interactive)
;;  (w3m-browse-url "http://www.sgi.com/tech/stl/table_of_contents.html"))

;; %S/%M/%H (sec/min/hour-mil) %l(hour) %p(am/pm) %d(day of month) %B (month) %Y (year) %Z (time zone) %A (day name) %j (day of year) %U (week of year)
(defun insert-date ()
  (interactive)
  (insert (format-time-string "%A %B %d, %Y")))

(defun insert-time ()
  (interactive)
  (insert (format-time-string "%l:%M%p")))

(defun insert-datestamp ()
  (interactive)
  (insert (format-time-string "[%D]")))

;; (defun journal-section-header ()
;;   (interactive)
;;   (insert "==== ")
;;   (insert-date)
;;   (insert " @")
;;   (insert-time)
;;   (insert " ===="))
;; 
;; (defun journal-subsection-header ()
;;   (interactive)
;;   (insert "  == @")
;;   (insert-time))


(defun journal-section-header ()
  (interactive)
  (insert "* ==== ")
  (org-time-stamp-inactive)
  (insert " ===="))

(defun journal-subsection-header ()
  (interactive)
  (insert "*** == ")
  (org-time-stamp-inactive t)
  (insert " =="))




(defun bracket-text (left right)
  (interactive "sLeft delim:\nsRight delim:")
  (delete-trailing-whitespace)
  (save-excursion
    (let* ((start (min (point) (mark)))
           (linecount (count-lines (point) (mark)))
           (ldelim (if left left "'"))
           (rdelim (if right right "'")))
      (goto-char start)
      (while 
          (> linecount 0)
        (beginning-of-line)
        (re-search-forward "^[ \t]*")
        (replace-match ldelim)
        (end-of-line)
        (re-search-backward "[ \t]*$")
        (replace-match rdelim)
        (forward-line)
        (setq linecount (1- linecount))
        ))))




(defun ask-before-killing-buffer ()
  (interactive)
  (defun ask-before-kill-buffer (buffer)
    (not (and (equal (current-buffer) buffer)
              (not (y-or-n-p 
                    "This buffer is protected. Really kill? ")))))
  (let 
      ((fn (apply-partially 'ask-before-kill-buffer (current-buffer))))
    (add-to-list 'kill-buffer-query-functions fn)))


(defun table-align-imports ()
  (interactive)
  (table-capture (point) (mark) ;; (table-capture BEG END 
                 "[[:space:]]"  ;;  &optional COL-DELIM-REGEXP 
                 "\n"           ;;  ROW-DELIM-REGEXP 
                 "left"         ;;  JUSTIFY 
                 1              ;;  MIN-CELL-WIDTH 
                 )              ;;  COLUMNS)
  ;;(replace-regexp REGEXP TO-STRING &optional DELIMITED START END)
  ;; (table-release)
)







(defun zoom-in ()
  "Increase font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (+ (face-attribute 'default :height)
                         10)))

(defun zoom-out ()
  "Decrease font size by 10 points"
  (interactive)
  (set-face-attribute 'default nil
                      :height
                      (- (face-attribute 'default :height)
                         10)))


;;  Copied here to hack it a bit: don't want filename expansion to stop at '-' chars.
;;   (defun minibuffer-complete-word ()
;;     "Complete the minibuffer contents at most a single word.
;;    After one word is completed as much as possible, a space or hyphen
;;    is added, provided that matches some possible completion.
;;    Return nil if there is no valid completion, else t."
;;     (interactive)
;;     (let* ((buffer-string (buffer-string))
;;   	 (completion (try-completion buffer-string
;;   				     minibuffer-completion-table
;;   				     minibuffer-completion-predicate))
;;   	 (status (minibuffer-do-completion-1 buffer-string completion)))
;;       (cond ((eq status 'none)
;;   	   (ding nil 'no-completion)
;;   	   (temp-minibuffer-message " [No match]")
;;   	   nil)
;;   	  ((eq status 'unique)
;;   	   ;; New message, only in this new Lisp code
;;   	   (temp-minibuffer-message " [Sole completion]")
;;   	   t)
;;   	  (t
;;   	   (cond ((or (eq status 'uncompleted)
;;   		      (eq status 'exact))
;;   		  (let ((foo #'(lambda (s)
;;    				 (condition-case nil
;;    				     (if (try-completion
;;    					  (concat buffer-string s)
;;    					  minibuffer-completion-table
;;    					  minibuffer-completion-predicate)
;;    					 (progn
;;    					   (goto-char (point-max))
;;    					   (insert s)
;;    					   t)
;;   				       nil)
;;   				   (error nil))))
;;   			(char last-command-char))
;;   		    ;; Try to complete by adding a word-delimiter
;;   		    (or (and (characterp char) (> char 0)
;;   			     (funcall foo (char-to-string char)))
;;   			(and (not (eq char ?\ ))
;;   			     (funcall foo " "))
;;    			(and (not (eq char ?\-))
;;   			     (funcall foo "-"))
;;   			(progn
;;   			  (if completion-auto-help
;;   			      (minibuffer-completion-help)
;;   			    ;; New message, only in this new Lisp code
;;    			    ;; rewritten for I18N3 snarfing
;;    			    (if (eq status 'exact)
;;    				(temp-minibuffer-message
;;    				 " [Complete, but not unique]")
;;    			      (temp-minibuffer-message " [Ambiguous]")))
;;   			  nil))))
;;   		 (t
;;   		  (erase-buffer)
;;   		  (insert completion)
;;    
;;    		  ;; this is hacked out to expand '-' chars in filenames without stopping at each one
;;   		  ;; First word-break in stuff found by completion
;;                      ;;;;(goto-char (point-min))
;;                      ;;;;(let ((len (length buffer-string))
;;                      ;;;;      n)
;;                      ;;;;  (if (and (< len (length completion))
;;                      ;;;;           (catch 'match
;;                      ;;;;             (setq n 0)
;;                      ;;;;             (while (< n len)
;;                      ;;;;               (if (char-equal
;;                      ;;;;                     (upcase (aref buffer-string n))
;;                      ;;;;                     (upcase (aref completion n)))
;;                      ;;;;                   (setq n (1+ n))
;;                      ;;;;                   (throw 'match nil)))
;;                      ;;;;             t)
;;                      ;;;;           (progn
;;                      ;;;;             (goto-char (point-min))
;;                      ;;;;             (forward-char len)
;;                      ;;;;             (re-search-forward "\\W" nil t)))
;;                      ;;;;      (delete-region (point) (point-max)) 
;;                      ;;;;      (goto-char (point-max))))
;;    		  
;;   		  t))))))
;;    

;; this is another (possible) way to accomplish the '-' expansion hack above
;; (modify-syntax-entry ?\- "w " completion-list-mode-syntax-table)


