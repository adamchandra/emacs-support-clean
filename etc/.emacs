(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(auto-install-directory "~/emacs/auto-install-lisp")
 '(auto-install-install-confirm t)
 '(auto-install-replace-confirm t)
 '(bmkp-last-as-first-bookmark-file "~/emacs/bookmarks/index.bmk")
 '(bookmark-default-file "~/emacs/bookmarks/index.bmk")
 '(bookmark-save-flag 1)
 '(bookmark-version-control t)
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(dired-details-hide-link-targets nil)
 '(dired-details-initially-hide nil)
 '(dired-listing-switches "-ABl")
 '(face-font-family-alternatives (quote (("mono" "dejavu" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(face-font-selection-order (quote (:width :height :weight :slant)))
 '(fill-column 100)
 '(focus-follows-mouse nil)
 '(global-font-lock-mode t nil (font-lock))
 '(hippie-expand-try-functions-list (quote (try-expand-all-abbrevs try-expand-list try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill)))
 '(ibuffer-saved-filter-groups nil)
 '(ibuffer-saved-filters (quote (("test-filters" ((or (filename . "perl") (mode . dired-mode)))) ("gnus" ((or (mode . message-mode) (mode . mail-mode) (mode . gnus-group-mode) (mode . gnus-summary-mode) (mode . gnus-article-mode)))) ("programming" ((or (mode . emacs-lisp-mode) (mode . cperl-mode) (mode . c-mode) (mode . java-mode) (mode . idl-mode) (mode . lisp-mode)))))))
 '(icicle-buffers-ido-like-flag t)
 '(icicle-download-dir "~/emacs/site-lisp/icicles")
 '(icicle-saved-completion-sets (quote (("myproj" . "/home/saunders/projects/the-toolshed/emacsen/emacs-support-clean/etc/myproj.icy") ("pstotext-multiview" . "/home/saunders/projects/the-livingroom/rexa2s/rexa2-front-play/pstotext-multiview.icy") ("monitor-proj" . "/home/saunders/projects/the-livingroom/rexa2s/rexa2-front-play/app/monitor-proj.icy") ("monitor" . "/home/saunders/projects/the-livingroom/rexa2s/rexa2-front-play/app/monitor.icy"))))
 '(icomplete-mode nil nil (icomplete))
 '(ido-case-fold t)
 '(indent-tabs-mode t)
 '(jde-build-function (quote (jde-ant-build)))
 '(jde-compiler (quote (("eclipse java compiler server" "/usr/sen/tmp1/saunders/home.local/bin/eclipse-versions/eclipse-SDK-3.4.1-linux-gtk/plugins/org.eclipse.jdt.core_3.4.2.v_883_R34x.jar"))))
 '(jde-debugger (quote ("JDEbug")))
 '(jde-jdk-registry (quote (("1.5.0_06" . "/exp/rcf/share/X11R5/jdk1.5.0_06/"))))
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(mouse-wheel-mode t nil (mwheel))
 '(nxml-child-indent 4)
 '(nxml-outline-child-indent 4)
 '(org-agenda-files (quote ("~/journal.org")))
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN" "MORE")))
 '(org-fontify-done-headline t)
 '(org-fontify-emphasized-text t)
 '(org-hide-leading-stars t)
 '(org-highlight-latex-fragments-and-specials t)
 '(org-modules (quote (org-bbdb org-bibtex org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m)))
 '(org-odd-levels-only t)
 '(org-replace-disputed-keys t)
 '(org-startup-align-all-tables t)
 '(org-startup-folded nil)
 '(sgml-basic-offset 4)
 '(show-paren-mode t nil (paren))
 '(show-paren-style (quote expression))
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-width-console 48)
 '(sr-speedbar-width-x 48)
 '(tab-width 2)
 '(tool-bar-mode nil nil (tool-bar))
 '(transient-mark-mode t)
 '(truncate-lines t)
 '(undo-limit 800000)
 '(undo-strong-limit 2000000)
 '(yas/prompt-functions (quote (yas/ido-prompt yas/dropdown-prompt))))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "Beige" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
 '(bold ((t (:weight extra-bold))))
 '(comint-highlight-prompt ((t (:foreground "light blue"))))
 '(compilation-info ((((class color) (min-colors 16) (background light)) (:foreground "gray" :weight bold))))
 '(cperl-array-face ((t (:foreground "yellow" :weight bold))))
 '(cperl-hash-face ((t (:foreground "lightblue" :slant italic :weight bold))))
 '(cperl-nonoverridable-face ((((class color) (background light)) (:foreground "darkgreen"))))
 '(cursor ((t (:background "white" :foreground "black"))))
 '(diredp-dir-priv ((t (:foreground "DarkRed"))))
 '(diredp-exec-priv ((t (:foreground "green1"))))
 '(diredp-file-name ((t (:foreground "LightBlue"))))
 '(diredp-file-suffix ((t nil)))
 '(diredp-flag-mark ((t (:foreground "Yellow"))))
 '(diredp-flag-mark-line ((t (:foreground "yellow"))))
 '(diredp-no-priv ((t nil)))
 '(diredp-other-priv ((t nil)))
 '(diredp-read-priv ((t nil)))
 '(diredp-write-priv ((t (:foreground "green3"))))
 '(ediff-current-diff-A ((((class color) (min-colors 16)) (:background "grey50" :foreground "yellow"))))
 '(ediff-current-diff-B ((((class color) (min-colors 16)) (:background "grey50" :foreground "yellow"))))
 '(ediff-even-diff-A ((((class color) (min-colors 16)) (:foreground "yellow2"))))
 '(ediff-even-diff-B ((((class color) (min-colors 16)) (:foreground "yellow2"))))
 '(ediff-fine-diff-A ((((class color) (min-colors 16)) (:background "grey40" :foreground "red2"))))
 '(ediff-fine-diff-B ((((class color) (min-colors 16)) (:background "grey40" :foreground "red2"))))
 '(ediff-odd-diff-A ((((class color) (min-colors 16)) (:foreground "yellow2"))))
 '(ediff-odd-diff-B ((((class color) (min-colors 16)) (:foreground "yellow2"))))
 '(fixed-pitch ((t (:family "Bitstream Vera Sans Mono"))))
 '(flymake-errline ((((class color)) (:foreground "red" :box (:line-width 1 :color "red" :style released-button)))))
 '(flymake-warnline ((((class color)) (:underline "yellow"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "SteelBlue"))))
 '(font-lock-comment-face ((t (:foreground "gray70" :slant italic))))
 '(font-lock-constant-face ((t (:foreground "lightgreen"))))
 '(font-lock-doc-face ((t (:foreground "gray70" :slant italic))))
 '(font-lock-function-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow2"))))
 '(font-lock-keyword-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow"))))
 '(font-lock-string-face ((t (:foreground "lightgreen"))))
 '(font-lock-type-face ((((class color) (min-colors 88) (background dark)) (:foreground "LightBlue"))))
 '(font-lock-variable-name-face ((((class color) (min-colors 88) (background dark)) (:foreground "yellow2"))))
 '(global-semantic-idle-completions-mode t nil (semantic-idle))
 '(global-semantic-mru-bookmark-mode t nil (semantic-util-modes))
 '(global-senator-minor-mode t nil (senator))
 '(icicle-search-main-regexp-others ((((background dark)) (:background "#324"))))
 '(inhibit-startup-screen t)
 '(italic ((t (:foreground "Yellow1" :slant italic))))
 '(jde-java-font-lock-link-face ((t (:foreground "yellow" :underline t :slant normal))))
 '(jde-java-font-lock-operator-face ((((class color)) (:foreground "light blue"))))
 '(jde-java-font-lock-package-face ((((class color) (background light)) (:foreground "white"))))
 '(match ((((class color) (min-colors 88) (background light)) (:foreground "red"))))
 '(minibuffer-prompt ((t (:foreground "white"))))
 '(mode-line ((t (:background "blue" :foreground "white" :weight normal))))
 '(mode-line-inactive ((default (:inherit mode-line)) (nil (:background "grey" :foreground "blue"))))
 '(nxml-comment-content-face ((t (:foreground "#228822" :slant italic))))
 '(nxml-delimiter-face ((((class color) (background dark)) (:foreground "gray30"))))
 '(nxml-heading-face ((t (:foreground "yellow3" :weight bold))))
 '(nxml-name-face ((nil (:foreground "#FE99EE"))))
 '(org-agenda-restriction-lock ((((class color) (min-colors 88) (background light)) (:background "yellow"))))
 '(org-agenda-structure ((((class color) (min-colors 88) (background light)) (:foreground "green"))))
 '(org-code ((((class color grayscale) (min-colors 88) (background light)) (:foreground "lightblue"))))
 '(org-drawer ((((class color) (min-colors 88) (background light)) (:foreground "Lightblue"))))
 '(org-hide ((nil (:foreground "grey30"))))
 '(org-level-1 ((nil (:inherit outline-1))))
 '(org-level-2 ((t (:inherit outline-2))))
 '(org-level-3 ((t (:inherit outline-3))))
 '(org-level-4 ((t (:inherit outline-2))))
 '(org-level-5 ((t (:inherit outline-1))))
 '(org-level-6 ((t (:inherit outline-2))))
 '(org-table ((((class color) (min-colors 88) (background light)) (:foreground "lightyellow"))))
 '(outline-1 ((t (:inherit font-lock-function-name-face :foreground "purple"))))
 '(paren-face ((((class color)) (:foreground "gray40"))))
 '(semantic-complete-inline-analyzer-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-complete-inline-analyzer-idle-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-idle-scheduler-verbose-flag t)
 '(semantic-imenu-sort-bucket-function (quote semantic-sort-tags-by-name-increasing))
 '(semanticdb-global-mode t nil (semanticdb))
 '(show-paren-match ((((class color) (background dark)) (:background "gray15"))))
 '(show-paren-mode t)
 '(w3m-anchor-face ((((class color) (background light)) (:foreground "yellow"))))
 '(w3m-arrived-anchor-face ((((class color) (background light)) (:foreground "yellow3"))))
 '(w3m-header-line-location-content-face ((((class color) (background light)) (:box (:line-width 2 :color "grey75" :style released-button)))))
 '(w3m-header-line-location-title-face ((((class color) (background light)) (:box (:line-width 2 :color "grey75" :style released-button))))))

;; Common lisp
(eval-when-compile
  (require 'cl))
;; (require 'cl)


(defconst *home-emacs-support* (expand-file-name "~/emacs/"))
(defconst *emacs-root*
      (cond
			 ((file-directory-p *home-emacs-support*) *home-emacs-support*)
			 (t nil)))

(defconst *site-lisp* (expand-file-name (concat *emacs-root* "site-lisp/")))
(defconst *bookmark-dir* (expand-file-name (concat *emacs-root* "bookmarks/")))
(defconst *orgfile-dir* (expand-file-name "~/projects/the-library/project-planning/org-files/"))


(defconst *full-elisp-available* (not (null *emacs-root*)))

(defun assorted-customizations()
  (interactive)
  (require 'tramp)
  (setq tramp-default-method "scp")
  ;; (setq tramp-default-method "mosh")

  ;; 23.2 specific customizations:
  (setq font-use-system-font t)
  (setq tab-always-indent 'complete)

  ;; end 23.2 specific customizations:

  (setq semantic-load-turn-useful-things-on t)
  ;; (partial-completion-mode)
  (setq-default indent-tabs-mode nil)
  (setq dired-use-ls-dired nil)
  (setq c-basic-offset 2)
  (defvar c-tab-always-indent nil)
  (setq-default case-fold-search nil)
  (defvar default-major-mode 'text-mode)
  (set-variable 'tab-width 2)

  ;; Enable some default-disabled commands
  (put 'narrow-to-region 'disabled nil)
  (put 'downcase-region 'disabled nil)
  (put 'upcase-region 'disabled nil)

  (setq
   find-file-compare-truenames t
   minibuffer-confirm-incomplete t
   minibuffer-max-depth nil
   )

  ;; pending-delete-mode causes typed text to replace a selection, rather than append 
  (pending-delete-mode t)

  (setq dired-no-confirm '(byte-compile chgrp chmod chown compress copy delete hardlink load
                                        move print shell symlink uncompress recursive-delete kill-file-buffer
                                        kill-dired-buffer patch create-top-dir revert-subdirs))
  
  (setq backup-by-copying t 
        backup-directory-alist '(("." . "~/.emacs.d/autosaves/"))
        delete-old-versions t
        kept-new-versions 6
        kept-old-versions 2
        version-control t)

  (defvar cperl-mode-hook)
  (defalias 'perl-mode 'cperl-mode)
  (setq cperl-mode-hook 'my-cperl-customizations)
  ;; reinstate the older space-completion for files
  (cond 
   ((boundp 'minibuffer-local-filename-completion-map)
    (define-key minibuffer-local-filename-completion-map [(?\ )] 'minibuffer-complete)))

  (setq remember-annotation-functions '(org-remember-annotation))
  (setq remember-handler-functions '(org-remember-handler))
  (add-hook 'remember-mode-hook 'org-remember-apply-template)
  (icomplete-mode 1)
  )

(defun sudo-edit (&optional arg)
  (interactive "p")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:" (ido-read-file-name "File: ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))


; browse-url-firefox-arguments
; browse-url-new-window-flag
; browse-url-firefox-new-window-is-tab


(defun browse-url-chrome (url &rest args)
  (interactive (browse-url-interactive-arg "URL: "))
  (let ((browse-url-browser-function 'browse-url-generic)
        (browse-url-generic-program "google-chrome")
        (browse-url-generic-args '("--enable-user-stylesheet")))
    (apply #'browse-url url args)))

(setq browse-url-browser-function 'browse-url-chrome)


(defun browse-url-default-browser (url &rest args)
  (apply
   (cond
    ('browse-url-chrome)
    ;; ((executable-find browse-url-mozilla-program) 'browse-url-mozilla)
    (t
     (lambda (&rest ignore) (error "No usable browser found"))))
   url args))

(defun my-keys()
  (interactive)
  (mapc 'global-unset-key
        '([(control ?x) (control ?c)] ;; was save-buffers-kill-emacs
          [(control ?z)]
          [(control next)]
          [(meta ?/)]))

  (defun setkey (key-fn) 
    (global-set-key 
     (car key-fn) 
     (cadr key-fn)))


  (defun set-key-local (keydef) 
    (let ((key-binding (car keydef))
          (fun (cadr keydef))
          (mode-hook (caddr keydef)))
      (add-hook mode-hook
                '(lambda ()
                   (local-set-key key-binding fun)))))


  (mapc 'setkey
        '(
          ([(control ?c) (control ?m) ] execute-extended-command)
          ([(control ?c) (?m)         ] execute-extended-command)
          ([(control ?x) (control ?m) ] execute-extended-command)
          ([(control ?x) (m)          ] execute-extended-command)
          ([(meta ?\ )                ] execute-extended-command)
          ([(control ?c) (control ?k) ] kill-region)
          ([(meta ?w)                 ] kill-ring-save)

          ;; change font size, interactively
          ([(control ?=)              ] zoom-in)
          ([(control ?-)              ] zoom-out)

          ;; 
          ([(meta ?a)                 ] backward-char)
          ;; ([(meta ?s)                 ] kill-ring-save)
          ([(meta ?d)                 ] forward-char)

          ([(control ?y)              ] yank)
          ([(control ?w)              ] backward-kill-word)
          ([(control ?x) (control ?k) ] kill-region)
          ([(control ?!)              ] delete-window)
          ([(control ?1)              ] delete-other-windows)
          ([(control ?2)              ] split-window-horizontally)
          ([(control ?3)              ] split-window-vertically)
          ([(control ?4)              ] ediff-buffers)
          ([(control ?7)              ] ido-switch-buffer)
          ([(control ?8)              ] ibuffer)

          ([(control ?*)              ] icicle-buffer)

          ([(control ?9)              ] bs-cycle-previous)
          ([(control ?0)              ] bs-cycle-next)
          ([(control ?\))             ] (lambda() (interactive) (other-window 1)))
          ([(control ?\()             ] (lambda() (interactive) (other-window -1)))
          ([(control meta ?0)         ] winner-redo)
          ([(control meta ?9)         ] winner-undo)
          ([(control kp-subtract)     ] delete-window)
          ([(meta ?\\)                ] kill-current-buffer)
          ([(meta ?/)                 ] hippie-expand)
          ([(shift kp-subtract)       ] kill-current-buffer-and-window)
          ([(shift right)             ] picture-forward-column)
          ([(shift ?\ )               ] just-one-space)
          ([(meta ?>)                 ] (lambda() (interactive) (find-file-existing (concat *orgfile-dir* "bookmark-index.org"))))
          ([f6                        ] filesets-open)
          ([(meta f6)                 ] filesets-close)
          ([(control XF86Forward)     ] find-grep-dired)
          ;; ([f12                       ] revert-buffer-and-refind-position)
          ([(control tab)             ] sr-speedbar-toggle)
          ([(control ?J)              ] ace-jump-mode)
          ([(control ?H)              ] ace-jump-mode-pop-mark)

          ([(control ?>) (?s) (?o)    ] csearch-occur)
          ([(control ?>) (?s) (?c)    ] csearch-class)
          ([(control ?>) (?s) (?d)    ] csearch-def)

          ([f12                       ] raise-bookmark-buffer)
          
          ))

  ;; mode-specific hooks
	(add-hook 'org-mode-hook
						'(lambda ()
							 (local-set-key [(meta ?.)] 'org-open-at-point)
							 (local-set-key [(meta ?,)] 'org-mark-ring-goto)
							 ))


  )


(defun setup-paths () 
  (interactive)
  (cond 
   (*full-elisp-available*
    (labels ((add-path (p)
		       (add-to-list 'load-path
				    (concat *emacs-root* p))))
      ;; my stuff
      (add-path "lisp")	   
      ;; other people's stuff
      (add-path "site-lisp") 
      ;; auto install stuff
      (add-path "auto-install-lisp")  

      (add-path "site-lisp/bookmark+") 
      (add-path "site-lisp/cc-mode") 
      (add-path "site-lisp/cedet") 
      (add-path "site-lisp/coffee-mode")  
      (add-path "site-lisp/color-theme")
      (add-path "site-lisp/ecb")  
      (add-path "site-lisp/elib")  
      (add-path "site-lisp/ensime/elisp")
      (add-path "site-lisp/filesets")
      (add-path "site-lisp/haskell-mode")
      (add-path "site-lisp/icicles")  
      (add-path "site-lisp/js2-mode")
      (add-path "site-lisp/nxml-mode")  
      (add-path "site-lisp/org-mode/contrib/lisp")  
      (add-path "site-lisp/org-mode/lisp")  
      (add-path "site-lisp/python-mode")  
      (add-path "site-lisp/remember")  
      (add-path "site-lisp/scala-mode")  
      (add-path "site-lisp/jade-mode")  
      (add-path "site-lisp/less-css-mode")  
      (add-path "site-lisp/slime")  
      (add-path "site-lisp/yasnippet")  
      (add-path "site-lisp/color-themes")
      ))
   (t nil)))




(setup-paths)


;; (set-scroll-bar-mode 'left)


(defun common-setup()
  (interactive)
  (global-font-lock-mode t)
  (when (fboundp 'winner-mode)
    (winner-mode 1))

  (cond
   (*full-elisp-available*
		(progn
      (require 'grep+)
      (require 'compile-)
      (require 'compile)
      (require 'compile+)
			(require 'smooth-scrolling)
			(require 'parenface)
			(require 'dired-aux)
			(require 'dired-x)
			(require 'dired+)
			(require 'dired-details)
			(require 'dired-details+)
			(require 'filecache)
			(require 'ido)
			(require 'pabbrev)
			(require 'picture)
			(require 'yaml-mode)
      (require 'icicles)
      (require 'bookmark+)
      (require 'htmlize)
      (require 'coffee-mode)
      (require 'sws-mode)
      (require 'less-css-mode)
      (require 'jade-mode)    
      (require 'js2-mode)
      (require 'auto-install)
      (require 'undo-tree)
      (require 'markdown-mode)

      ;; (defcustom dired-details-hide-link-targets t
      ;; (defcustom dired-details-initially-hide t
      
      (global-undo-tree-mode)

			;; general elisp
			(load-library "my-emisc")

			;; (ido-mode nil)
			(icy-mode nil)
			(filesets-setup)
			(scala-mode-setup)
			(haskell-setup)
			;; (load-file "my-lisp-config")
			;; minor modes first
			(load-library "my-yas")
			(load-library "my-org-mode")
			(load-library "my-python-config")
			(autoload 'nxml-mode "nxml-mode" "Edit XML documents" t)))
   (t nil))
  (add-to-list 'auto-mode-alist '("\\.scala$"  . scala-mode))
  (add-to-list 'auto-mode-alist '("\\.sbt$"    . scala-mode))
  (add-to-list 'auto-mode-alist '("\\.hs$"     . haskell-mode))
  (add-to-list 'auto-mode-alist '("\\.[hg]s$"  . haskell-mode))
  (add-to-list 'auto-mode-alist '("\\.hi$"     . haskell-mode))
  (add-to-list 'auto-mode-alist '("\\.l[hg]s$" . literate-haskell-mode))
  (add-to-list 'auto-mode-alist '("\\.gp$"     . gnuplot-mode))
  (add-to-list 'auto-mode-alist '("\\.ya?ml$"  . yaml-mode))
  (add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
  (add-to-list 'auto-mode-alist '("Cakefile"   . coffee-mode))
  ;; significant whitespace mode
  (add-to-list 'auto-mode-alist '("\\.styl$"   . sws-mode)) 
  ;; sws for yaml-like property files
  (add-to-list 'auto-mode-alist '("\\.(props?|properties)$"   . sws-mode))

  (add-to-list 'auto-mode-alist '("\\.less$"   . less-css-mode))
  (add-to-list 'auto-mode-alist '("\\.jade$"   . jade-mode))
  (add-to-list 'auto-mode-alist '("\\.scaml$"  . jade-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.js$"     . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.js$"     . javascript-mode))
  (add-to-list 'auto-mode-alist '("\\.md"      . markdown-mode))
  (add-to-list 'auto-mode-alist '("\\.\\(xml\\|xsl\\|mxml\\|rng\\|xhtml\\)\\'" . nxml-mode))
  (add-to-list 'auto-mode-alist '("[^/]\\.dired$" . dired-virtual-mode))


  (cond ((eq window-system nil) 
				 ;; Running in a terminal =============
				 (custom-set-faces
					'(mode-line ((t (:background "blue" :foreground "white" :weight bold))))
					'(mode-line-inactive ((default (:inherit mode-line)) (nil (:background "lightblue" :foreground "white"))))
					))
				(t
				 (set-mouse-color "black")
				 (require 'server)
				 (cond ((not (server-running-p))
								(server-start))
							 (t "server already running")))))

;; Assorted mode setups, utility defs
(defun filesets-setup()
  (load-library "filesets+")
  (filesets-init)
  (load-library "filesets-defs")
  )




;; MINI HOWTO: open .scala file. Ensure bin/server.sh is executable. M-x ensime

(defun scala-mode-setup()
  (interactive)
  (require 'ensime)
  ;; (require 'scala-mode-auto)
  (require 'scala-mode)
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  (defvar ensime-scaladoc-stdlib-url-base "http://www.scala-lang.org/api/current")
  (defvar ensime-scaladoc-compiler-url-base "http://www.scala-lang.org/api/current")

  (add-hook 'scala-mode-hook
            '(lambda ()
               (load-library "my-scala-config")
               (yas/minor-mode-on))))

(defun haskell-setup()
  (interactive)
  (load "haskell-site-file")
  (add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
  ;; obsolete: (add-hook 'haskell-mode-hook 'turn-on-haskell-ghci)
  ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
  )

(defun gnuplot-mode-setup()
  (interactive)
  (autoload 'gnuplot-mode "gnuplot" "gnuplot major mode" t)
  (autoload 'gnuplot-make-buffer "gnuplot" "open a buffer in gnuplot mode" t)
  (global-set-key [(f9)] 'gnuplot-make-buffer)
  )


(defun raise-bookmark-buffer()
  (interactive)
  (switch-to-buffer "*Bookmark List*"))
       	       	       	       	       	       	    
(defun flip-to-last-buffer (&optional n)
  (interactive "p")
  (switch-to-buffer (car (cdr (buffer-list)))))

(defun revert-buffer-and-refind-position()
	(interactive)
	(let ((p (point-marker)))
		(revert-buffer t t t)
		(goto-char p)))

(defun my-indent-function ()
  (interactive)
  (cond ((not mark-active)
		 (indent-according-to-mode))
		(t
		 (indent-region (point-marker) (mark-marker)))))

(defun find-kbd-macro-file ()
  (interactive)
  (set-buffer (find-file (concat *emacs-root* "kbd-macros.el"))))

(defun coffee-custom ()
  ;; CoffeeScript uses two spaces.
  (make-local-variable 'tab-width)
  (set 'tab-width 2)

  ;; If you don't want your compiled files to be wrapped
  ;; (setq coffee-args-compile '("-c" "--bare"))

  ;; *Messages* spam
  (setq coffee-debug-mode t)

  ;; Emacs key binding
  (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)

  ;; Compile '.coffee' files on every save
  (and (file-exists-p (buffer-file-name))
       (file-exists-p (coffee-compiled-file-name))
       (coffee-cos-mode t)))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(assorted-customizations)
(common-setup)
(my-keys)

(defun ensime-rpc-symbol-at-point-i ()
  (interactive)
  (ensime-rpc-symbol-at-point))


(defun dired-expand-all-subdirs ()
  (interactive)
  (while 
      (dired-next-dirline 1)
    (point-to-register ?q)
    (dired-maybe-insert-subdir (diredp-this-subdir)) ;; (* DIRNAME &optional SWITCHES NO-ERROR-IF-NOT-DIR-P)
    (register-to-point ?q t) ;; (* reg delete)
    ))



(defun ask-before-killing-buffer ()
  (interactive)
  (defun ask-before-kill-buffer (buffer)
    (not (and (equal (current-buffer) buffer)
              (not (y-or-n-p 
                    "This buffer is protected. Really kill? ")))))
  (let 
      ((fn (apply-partially 'ask-before-kill-buffer (current-buffer))))
    (add-to-list 'kill-buffer-query-functions fn)))


(setq *all-groups*
      '(("default"
         ("scala" (mode . scala-mode))
         ("java"  (mode . java-mode))
         ("dired" (mode . dired-mode))
         ("hs" (mode . haskell-mode))
         ("inf-*" (or
                  (mode . inf-haskell-mode)
                  (name . "^\\*ansi-term\\*$")
                  (name . "^\\*haskell\\*$")
                  ))
         ("markup" (or 
                  (mode . nxml-mode)
                  (mode . org-mode)
                  (mode . markdown-mode)))
         ("js" (or 
                  (mode . coffee-mode)
                  (mode . javascript-mode)
                  (mode . javascript-ide-mode)))
         ("emacs" (mode . emacs-lisp-mode))
         ("*..*" (name . "^\\*.*\\*$"))
         )))

(setq *scala-groups*
      '(("default"
         ("scala" (mode . scala-mode))
         ("journal" (filename . "/project-planning/org-files/"))
         ("emacs" (mode . emacs-lisp-mode))
         ("dired" (mode . dired-mode))
         ("*..*" (name . "^\\*.*\\*$"))
         )))

(setq *haskell-groups*
      '(("default"
         ("hs" (mode . haskell-mode))
         ("ghc*" (or
                  (mode . inf-haskell-mode)
                  (name . "^\\*ansi-term\\*$")
                  (name . "^\\*haskell\\*$")
                  ))
         ("dired" (mode . dired-mode))
         ("*..*" (name . "^\\*.*\\*$"))
         )))

(setq ibuffer-saved-filter-groups *all-groups*)

(add-hook 'ibuffer-mode-hook
          (lambda ()
            ;; Use human readable Size column instead of original one
            (define-ibuffer-column size-h
              (:name "Size" :inline t)
              (cond
               ((> (buffer-size) 1000) (format "%7.3fk" (/ (buffer-size) 1000.0)))
               ((> (buffer-size) 1000000) (format "%7.3fM" (/ (buffer-size) 1000000.0)))
               (t (format "%8d" (buffer-size)))))

            ;; Modify the default ibuffer-formats
            (setq ibuffer-formats
                  '((mark modified read-only " "
                          (name 35 35 :right :elide)
                          " "
                          (size-h 9 -1 :right)
                          " "
                          (mode 16 16 :left :elide)
                          " "
                          filename-and-process)))

            (ibuffer-switch-to-saved-filter-groups "default")

            ))




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





(defun load-cedet () 
  (interactive)
  ;; Load CEDET.
  ;; See cedet/common/cedet.info for configuration details.
  ;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
  ;; CEDET component (including EIEIO) gets activated by another 
  ;; package (Gnus, auth-source, ...).
  (load-file (concat *site-lisp* "cedet/common/cedet.el"))

  ;; Enable EDE (Project Management) features
  (global-ede-mode 1)

  ;; Enable EDE for a pre-existing C++ project
  ;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


  ;; Enabling Semantic (code-parsing, smart completion) features
  ;; Select one of the following:

  ;; * This enables the database and idle reparse engines
  (semantic-load-enable-minimum-features)

  ;; * This enables some tools useful for coding, such as summary mode,
  ;;   imenu support, and the semantic navigator
  (semantic-load-enable-code-helpers)

  ;; * This enables even more coding tools such as intellisense mode,
  ;;   decoration mode, and stickyfunc mode (plus regular code helpers)
  ;; (semantic-load-enable-gaudy-code-helpers)

  ;; * This enables the use of Exuberant ctags if you have it installed.
  ;;   If you use C++ templates or boost, you should NOT enable it.
  ;; (semantic-load-enable-all-exuberent-ctags-support)
  ;;   Or, use one of these two types of support.
  ;;   Add support for new languages only via ctags.
  ;; (semantic-load-enable-primary-exuberent-ctags-support)
  ;;   Add support for using ctags as a backup parser.
  ;; (semantic-load-enable-secondary-exuberent-ctags-support)

  ;; Enable SRecode (Template management) minor-mode.
  ;; (global-srecode-minor-mode 1)

  ;; cedet extensions
  (require 'sr-speedbar)
  ;; (global-set-key (kbd "s-s") 'sr-speedbar-toggle)
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



(defun config-ace-jump-mode ()
  ;;
  ;; ace jump mode major function
  ;; 
  ;; (add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
  (require 'ace-jump-mode)
  (autoload
    'ace-jump-mode
    "ace-jump-mode"
    "Emacs quick move minor mode"
    t)



  ;; 
  ;; enable a more powerful jump back function from ace jump mode
  ;;
  (autoload
    'ace-jump-mode-pop-mark
    "ace-jump-mode"
    "Ace jump back:-)"
    t)

  (eval-after-load "ace-jump-mode"
    '(ace-jump-mode-enable-mark-sync))

  )

(config-ace-jump-mode)



;; Code Search functions


(setq *csearch-index-dir* "/home/saunders/projects/the-kitchen/var/run/cindex/")
(setq *csearch-index* "/home/saunders/projects/the-kitchen/var/run/cindex/.cindex-data")

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



(defun csearch-def (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "def> " default-sym))))

  (let ((compilation-environment (list 
                                  (concat "CSEARCHINDEX=" *csearch-index*))))
    (compilation-start 
     (concat "csearch -n -f '.*\.scala$' 'def\\s+" codere "[\\s(:[]'")
     'grep-mode
     )))


(defun csearch-occur (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "occurs> " default-sym))))

  (let ((compilation-environment (list 
                                  (concat "CSEARCHINDEX=" *csearch-index*))))
    (compilation-start 
     (concat "csearch -n -f '.*\.scala$' '\\W" codere "\\W'")
     'grep-mode
     )))


(defun csearch-class (codere)
  (interactive
   (let ((default-sym (symbol-string-at-point)))
     (list 
      (read-string "class> " default-sym))))

  (let ((compilation-environment (list 
                                  (concat "CSEARCHINDEX=" *csearch-index*))))
    (compilation-start 
     (concat "csearch -n -f '.*\.scala$' '(class|trait|object)\\s+" codere "[\\s([]'")
     'grep-mode
     )))



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



;; grep buffer behavior
(add-to-list 'same-window-buffer-names "*grep*")

(defun kill-grep-window ()
  (destructuring-bind (window major-mode)
      (with-selected-window (next-window (selected-window))
        (list (selected-window) major-mode))
    (when (eq major-mode 'grep-mode)
      (delete-window window))))

(add-hook 'next-error-hook 'kill-grep-window)




(defvar find-file-root-prefix (if (featurep 'xemacs) "/[sudo/root@localhost]" "/sudo:root@localhost:" )
  "*The filename prefix used to open a file with `find-file-root'.")

(defvar find-file-root-history nil
  "History list for files found using `find-file-root'.")

(defvar find-file-root-hook nil
  "Normal hook for functions to run after finding a \"root\" file.")

(defun find-file-root ()
  "*Open a file as the root user.
   Prepends `find-file-root-prefix' to the selected file name so that it
   maybe accessed via the corresponding tramp method."

  (interactive)
  (require 'tramp)
  (let* ( ;; We bind the variable `file-name-history' locally so we can
	 ;; use a separate history list for "root" files.
	 (file-name-history find-file-root-history)
	 (name (or buffer-file-name default-directory))
	 (tramp (and (tramp-tramp-file-p name)
		     (tramp-dissect-file-name name)))
	 path dir file)

    ;; If called from a "root" file, we need to fix up the path.
    (when tramp
      (setq path (tramp-file-name-localname tramp)
	    dir (file-name-directory path)))

    (when (setq file (read-file-name "Find file (UID = 0): " dir path))
      (find-file (concat find-file-root-prefix file))
      ;; If this all succeeded save our new history list.
      (setq find-file-root-history file-name-history)
      ;; allow some user customization
      (run-hooks 'find-file-root-hook))))

(global-set-key [(control x) (control r)] 'find-file-root)

(defface find-file-root-header-face
  '((t (:foreground "white" :background "red3")))
  "*Face use to display header-lines for files opened as root.")

(defun find-file-root-header-warning ()
  "*Display a warning in header line of the current buffer.
   This function is suitable to add to `find-file-root-hook'."
  (let* ((warning "WARNING: EDITING FILE AS ROOT!")
	 (space (+ 6 (- (window-width) (length warning))))
	 (bracket (make-string (/ space 2) ?-))
	 (warning (concat bracket warning bracket)))
    (setq header-line-format
	  (propertize  warning 'face 'find-file-root-header-face))))

(add-hook 'find-file-root-hook 'find-file-root-header-warning)
