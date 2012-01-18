;; 
(defvar default-snippet-directory "~/emacs/lisp/snippets/")
 
(defun snippet-create-snippet-from-region (snippet-name)
  (interactive
   "sSnippet Name: ")
  (let ((save-directory default-directory)
	(default-directory default-snippet-directory))
    (let ((snippet-string (buffer-substring (point) (mark)))
	  (snippet-directory (expand-file-name (read-directory-name "Directory: ")))
	  )
      (make-directory snippet-directory t)
      (write-region snippet-string t
		    (replace-in-string (concat snippet-directory "\\" snippet-name ".snp")
				       "\\\\\\\\" "\\"))
        
      )
    (setq default-directory save-directory)))
 
 
(defun snippet-insert-snippet()
  (interactive)
  (let ((save-directory default-directory)
	(default-directory default-snippet-directory))
    (let ((snippet-buffer (find-file-noselect (read-file-name "Snippet:"))))
      (insert-buffer snippet-buffer)
      (kill-buffer snippet-buffer)
      )
    (setq default-directory save-directory))
  )
  
 
(defvar default-script-directory "~/emacs/lisp/snippets/")
 
(defun snippet-create-script-from-region (snippet-name) (interactive))


(defun snippet-edit-snippet ()
  (interactive)
  (let* ((save-directory default-directory)
	 (default-directory default-script-directory)
	 (snippet-file (expand-file-name (read-file-name "Snippet:" default-script-directory t)))
	 (default-directory save-directory))
    (find-file snippet-file))
  )
 

(defun snippet-run-perl-script ()
  (interactive)
  (save-excursion
    (let* (
	   (save-directory default-directory)
	   (default-directory default-script-directory)
	   (script-file (expand-file-name (read-file-name "Script:" )))
	   (default-directory save-directory)
	   (script-path (file-name-directory script-file))
	   (script-path script-file)
	   (perl-command (concat "perl -w -I" script-path " "))
	   ;; (zmacs-region-stays nil)
	   )
      (cond ((string-equal mode-name "Dired")
	     ;; pass the list of dired marked files to the perl script
	     (shell-command (concat perl-command script-file "&")))
	    ((not mark-active)
	     (shell-command-on-region (point-min) (point-max) (concat perl-command script-file) t t "*Command Error*"))
	    (t
	     (shell-command-on-region (point) (mark) (concat perl-command script-file) t t "*Command Error*")))
      )))

 

(defun perldb-eval-expr-in-region()
  (interactive)
  (save-excursion
    (let ((expr (buffer-substring (point)(mark))))
      ;; goto end of debug window
      (switch-to-buffer-other-window (concat "*perldb-" (buffer-name) "*"))
      (insert-string expr)
      )  
    )
  )

(defun perldb-eval-expr-at-point()
  (interactive)  
  )

