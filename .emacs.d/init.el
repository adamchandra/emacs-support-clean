(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-install-directory "~/emacs/auto-install-lisp")
 '(auto-install-install-confirm t)
 '(auto-install-replace-confirm t)
 '(bmkp-last-as-first-bookmark-file "~/emacs/bookmarks/rexa2-bookmarks.bmk")
 '(bookmark-default-file "~/emacs/bookmarks/index.bmk")
 '(bookmark-version-control (quote nospecial))
 '(case-fold-search t)
 '(current-language-environment "Latin-1")
 '(default-input-method "latin-1-prefix")
 '(dired-details-hide-link-targets nil)
 '(dired-details-initially-hide nil)
 '(dired-listing-switches "-ABl")
 '(eclim-accepted-file-regexps (quote ("\\.java" "\\.js" "\\.xml" "\\.rb" "\\.php" "\\.scala")))
 '(eclim-print-debug-messages t)
 '(eproject-completing-read-function (quote eproject--ido-completing-read))
 '(eproject-todo-expressions (quote ("TODO" "XXX" "NOPUSH" "NOCOMMIT" "FIXME")))
 '(face-font-family-alternatives (quote (("mono" "dejavu" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(face-font-selection-order (quote (:width :height :weight :slant)))
 '(filesets-data (quote (("jade-files" (:tree "/home/saunders/projects/the-livingroom/dvcs-mirrors/bitbucket.com/iesl@bitbucket.com/openreview/prj-openreview-front/app/views" "^.+\\.jade$")))))
 '(fill-column 100)
 '(focus-follows-mouse t)
 '(global-font-lock-mode t nil (font-lock))
 '(global-hl-line-mode t)
 '(hippie-expand-try-functions-list (quote (try-expand-all-abbrevs try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill)))
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
 '(jira-url "http://bugs.openreview.net/")
 '(js-indent-level 2)
 '(line-number-mode t)
 '(menu-bar-mode nil)
 '(minibuffer-prompt-properties (quote (read-only t point-entered minibuffer-avoid-prompt face minibuffer-prompt)))
 '(mouse-wheel-mode t nil (mwheel))
 '(nxml-attribute-indent 2)
 '(nxml-child-indent 2)
 '(nxml-outline-child-indent 2)
 '(org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN" "MORE")))
 '(org-fontify-done-headline t)
 '(org-fontify-emphasized-text t)
 '(org-hide-leading-stars t)
 '(org-highlight-latex-fragments-and-specials t)
 '(org-level-color-stars-only t)
 '(org-modules (quote (org-bbdb org-bibtex org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-vm org-wl org-w3m)))
 '(org-odd-levels-only nil)
 '(org-pretty-entities t)
 '(org-replace-disputed-keys t)
 '(org-src-fontify-natively t)
 '(org-startup-align-all-tables t)
 '(org-startup-folded nil)
 '(scala-indent:align-forms t)
 '(scala-indent:align-parameters nil)
 '(sgml-basic-offset 2)
 '(show-paren-mode t nil (paren))
 '(show-paren-style (quote expression))
 '(sml/active-background-color "medium blue")
 '(sml/active-foreground-color "white")
 '(sml/full-mode-string " ...")
 '(sml/hidden-modes (quote ("undo-tree" "SScr" "SScr-mode")))
 '(sml/shorten-directory t)
 '(sr-speedbar-right-side nil)
 '(sr-speedbar-width-console 48)
 '(sr-speedbar-width-x 48)
 '(tab-width 2)
 '(tool-bar-mode nil nil (tool-bar))
 '(transient-mark-mode t)
 '(truncate-lines t)
 '(undo-limit 800000)
 '(undo-strong-limit 2000000)
 '(vline-global-mode nil)
 '(vline-style (quote face))
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
 '(fringe ((t (:background "grey25"))))
 '(global-semantic-idle-completions-mode t nil (semantic-idle))
 '(global-semantic-mru-bookmark-mode t nil (semantic-util-modes))
 '(global-senator-minor-mode t nil (senator))
 '(hl-line ((t (:background "dim gray"))))
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
 '(org-agenda-structure ((((class color) (min-colors 88) (background light)) (:foreground "green")) (t (:foreground "tomato4" :underline t :weight bold))))
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
 '(org-time-grid ((t (:foreground "SlateBlue1"))))
 '(outline-1 ((t (:inherit font-lock-function-name-face :foreground "purple"))))
 '(paren-face ((((class color)) (:foreground "gray40"))))
 '(semantic-complete-inline-analyzer-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-complete-inline-analyzer-idle-displayor-class (quote semantic-displayor-tooltip))
 '(semantic-idle-scheduler-verbose-flag t)
 '(semantic-imenu-sort-bucket-function (quote semantic-sort-tags-by-name-increasing))
 '(semanticdb-global-mode t nil (semanticdb))
 '(show-paren-match ((((class color) (background dark)) (:background "gray15"))))
 '(show-paren-mode t)
 '(sml/filename ((t (:inherit sml/global :foreground "white" :weight bold))))
 '(sml/global ((t (:foreground "yellow"))))
 '(vline ((t (:background "grey30"))))
 '(w3m-anchor-face ((((class color) (background light)) (:foreground "yellow"))))
 '(w3m-arrived-anchor-face ((((class color) (background light)) (:foreground "yellow3"))))
 '(w3m-header-line-location-content-face ((((class color) (background light)) (:box (:line-width 2 :color "grey75" :style released-button)))))
 '(w3m-header-line-location-title-face ((((class color) (background light)) (:box (:line-width 2 :color "grey75" :style released-button))))))






(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
  (add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

  ;; (unless package-archive-contents    ;; Refresh the packages descriptions
  ;;   (package-refresh-contents))
  ;; (setq package-load-list '(all))     ;; List of packages to load
  ;; (unless (package-installed-p 'org)  ;; Make sure the Org package is
  ;;   (package-install 'org))           ;; installed, install it if not
  (package-initialize)                ;; Initialize & Install Package

  )

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
(defconst *orgfile-dir* (expand-file-name "~/projects/the-library/Dropbox/emacs-deft/"))

(setq deft-directory *orgfile-dir*)

(defconst *full-elisp-available* (not (null *emacs-root*)))

(defun assorted-customizations()
  (interactive)
  (require 'tramp)
  (setq tramp-default-method "scpx")
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
  (column-number-mode)
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
          [(control ?c) (control ?m) ] ;; execute-extended-command)
          [(control ?c) (?m)         ] ;; execute-extended-command)
          [(control ?x) (control ?m) ] ;; execute-extended-command)
          [(control ?x) (m)          ] ;; execute-extended-command)
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
          ([(control ?m)              ] newline-and-indent)

          ([(meta ?\ )                ] smex)
          ([(meta control ?\ )        ] smex-major-mode-commands)
          ([(control ?c) (control ?k) ] clipboard-kill-region)
          ([(control ?y)              ] clipboard-yank)
          ([(meta ?w)                 ] kill-ring-save)

          ;; change font size, interactively
          ([(control ?=)              ] zoom-in)
          ([(control ?-)              ] zoom-out)
          ;; 
          ([(control ?f)              ] forward-char)
          ([(control ?d)              ] backward-char)

          ([(control ?y)              ] yank)
          ([(control ?w)              ] backward-kill-word)
          ([(control ?x) (control ?k) ] kill-region)
          ([(control ?!)              ] delete-window)
          ([(control ?1)              ] delete-other-windows)
          ([(control ?2)              ] split-window-horizontally)
          ([(control ?3)              ] split-window-vertically)
          ([(control ?4)              ] ediff-buffers)

          ([(control ?&)              ] dirtree)
          ([(control ?7)              ] eproject-find-file)
          ([(control ?8)              ] ido-switch-buffer)
          ([(control ?*)              ] ibuffer)

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
          ;; ([(control XF86Forward)     ] find-grep-dired)
          ;; ([(control tab)             ] sr-speedbar-toggle)
          ([(control ?J)              ] ace-jump-mode)
          ([(control ?H)              ] ace-jump-mode-pop-mark)

          ([(control ?>) (?s) (?o)    ] ag-search-occur)
          ([(control ?>) (?s) (?c)    ] ag-search-class)
          ([(control ?>) (?s) (?d)    ] ag-search-def)

          ;; basic navigation
          ([(meta j)              ] next-line)
          ([(meta k)              ] previous-line)
          ([(meta h)              ] backward-char)
          ([(meta l)              ] forward-char)
          
          ([f12                       ] raise-bookmark-buffer)
          ([f5                        ] ensime-compile-errors)
          ([f8                        ] deft)
          ([(control f8)              ] org-agenda)
          ([f11                       ] (lambda() (interactive) (ansi-term "/usr/bin/zsh")))
          )))

(my-keys)


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
      (add-path "site-lisp/mtorus") 
      ;; auto install stuff
      (add-path "auto-install-lisp")  
      (add-path "site-lisp/ensime/elisp")
      ))
   (t nil)))

(setup-paths)

(defun common-setup()
  (interactive)
  (global-font-lock-mode t)
  (when (fboundp 'winner-mode)
    (winner-mode 1))

  (cond
   (*full-elisp-available*
		(progn
      (require 'compile-)
      (require 'compile)
      (require 'compile+)
      (require 'grep+)
      (require 'vline)
      (require 'ag)
			; (require 'smooth-scroll)
			; (require 'smooth-scrolling)
			(require 'parenface)
			(require 'redo+)
			; (require 'dired-aux)
			; (require 'dired-x)
			(require 'dired+)
			(require 'dired-details)
			(require 'dired-details+)
			(require 'filecache)
			(require 'ido)
			;; (require 'pabbrev)
			(require 'picture)
			(require 'yaml-mode)
      ;; (require 'icicles)
      (require 'bookmark+)
      (require 'coffee-mode)
      (require 'sws-mode)
      (require 'less-css-mode)
      (require 'jade-mode)    
      (require 'js2-mode)
      (require 'undo-tree)
      (require 'markdown-mode)
      (require 'deft)
      (require 'multifiles)
      (require 'jira)
      ;; 
      (cua-mode t)
      ;; (require 'cua-mode)
      (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
      (transient-mark-mode 1) ;; No region when it is not highlighted
      (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

      (require 'window-number)
      (require 'eproject)
      (require 'eproject-extras)
      ;; (require 'mwe-color-box)

      (require 'windata)
      (require 'tree-mode)
      (require 'dirtree)

      (setq x-select-enable-clipboard t)
      (global-undo-tree-mode)
      (get 'overwrite-mode 'disabled)
      (column-number-mode t)
      (set-scroll-bar-mode 'right)
      ;; (smooth-scroll-mode t)
			;; general elisp
			(load-library "my-emisc")
			(load-library "my-org+deft-mode")
			(load-library "org-life-in-plain-text")
			(load-library "ag-code-search")
			;; (icy-mode nil)
			(filesets-setup)
			(scala-mode-setup)
      (haskell-setup)
			(load-library "my-yas"))
    (autoload 'nxml-mode "nxml-mode" "Edit XML documents" t)
    (t nil)))
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
  (add-to-list 'auto-mode-alist '("\\.xtm$" . extempore-mode))


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


(autoload 'extempore-mode "/home/saunders/projects/the-toolshed/extempore/extras/extempore.el" "" t)

;; ;; Assorted mode setups, utility defs
(defun filesets-setup()
  ;; updated version: 
  ; (require 'filesets-tellib)
  ; (require 'filesets-emacs)
  ; (filesets-install t)
  ;; (filesets-support-ibuffer)
  ;; (filesets-support-dired)
  )


;; scala mode stuff
(global-auto-revert-mode 1)


;; (require 'company)
;; (require 'company-emacs-eclim)
;; (company-emacs-eclim-setup)
;; (global-company-mode t)


(defun scala-mode-setup()
  (interactive)
  (require 'scala-mode2)

  (require 'eclim)
  ;; (global-eclim-mode nil)
  (require 'eclimd)

  (setq help-at-pt-display-when-idle t)
  (setq help-at-pt-timer-delay 0.1)
  (help-at-pt-set-timer)

  (require 'auto-complete-config)
  (ac-config-default)

  ;; add the emacs-eclim source
  (require 'ac-emacs-eclim-source)
  (ac-emacs-eclim-config)

  (defun scala-mode-hook()
    (eclim-mode)
    )
  
  (add-hook 'scala-mode-hook 'scala-mode-hook)
  )


;; ensime version of scala setup
(require 'ensime)
(require 'scala-mode2)

(defun scala-mode-setup()
  (interactive)
  ;; (require 'scala-mode-auto)
  (defun scala-mode-hook()
    )
  
  (add-hook 'scala-mode-hook 'scala-mode-hook)

  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  (defvar ensime-scaladoc-stdlib-url-base "http://www.scala-lang.org/api/current")
  (defvar ensime-scaladoc-compiler-url-base "http://www.scala-lang.org/api/current")

  
  ;;(defun make-example-doc-url (type &optional member)
  ;;  (ensime-make-java-doc-url-helper 
  ;;   "http://developer.example.com/apidocs/" type member))
  
  ;; (add-to-list 
  ;;  'ensime-doc-lookup-map 
  ;;  '("^org\\.apache\\.commons\\.io\\." . 
  ;;    (lambda (type &optional member) (
  ;;                                     (ensime-make-java-doc-url-helper 
  ;;                                      "http://commons.apache.org/proper/commons-io/javadocs/api-release/index.html?" type member))
  ;;      )))
  )

(defun haskell-setup()
  (interactive)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  ;; (add-hook 'haskell-mode-hook 'turn-on-haskell-indent) ; simpler indentation
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation) ; advanced indentation
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

(defun jade-custom ()
  (define-key jade-mode-map [(meta r)] 'coffee-compile-buffer)
  )

(add-hook 'jade-mode-hook '(lambda() (jade-custom)))
;; (remove-hook 'jade-mode-hook '(lambda() (vline-mode nil)))

(assorted-customizations)
(common-setup)

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



(setq *all-groups*
      '(("default"
         ("scala" (mode . scala-mode))
         ("java"  (mode . java-mode))
         ("dired" (mode . dired-mode))
         ("hs"    (mode . haskell-mode))
         ("markup" (or 
                  (mode . nxml-mode)
                  (mode . jade-mode)
                  (mode . sws-mode)
                  (mode . less-mode)
                  (mode . markdown-mode)))
         ("js" (or 
                  (mode . coffee-mode)
                  (mode . js-mode)
                  (mode . js2-mode)
                  (mode . javascript-mode)
                  (mode . javascript-ide-mode)))
         ("emacs" (mode . emacs-lisp-mode))
         ("org" (mode . org-mode))
         ("inf-*" (or
                  (mode . inf-haskell-mode)
                  (name . "^\\*ansi-term\\*$")
                  (name . "^\\*haskell\\*$")
                  ))
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


;; grep buffer behavior
(add-to-list 'same-window-buffer-names "*grep*")
(add-to-list 'same-window-buffer-names "*ag*")
(add-to-list 'same-window-buffer-names "*ack*")

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

;; (global-set-key [(control x) (control r)] 'find-file-root)

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

;; functions for searching up and down directory paths
(defun ensime-sbt-target-dir-p (path)
  "does this path have an sbt target dir?"
  (file-exists-p (concat path "/target" )))

(defun ensime-sbt-at-root (path)
  "Determine if the given path is root."
  (equal path (ensime-sbt-parent-path path)))

(defun ensime-sbt-parent-path (path)
  "The parent path for the given path."
  (file-truename (concat path "/..")))

(defun ensime-sbt-find-path-to-compile-target ()
  "Move up the directory tree for the current buffer
  until root or a directory with a project/build.properties
  is found."
  (interactive)
  (let ((fn (buffer-file-name)))
    (let ((path (file-name-directory fn)))
      (while (and (not (ensime-sbt-target-dir-p path))
                  (not (ensime-sbt-at-root path)))
        (setf path (file-truename (ensime-sbt-parent-path path))))
      (message path)
      path
      )))

(defun ensime-sbt-find-path-to-parent-project ()
  "Search up the directory tree find an SBT project
  dir, then see if it has a parent above it."
  (interactive)
  (let ((path (ensime-sbt-find-path-to-project)))
    (let ((parent-path (file-truename (concat path "/.."))))
      (if (not (ensime-sbt-project-dir-p parent-path))
          path
        parent-path))))

(defun ensime-compile-errors ()
  (interactive)
  (let ( (filename (concat (ensime-sbt-find-path-to-compile-target) "/target/streams/compile/compile/\$global/out"))
         (visit t)
         (beg nil) (end nil)
         (replace t))
    (message filename)
    (if (get-buffer "*ensime-compile-output*")
        (kill-buffer "*ensime-compile-output*"))
    (switch-to-buffer (get-buffer-create "*ensime-compile-output*"))
    (fundamental-mode)
    (insert-file-contents filename visit beg end replace)
    (set-visited-file-name nil)
    (delete-ansi-highlights)
    (grep-mode)
    ))


(defun delete-ansi-highlights (&optional start end)
  "Delete all the trailing whitespace across the current buffer.
   All whitespace after the last non-whitespace character in a line is deleted.
   This respects narrowing, created by \\[narrow-to-region] and friends.
   A formfeed is not considered whitespace by this function.
   If END is nil, also delete all trailing lines at the end of the buffer.
   If the region is active, only delete whitespace within the region."
  (interactive (progn
                 (barf-if-buffer-read-only)
                 (if (use-region-p)
                     (list (region-beginning) (region-end))
                   (list nil nil))))
  (save-match-data
    (save-excursion
      (let ((end-marker (copy-marker (or end (point-max))))
            (start (or start (point-min))))
        (goto-char start)
        (while (re-search-forward "\\[^m]+m" end-marker t)
          (delete-region (match-beginning 0) (match-end 0)))
        (set-marker end-marker nil))))
  
  (save-match-data
    (save-excursion
      (let ((end-marker (copy-marker (or end (point-max))))
            (start (or start (point-min))))
        (goto-char start)
        (while (re-search-forward "^\\[[^\]]+\\][ ]*" end-marker t)
          (delete-region (match-beginning 0) (match-end 0)))
        (set-marker end-marker nil))))
  nil)


;; (autoload 'vc-git-root "vc-git")
;; (autoload 'vc-svn-root "vc-svn")
;; (autoload 'vc-hg-root  "vc-hg")
;; 
;; (defun ag/project-root (file-path)
;;   (interactive "Dag root> ")
;;   "Guess the project root of the given file path."
;;   (or (vc-git-root file-path)
;;       (vc-svn-root file-path)
;;       (vc-hg-root file-path)
;;       file-path))
;; 
;; 
;; (defadvice kill-new (around my-kill-new (string &optional replace yank-handler)) 
;;    (message "my-kill-new!"))


;;          (re-search-forward "^\[[^\]]+\][ ]*" (point-max) t)
;;          (re-search-forward "^\\[[^\]]+[ ]*[^ ]" (point-max) t)
;;  
;;  (defun 
;;    (while (search-forward FROM-STRING nil t)
;;      (replace-match TO-STRING nil t))
;;  
;;  "[0m[[0mdebug[0m] [0mScala compilation took 25.596069243 s[0m"
;;  "[0m[[0mdebug[0m] [0mScala compilation took 25.596069243 s[0m"



(add-hook 'dired-load-hook #'(lambda nil (load "dired-x" t)))

(eval-after-load "dired-x"
  '(progn
     (defvar dired-omit-regexp-orig (symbol-function 'dired-omit-regexp))

     (defun dired-omit-regexp ()
       (let ((file (expand-file-name ".git"))
             parent-dir)
         (while (and (not (file-exists-p file))
                     (progn
                       (setq parent-dir
                             (file-name-directory
                              (directory-file-name
                               (file-name-directory file))))
                       ;; Give up if we are already at the root dir.
                       (not (string= (file-name-directory file)
                                     parent-dir))))
           ;; Move up to the parent dir and try again.
           (setq file (expand-file-name ".git" parent-dir)))
         ;; If we found a change log in a parent, use that.
         (if (file-exists-p file)
             (let ((regexp (funcall dired-omit-regexp-orig)))
               (assert (stringp regexp))
               (concat
                regexp
                (if (> (length regexp) 0)
                    "\\|" "")
                "\\("
                (mapconcat
                 #'(lambda (str)
                     (concat "^"
                             (regexp-quote
                              (substring str 13
                                         (if (= ?/ (aref str (1- (length str))))
                                             (1- (length str))
                                           nil)))
                             "$"))
                 (split-string (shell-command-to-string
                                "git clean -d -x -n")
                               "\n" t)
                 "\\|")
                "\\)"))
           (funcall dired-omit-regexp-orig))))))


;; (require 'mtorus)
(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay


;; eproject stuff
(define-project-type sbt (generic)
  (look-for "sbt")
  :relevant-files ("\\.scala$" "\\.java$" "\\.jade$" "\\.coffee$" "\\.js$" "\\.xml$" "\\.less$" "\\.conf$")
  :irrelevant-files ("^[.]" "^[#]" ".git/" ".hg/" "target/")
  )

(define-project-type nodejs (generic)
  (look-for "package.json")
  :relevant-files ("\\.jade$" "\\.coffee$" "\\.js$" "\\.xml$" "\\.less$" "\\.conf$")
  :irrelevant-files ("^[.]" "^[#]" "node_modules/")
  )

(setq nodejs-project-file-visit-hook
          (lambda ()
            (message "nodejs eproject")
            ))

;;; ;; eproject stuff
;;; (define-project-type manual (generic)
;;;   (look-for ".eproject-root")
;;;   :relevant-files ("\\.scala$" "\\.java$" "\\.jade$" "\\.coffee$" "\\.js$" "\\.xml$" "\\.less$" "\\.conf$")
;;;   :irrelevant-files ("^[.]" "^[#]" ".git/" ".hg/" "target/")
;;;   )


(defun first-matching-buffer (predicate)
  "Return PREDICATE applied to the first buffer where PREDICATE applied to the buffer yields a non-nil value."
  (loop for buf in (buffer-list)
     when (with-current-buffer buf (funcall predicate buf))
     return (with-current-buffer buf (funcall predicate buf))))



;; create window for fileset
;;   bookmark a set of files
;;   create a meta-bookmark for those bookmarks
;;   assoc meta-inf with each bookmark hinting at the window positioning



(defun fix-windows ()
  "Setup my window config."
  (interactive)
  (let ((current-project
         (first-matching-buffer (lambda (x) (ignore-errors (eproject-name)))))
        (current-irc-window
         (first-matching-buffer (lambda (x) (and (eq major-mode 'rcirc-mode)
                                                 x))))
        (current-shell
         (or (first-matching-buffer (lambda (x)
                                      (and (or (eq major-mode 'eshell-mode)
                                               (eq major-mode 'term-mode))
                                           x)))
             (eshell))))

    (delete-other-windows)
    (split-window-horizontally)
    (split-window-horizontally)
    (window-number-select 1)
    (split-window-vertically)
    (labels ((show (x) (set-window-buffer nil (or x (get-buffer-create "*scratch*")))))
      (window-number-select 1)
      (show current-irc-window)
      (window-number-select 2)
      (show current-shell)
      (let ((cur))
        (loop for i in '(3 4)
	   do
	     (window-number-select i)
	     (show (first-matching-buffer
		    (lambda (x) (and (equal (ignore-errors (eproject-name))
					    current-project)
				     (not (equal cur (buffer-name x)))
				     x))))
	     (setf cur (buffer-name (current-buffer))))))
    (balance-windows)))


(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Display ido results vertically, rather than horizontally
(setq ido-decorations 
      (quote 
       ( ;; 1st and 2nd elements are used as brackets around the prospect list,
        "\n-> " "" 
        ;; 3rd element is the separator between prospects (ignored if `ido-separator' is set),
        "\n   "
        ;; 4th element is the string inserted at the end of a truncated list of prospects,
        "\n   ..." 
        ;; 5th and 6th elements are used as brackets around the common match string which;; can be completed using TAB,
        "[" "]" 
        ;; 7th element is the string displayed when there are no matches, and
        " [No match]" 
        ;; 8th element is displayed if there is a single match (and faces are not used),
        " [Matched]" 
        ;; 9th element is displayed when the current directory is non-readable,
        " [Not readable]" 
        ;; 10th element is displayed when directory exceeds `ido-max-directory-size',
        " [Too big]" 
        ;; 11th element is displayed to confirm creating new file or buffer.
        " [Confirm]")))

(defun ido-disable-line-truncation () (set (make-local-variable 'truncate-lines) nil))
(add-hook 'ido-minibuffer-setup-hook 'ido-disable-line-truncation)

(defun ido-define-keys () ;; C-n/p is more intuitive in vertical layout
  (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
  (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))

(add-hook 'ido-setup-hook 'ido-define-keys)


;; (eproject-list-project-files)

;; (defun eproject-open-all-project-files ()
;;   (interactive "p")
;;   (let ((total 0)
;;         )
;;     (message "Opening files...")
;;     (save-window-excursion
;;       (loop for file in (eproject-list-project-files root)
;;             do (progn 
;;                  (find-file file) 
;;                  )
;;             )
;;  
;;       )
;;     (message "Opened %d files" total))
;;   )


;; jump to project def
;; with project files
;;  ag --noheading --ignore '*---' -G 'scala$' 'def\\h+.+[\\h(:[]'


;; Settings:
;; (require 'workgroups2)
;; (desktop-save-mode t)     ; save all opened files (or disable it)
;; (setq wg-prefix-key (kbd "C-c z")
;;       wg-restore-associated-buffers nil ; restore all buffers opened in this WG?
;;       wg-use-default-session-file nil   ; turn off for "emacs --daemon"
;;       wg-default-session-file "~/.emacs.d/workgroups"
;;       wg-use-faces nil
;;       wg-morph-on nil)                  ; animation off
;;  
;; ;; Keyboard shortcuts - load, save, switch
;; (global-set-key (kbd "<pause>")     'wg-reload-session)
;; (global-set-key (kbd "C-S-<pause>") 'wg-save-session)
;; (global-set-key (kbd "s-z")         'wg-switch-to-workgroup)
;; (global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)
;;  
;; (workgroups-mode 1)     ; Activate workgroups


; (when (window-system) (require 'git-gutter-fringe))

; (global-git-gutter-mode +1)
; (setq-default indicate-buffer-boundaries 'left)
; (setq-default indicate-empty-lines +1)

;; (add-hook 'scala-mode-hook 'projectile-on)
;; (projectile-global-mode)





 
