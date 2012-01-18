
;; CPerl Mode
(defmacro join (join-char &rest others) `(mapconcat 'identity ',others ,join-char))

(defun my-cperl-customizations ()
  "cperl-mode customizations that must be done after cperl-mode loads"
  (outline-minor-mode)
  (abbrev-mode)
  
  (defun cperl-outline-level ()
    (looking-at outline-regexp)
    (let ((match (match-string 1)))
      (cond
       ((eq match "=head1" ) 1)
       ((eq match "package") 2)
       ((eq match "=head2" ) 3)
       ((eq match "=item"  ) 4)
       ((eq match "sub"    ) 5)
       (t 7)
       )))

  ;; 
  (setq my-cperl-outline-regexp
	(concat
	 "^"				; Start of line
	 "[ \\t]*"			; Skip leading whitespace
	 "\\("				; begin capture group \1
	 (join "\\|"
	       "=head[12]"		; POD header
	       "package"		; package
	       "=item"			; POD item
	       "sub"			; subroutine definition
	       )
	 "\\)"				; end capture group \1
	 "\\b"				; Word boundary
	 ))

  (setq cperl-outline-regexp  my-cperl-outline-regexp)
  (setq outline-regexp        cperl-outline-regexp)
  (setq outline-level        'cperl-outline-level)
  (setq cperl-invalid-face (quote off))	;; Disable whitespace underlining
  (setq cperl-electric-keywords t) ;;  keyword expansion
 
  ;;(setq cperl-hairy t) ;; cperl-hairy sets the following variables to t:
  (setq cperl-font-lock t) ;; Non-nil (and non-null) means CPerl buffers will use font-lock-mode.
  (setq cperl-electric-lbrace-space t) ;; Non-nil (and non-null) means { after $ should be preceded by ` '.
  (setq cperl-electric-parens t) ;; Non-nil (and non-null) means parentheses should be electric in CPerl.
  (setq cperl-electric-linefeed t) ;; If true, LFD should be hairy in CPerl, otherwise C-c LFD is hairy.
  (setq cperl-electric-keywords t) ;; Not-nil (and non-null) means keywords are electric in CPerl.
  (setq cperl-info-on-command-no-prompt t) ;; Not-nil (and non-null) means not to prompt on C-h f.
  (setq cperl-clobber-lisp-bindings t) ;; Not-nil (and non-null) means not overwrite C-h f.
  ;; (setq cperl-lazy-help-time t)		;; Not-nil (and non-null) means to show lazy help after given idle time.
  ;; End set-by-cperl-hairy


  ;; (setq cperl-auto-newline t)		;; Automatically add newlines before and after braces, colons, and semicolons
  ;; CPerlModeOutlineMode (taken from emacswiki)
					; Outline-minor-mode key map
  (define-prefix-command 'cm-map nil "Outline-")
					; HIDE
  (define-key cm-map "q" 'hide-sublevels) ; Hide everything but the top-level headings
  (define-key cm-map "t" 'hide-body) ; Hide everything but headings (all body lines)
  (define-key cm-map "o" 'hide-other)	; Hide other branches
  (define-key cm-map "c" 'hide-entry)	; Hide this entry's body
  (define-key cm-map "l" 'hide-leaves) ; Hide body lines in this entry and sub-entries
  (define-key cm-map "d" 'hide-subtree)	; Hide everything in this entry and sub-entries
					; SHOW
  (define-key cm-map "a" 'show-all)	; Show (expand) everything
  (define-key cm-map "e" 'show-entry)	; Show this heading's body
  (define-key cm-map "i" 'show-children) ; Show this heading's immediate child sub-headings
  (define-key cm-map "k" 'show-branches) ; Show all sub-headings under this heading
  (define-key cm-map "s" 'show-subtree)	; Show (expand) everything in this heading & below
					; MOVE
  (define-key cm-map "u" 'outline-up-heading) ; Up
  (define-key cm-map "n" 'outline-next-visible-heading)	; Next
  (define-key cm-map "p" 'outline-previous-visible-heading) ; Previous
  (define-key cm-map "f" 'outline-forward-same-level) ; Forward - same level
  (define-key cm-map "b" 'outline-backward-same-level) ; Backward - same level
  (global-set-key "\M-o" cm-map)
  )
;; End CPerl Mode
