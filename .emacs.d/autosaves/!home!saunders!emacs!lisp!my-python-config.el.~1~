(require 'python)
(require 'ipython)

; (add-hook 'python-mode-hook
; 	  (lambda ()
; 	    (eldoc-mode 0)
; 	    (setq outline-regexp "def\\|class ")))

(defcustom py-python-command "python"
  "*Shell command used to start Python interpreter."
  :type 'string
  :group 'python)

(defun python-documentation (w)
  "Launch PyDOC on the Word at Point"
  (interactive
   (list (let* ((word (thing-at-point 'word))
		(input (read-string 
			(format "pydoc entry%s: " 
				(if (not word) "" (format " (default %s)" word))))))
	   (if (string= input "") 
	       (if (not word) (error "No pydoc args given")
		 word)			;sinon word
	     input))))			;sinon input
  (shell-command (concat py-python-command " -c \"from pydoc import help;help(\'" w "\')\"") "*PYDOCS*")
  (view-buffer-other-window "*PYDOCS*" t 'kill-buffer-and-window))

;; adapted from pychecker for pylint
(defun my-python-hook ()
  (interactive)
  (require 'ipython)
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  (load-library "flymake-cursor.el")

  (setq ipython-completion-command-string "print(';'.join(__IP.Completer.all_completions('%s')))\n")
  ;; Automatically save project python buffers before refactorings
  (setq ropemacs-confirm-saving 'nil)
  (defun pylint ()
    "Run pylint against the file behind the current buffer after
    checking if unsaved buffers should be saved."

    (interactive)
    (let* ((file (buffer-file-name (current-buffer)))
	   (command (concat "pylint --output-format=parseable \"" file "\"")))
      (save-some-buffers (not compilation-ask-about-save) nil) ; save  files.
      (compile-internal command "No more errors or warnings" "pylint")))

  (local-set-key [f1] 'pylint)
  (local-set-key [f2] 'previous-error)
  (local-set-key [f3] 'next-error)
  (local-set-key [(meta return)] 'rope-goto-definition)
  (local-set-key [f7] 'flymake-mode)
  (local-set-key [(shift f7)] 'flymake-display-err-menu-for-current-line)
  )

(defun my-python-hook-minimal ())

(add-hook 'python-mode-hook 'my-python-hook-minimal)

(when (load "flymake" t)
  (defun flymake-pylint-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
		       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "epylint" (list local-file))))
    
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pylint-init)))


; This is a function which simplifies the insertion of debugging print
; statements in a python program.

(defun pyp (expr)
  "Insert a print statement as the next statement of the program.
   Include the name of the enclosing function or and accept from
   the minibuffer the expresion to be printed. The form of the
   statement to be entered and indented is:
      print 'function: expr =', expr"
  (interactive "sExpression to be printed: ")
  (save-excursion
    (py-beginning-of-def-or-class)
    (re-search-forward "[ ]*def[ ]+\\(\\w+\\)\\W")
    (setq pyp-funct (buffer-substring (match-beginning 1) (match-end 1))))
  (end-of-line)
  (newline)
  (insert "print '" pyp-funct ": " expr " =', " expr)
  (indent-for-tab-command))

;; The emacs function, ppy, will go to the end of the current line and
;; insert two new lines containing "print 'function: pretty printing
;; variable '" and "pp.pprint(variable)". The variable is picked up
;; from the minibuffer following the prompt.

(defun ppy (variable)
  "Insert statements following the next statements of the program which
   will pretty print the variable. Note that this is a variable and not
   an expression."
  (interactive "sVariable to be printed: ")
  (save-excursion
    (py-beginning-of-def-or-class)
    (re-search-forward "[ ]*def[ ]+\\(\\w+\\)\\W")
    (setq pyp-funct (buffer-substring (match-beginning 1) (match-end 1))))
  (end-of-line)
  (newline)
  (insert "print '" pyp-funct ": pretty printing " variable "'")
  (indent-for-tab-command)
  (newline)
  (insert "pp.pprint(" variable ")")
  (indent-for-tab-command)
  )

;; For the previous function, ppy, to generate working code it is
;; necessary to have the proper import statements at the top of the
;; module. To get them, go to a correct spot and execute the following
;; function.

(defun ppyi ()
  "Insert the code necessary to import pprint and create the necessary
   PrettyPrinter object at the current point."
  (interactive)
  (newline)
  (insert "import pprint")
  (indent-for-tab-command)
  (newline)
  (insert "pp = pprint.PrettyPrinter()")
  (indent-for-tab-command)
  )
