(require 'cedet)
(require 'jde)
;; (require 'jde-eclipse-compiler-server)
(autoload 'jde-mode "jde" "JDE mode." t)
(setq auto-mode-alist
      (append
       '(("\\.java$" . jde-mode))
       auto-mode-alist))

;; Sets the basic indentation for Java source files
;; to two spaces.
(defun my-jde-mode-hook ()
  (interactive)
  (setq indent-tabs-mode t)
  (c-add-style "my-java" 
               '((c-basic-offset . 8)
                 (c-comment-only-line-offset 0 . 0)
                 (indent-tabs-mode             . t)
                 (c-offsets-alist
                  (arglist-close             c-no-indent-after-java-annotations c-lineup-arglist)																			;;   The solo close paren of an argument list.
                  (arglist-cont              c-lineup-gcc-asm-reg 0)																																		;;   Subsequent argument list lines when no arguments follow on the same line as the arglist opening paren.
                  (arglist-cont-nonempty     c-lineup-gcc-asm-reg c-lineup-arglist)																										;;   Subsequent argument list lines when at least one argument follows on the same line as the arglist opening paren.
                  (arglist-intro 			      c-single-indent-after-java-annotations c-lineup-arglist-intro-after-paren)								;;   The first line in an argument list.
                  (comment-intro 			      c-lineup-knr-region-comment c-lineup-comment)																							;;   A line containing only a comment introduction.
                  (cpp-define-intro          c-lineup-cpp-define +)																																		;;   The start of a C preprocessor macro definition.
                  (statement-cont						c-no-indent-after-java-annotations +)																											;;   Lines continuing a stream operator construct.
                  (topmost-intro-cont				c-no-indent-after-java-annotations +)
                  (template-args-cont				c-lineup-template-args +)																																	;;   The first line in a topmost construct definition.
                  ;; (fun											+) ;; c-decl-cont c-no-indent-after-java-annotations c-lineup-java-throws)		          				;;   The construct is nested inside a class definition.                          Used together with e.g. `topmost-intro'.
                  ;; (obj											+) ;; c-method-call-cont c-lineup-ObjC-method-call-colons c-lineup-ObjC-method-call +);;   The first line of an Objective-C method definition.

                  (access-label          . 0)                            ;;   C++ private/protected/public access label.
                  (block-close           . 0)                            ;;   Statement block close brace.
                  (block-open            . 0)                            ;;   Statement block open brace.
                  (brace-entry-open      . 0)                            ;;   Subsequent lines in an enum or static array list that start with an open brace.
                  (brace-list-close      . 0)                            ;;   Close brace of an enum or static array list.
                  (brace-list-entry      . 0)                            ;;   Subsequent lines in an enum or static array list.
                  (brace-list-intro      . +)                            ;;   First line in an enum or static array list.
                  (brace-list-open       . 0)                            ;;   Open brace of an enum or static array list.
                  (c                     . c-lineup-C-comments)          ;;   Inside a multi-line C style block comment.
                  (case-label            . 0)                            ;;   A "case" or "default" label.
                  (catch-clause          . 0)                            ;;   The "catch" or "finally" of a try/catch construct.
                  (class-close           . 0)                            ;;   Brace that closes a class definition.
                  (class-open            . 0)                            ;;   Brace that opens a class definition.
                  (composition-close     . 0)                            ;;  
                  (composition-open      . 0)                            ;;  
                  (cpp-macro             . [0])                          ;;   Inside a multi-line C preprocessor macro definition.
                  (cpp-macro-cont        . +)                            ;;   The first line in a top-level defun.
                  (defun-block-intro     . +)                            ;;   Brace that closes a function definition.
                  (defun-close           . 0)                            ;;   Brace that opens a function definition.
                  (defun-open            . 0)                            ;;   The "while" that ends a do/while construct.
                  (do-while-closure      . 0)                            ;;   The "else" of an if/else construct.
                  (else-clause           . 0)                            ;;   Brace that closes an "extern" block.
                  (extern-lang-close     . 0)                            ;;   Brace that opens an "extern" block.
                  (extern-lang-open      . 0)                            ;;   A C++ friend declaration.
                  (friend                . 0)                            ;;   The region between a function definition's argument list and the function opening brace (excluding K&R argument declarations).  In C, you cannot put anything but whitespace and comments between them; in C++ and Java, throws declarations and other things can appear in this context.
                  (inclass               . +)                            ;;   Similar to the three `extern-lang' symbols, but for CORBA CIDL "composition" blocks.
                  (incomposition         . +)                            ;;   The class is inside an expression.  Used e.g. for Java anonymous classes.
                  (inexpr-class          . +)                            ;;   The statement is inside an expression.
                  (inexpr-statement      . +)                            ;;   Analogous to the `inclass' syntactic symbol,                          but used inside "extern" blocks.
                  (inextern-lang         . +)                            ;;   Subsequent multiple inheritance lines.
                  (inher-cont            . c-lineup-java-inher)          ;;   First line of a multiple inheritance list.
                  (inher-intro           . +)                            ;;   In the header or body of a lambda function.
                  (inlambda              . c-lineup-inexpr-block)        ;;   Brace that closes an in-class inline method.
                  (inline-close          . 0)                            ;;   Brace that opens an in-class inline method.
                  (inline-open           . 0)                            ;;   Similar to the three `extern-lang' symbols, but for CORBA IDL "module" blocks.
                  (inmodule              . +)                            ;;   Similar to the three `extern-lang' symbols, but for C++ "namespace" blocks.
                  (innamespace           . +)                            ;;   Subsequent lines in a K&R C argument declaration.
                  (knr-argdecl           . 0)                            ;;   First line of a K&R C argument declaration.
                  (knr-argdecl-intro     . 5)                            ;;   Any ordinary label.
                  (label                 . +)                            ;;   Continuation of the header of a lambda function.
                  (lambda-intro-cont     . +)                            ;;   Subsequent member initialization list lines.
                  (member-init-cont      . c-lineup-multi-inher)         ;;   First line in a member initialization list.
                  (member-init-intro     . +)                            ;;  
                  (module-close          . 0)                            ;;  
                  (module-open           . 0)                            ;;  
                  (namespace-close       . 0)                            ;;  
                  (namespace-open        . 0)                            ;;   Lines continuing an Objective-C method definition.
                  (objc-method-args-cont . c-lineup-ObjC-method-args)    ;;   Lines continuing an Objective-C method call.
                  (objc-method-intro     . [0])                          ;;   A C (or like) statement.
                  (statement             . 0)                            ;;   The first line in a new statement block.
                  (statement-block-intro . *)                            ;;   The first line in a case "block".
                  (statement-case-intro  . *)                            ;;   The first line in a case block starting with brace.
                  (statement-case-open   . *)                            ;;   A continuation of a C (or like) statement.
                  (stream-op             . c-lineup-streamop)            ;;   Inside multi-line string.
                  (string                . c-lineup-dont-change)         ;;   The first line after an if/while/for/do/else.
                  (substatement          . +)                            ;;   Labelled line after an if/while/for/do/else.
                  (substatement-label    . +)                            ;;   The brace that opens a substatement block.
                  (substatement-open     . +)                            ;;   C++ template argument list continuations.
                  (topmost-intro         . 0)                            ;;   Topmost definition continuation lines.
                  )))
  (c-set-style "my-java" t)
  (message "custom jde-hook executed"))


(add-hook 'jde-mode-hook 'my-jde-mode-hook)

(defun setup-java-flymake() 
  (interactive)
  (require 'flymake)
  (require 'compile)

  (setq flymake-allowed-file-name-masks                  
        (cons '("\\.java$" 
                jde-ecj-server-flymake-init 
                jde-ecj-flymake-cleanup)
              flymake-allowed-file-name-masks))

  (setq flymake-log-level                             2) ; -1=off, 3=most verbose, writes to *Messages*
  ;; (setq flymake-buildfile-dirs                     nil) ; A list of directories (relative paths) for searching a buildfile. See Locating the buildfile.
  ;; (setq flymake-master-file-dirs                   nil) ; A list of directories for searching a master file. See Locating a master file.
  ;; (setq flymake-get-project-include-dirs-function  nil) ; A function used for obtaining a list of project include dirs (C/C++ specific). See Getting the include directories.
  ;; (setq flymake-master-file-count-limit            nil) ;
  ;; (setq flymake-check-file-limit                   nil) ; Used when looking for a master file. See Locating a master file.
  ;; (setq flymake-err-line-patterns                  nil) ; Patterns for error/warning messages in the form (regexp file-idx line-idx err-text-idx). See Parsing the output.
  ;; (setq flymake-err-line-patterns (cons '("^\\(.*\\)(\\([0-9]+\\)): col: \\([0-9]+\\) Error: \\(.*\\)$" 1 2 3 4) flymake-err-line-patterns))
  ;; (setq flymake-compilation-prevents-syntax-check  nil) ; A flag indicating whether compilation and syntax check of the same file cannot be run simultaneously.
  ;; (setq flymake-no-changes-timeout                 nil) ; If any changes are made to the buffer, syntax check is automatically started after flymake-no-changes-timeout seconds.
  ;; (setq flymake-gui-warnings-enabled               nil) ; A boolean flag indicating whether Flymake will show message boxes for non-recoverable errors. If flymake-gui-warnings-enabled is nil, these errors will only be logged to the *Messages* buffer.
  ;; (setq flymake-start-syntax-check-on-newline      nil) ; A boolean flag indicating whether to start syntax check after a newline character is added to the buffer.
  ;; (setq flymake-errline-face                       nil) ; A custom face for highlighting lines for which at least one error has been reported.
  ;; (setq flymake-warnline-face                      nil) ; A custom face for highlighting lines for which at least one warning and no errors have been reported. 

  ;; Find error messages in flex compiler output:
  ;; (push '("^\\(.*\\)(\\([0-9]+\\)): col: \\([0-9]+\\) Error: \\(.*\\)$" 1 2 3 2) compilation-error-regexp-alist)
  )

;; Setup Emacs to run bash as its primary shell.
;; (setq shell-file-name "bash")
;; (setq shell-command-switch "-c")
;; (setq explicit-shell-file-name shell-file-name)
;; (setenv "SHELL" shell-file-name)
;; (setq explicit-sh-args '("-login" "-i"))

;; (defconst apache-java-style
;;   '("apache-java"
;; 		(c-basic-offset . 8)
;;     (c-comment-only-line-offset 0 . 0)
;;     (indent-tabs-mode             . nil)
;;     (c-offsets-alist
;; 		 (arglist-close         . c-lineup-arglist)
;; 		 (arglist-cont-nonempty . +)
;; 		 (arglist-intro         . +)
;; 		 (brace-list-intro      . *)
;; 		 (c                     . c-lineup-C-comments)
;; 		 (comment-intro         . c-lineup-comment)
;; 		 (cpp-macro-cont        . c-lineup-dont-change)
;; 		 (defun-block-intro     . *)
;; 		 (func-decl-cont        . c-lineup-java-throws)
;; 		 (inclass               . *)
;; 		 (inexpr-class          . *)
;; 		 (inextern-lang         . *)
;; 		 (inher-intro           . +)
;; 		 (inher-cont            . c-lineup-java-inher)
;; 		 (inher-intro           . +)
;; 		 (inlambda              . c-lineup-inexpr-block)
;; 		 (inline-open           . 0)
;; 		 (innamespace           . *)
;; 		 (knr-argdecl-intro     . *)
;; 		 (topmost-intro-cont    . +)
;; 		 (label                 . 2)
;; 		 (lambda-intro-cont     . *)
;; 		 (member-init-cont      . c-lineup-multi-inher)
;; 		 (member-init-intro     . *)
;; 		 (objc-method-args-cont . c-lineup-ObjC-method-args)
;; 		 (objc-method-call-cont . c-lineup-ObjC-method-call)
;; 		 (statement-block-intro . *)
;; 		 (statement-case-intro  . *)
;; 		 (statement-case-open   . *)
;; 		 (statement-cont        . +)
;; 		 (stream-op             . c-lineup-streamop)
;; 		 (string                . c-lineup-dont-change)
;; 		 (substatement          . *)
;; 		 (substatement-open     0 nil)
;; 		 (template-args-cont    . (c-lineup-template-args *))
;; 		 )))
;; 
;; (defconst basic-java-style
;; 	'("basic-java"
;; 		(c-basic-offset . 2)
;; 		(indent-tabs-mode . t)
;; 		(tab-width . 2)
;; 		(c-comment-only-line-offset . (0 . 0))
;; 		;; the following preserves Javadoc starter lines
;; 		(c-offsets-alist  
;; 		 (inline-open . 0)
;; 		 (topmost-intro-cont    . +)
;; 		 (statement-block-intro . +)
;; 		 (knr-argdecl-intro     . 5)
;; 		 (substatement-open     . +)
;; 		 (substatement-label    . +)
;; 		 (label                 . +)
;; 		 (statement-case-open   . +)
;; 		 (statement-cont        . +)
;; 		 (arglist-intro  . c-lineup-arglist-intro-after-paren)
;; 		 (arglist-close  . c-lineup-arglist)
;; 		 (access-label   . 0)
;; 		 (inher-cont     . c-lineup-java-inher)
;; 		 (func-decl-cont . c-lineup-java-throws)
;; 		 )))








































