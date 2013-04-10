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
 '(face-font-family-alternatives (quote (("mono" "dejavu" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
 '(face-font-selection-order (quote (:width :height :weight :slant)))
 '(filesets-data (quote (("jade-files" (:tree "/home/saunders/projects/the-livingroom/dvcs-mirrors/bitbucket.com/iesl@bitbucket.com/openreview/prj-openreview-front/app/views" "^.+\\.jade$")))))
 '(fill-column 100)
 '(focus-follows-mouse nil)
 '(global-font-lock-mode t nil (font-lock))
 '(hippie-expand-try-functions-list (quote (try-expand-all-abbrevs try-expand-list try-expand-dabbrev try-expand-dabbrev-all-buffers try-expand-dabbrev-from-kill)))
 '(ibuffer-saved-filter-groups nil t)
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
 '(org-agenda-file-regexp "\\`[^.].*agenda\\.org\\'")
 '(org-agenda-files (quote ("~/projects/the-library/Dropbox/emacs-deft/")))
 '(org-capture-templates (quote (("t" "todo" entry (file org-default-notes-file) "* TODO %?
%U
" :empty-lines 1 :clock-in t :clock-resume t) ("n" "note" entry (file org-default-notes-file) "* NOTE %? :NOTE:
%U
%a
" :clock-in t :clock-resume t :empty-lines 1) ("m" "remember location marker" entry (file org-default-notes-file) "* %? :MARK:
%U
%a
" :empty-lines 1) ("j" "Journal" entry (file+datetree org-journal-file) "* %?
%U
" :clock-in t :clock-resume t :empty-lines 1) ("w" "org-protocol" entry (file org-default-notes-file) "* TODO Review %c
%U
" :immediate-finish t :empty-lines 1) ("p" "Phone call" entry (file org-default-notes-file) "* PHONE %? :PHONE:
%U" :clock-in t :clock-resume t :empty-lines 1))) t)
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
 '(scala-indent:align-forms t)
 '(scala-indent:align-parameters nil)
 '(sgml-basic-offset 4)
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

(defun deft-use-markdown() 
  (interactive)
  (setq deft-extension "md")
  (setq deft-text-mode 'markdown-mode)
)

(defun deft-use-org() 
  (interactive)
  (setq deft-extension "org")
  (setq deft-text-mode 'org-mode)
)

(deft-use-org)

(setq org-directory *orgfile-dir*)
(setq org-default-notes-file (expand-file-name (concat *orgfile-dir* "refile-agenda.org")))
(setq org-journal-file (expand-file-name (concat *orgfile-dir* "journal-agenda.org")))

;; I use C-M-r to start capture mode
(global-set-key (kbd "C-M-r") 'org-capture)
;; I use C-c r to start capture mode when using SSH from my Android phone
;; (global-set-key (kbd "C-c r") 'org-capture)

;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
(setq org-capture-templates
      (quote (("t" "todo" entry (file org-default-notes-file)
               "* TODO %?\n%U\n%a\n" :clock-in t :clock-resume t)
              ("r" "respond" entry (file org-default-notes-file)
               "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n%a\n" :clock-in t :clock-resume t :immediate-finish t)
              ("n" "note" entry (file org-default-notes-file)
               "* %? :NOTE:\n%U\n%a\n" :clock-in t :clock-resume t)
              ("j" "Journal" entry (file+datetree org-journal-file)
               "* %?\n%U\n" :clock-in t :clock-resume t)
              ("w" "org-protocol" entry (file org-default-notes-file)
               "* TODO Review %c\n%U\n" :immediate-finish t)
              ("p" "Phone call" entry (file org-default-notes-file)
               "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
              ("h" "Habit" entry (file org-default-notes-file)
               "* NEXT %?\n%U\n%a\nSCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))

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
          ([(control XF86Forward)     ] find-grep-dired)
          ([(control tab)             ] sr-speedbar-toggle)
          ([(control ?J)              ] ace-jump-mode)
          ([(control ?H)              ] ace-jump-mode-pop-mark)

          ([(control ?>) (?s) (?o)    ] ag-search-occur)
          ([(control ?>) (?s) (?c)    ] ag-search-class)
          ([(control ?>) (?s) (?d)    ] ag-search-def)

          ([f12                       ] raise-bookmark-buffer)
          ([f5                        ] ensime-compile-errors)
          ([f8                        ] deft)
          ([(control f8)              ] org-agenda)
          ([f11                       ] ansi-term)
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
      (add-path "site-lisp/tellib") 
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
      (require 'org-fstree)

      (setq jiralib-url "http://bugs.openreview.net/")
      (require 'org-jira)
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
			(require 'pabbrev)
			(require 'picture)
			(require 'yaml-mode)
      (require 'icicles)
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
      (global-undo-tree-mode)

      ;; (smooth-scroll-mode t)
			;; general elisp
			(load-library "my-emisc")
			;; (ido-mode nil)
			(icy-mode nil)
			(filesets-setup)
			(scala-mode-setup)
      (haskell-setup)
			(load-library "my-yas")
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

;; ;; Assorted mode setups, utility defs
(defun filesets-setup()
  ;; updated version: 
  ; (require 'filesets-tellib)
  ; (require 'filesets-emacs)
  ; (filesets-install t)
  ;; (filesets-support-ibuffer)
  ;; (filesets-support-dired)
  )

;; MINI HOWTO: open .scala file. Ensure bin/server.sh is executable. M-x ensime

(defun scala-mode-setup()
  (interactive)
  (require 'ensime)
  ;; (require 'scala-mode-auto)
  (require 'scala-mode2)
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
  (defvar ensime-scaladoc-stdlib-url-base "http://www.scala-lang.org/api/current")
  (defvar ensime-scaladoc-compiler-url-base "http://www.scala-lang.org/api/current")
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

;; (add-hook 'jade-mode-hook '(lambda() (vline-mode nil)))
;; (remove-hook 'jade-mode-hook '(lambda() (vline-mode nil)))

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
         ("hs"    (mode . haskell-mode))
         ("markup" (or 
                  (mode . nxml-mode)
                  (mode . jade-mode)
                  (mode . sws-mode)
                  (mode . less-mode)
                  (mode . markdown-mode)))
         ("js" (or 
                  (mode . coffee-mode)
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




;; prj-openreview-core/target/streams/compile/compile/\$global/out
;;                     (ensime-config-read-target-dir root)


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



;; TODO move these org-agenda functions to a separate file
;; From: http://doc.norang.ca/org-mode.html#Clocking

;; Resume clocking task when emacs is restarted
(org-clock-persistence-insinuate)
;;
;; Show lot sof clocking history so it's easy to pick items off the C-F11 list
(setq org-clock-history-length 36)
;; Resume clocking task on clock-in if the clock is open
(setq org-clock-in-resume t)
;; Change tasks to NEXT when clocking in
(setq org-clock-in-switch-to-state 'bh/clock-in-to-next)
;; Separate drawers for clocking and logs
(setq org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN" "MORE")))
;; Save clock data and state changes and notes in the LOGBOOK drawer
(setq org-clock-into-drawer t)
;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
(setq org-clock-out-remove-zero-time-clocks t)
;; Clock out when moving task to a done state
(setq org-clock-out-when-done t)
;; Save the running clock and all clock history when exiting Emacs, load it on startup
(setq org-clock-persist t)
;; Do not prompt to resume an active clock
(setq org-clock-persist-query-resume nil)
;; Enable auto clock resolution for finding open clocks
(setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
;; Include current clocking task in clock reports
(setq org-clock-report-include-clocking-task t)

(setq bh/keep-clock-running nil)

(defun bh/clock-in-to-next (kw)
  "Switch a task from TODO to NEXT when clocking in.
Skips capture tasks, projects, and subprojects.
Switch projects and subprojects from NEXT back to TODO"
  (when (not (and (boundp 'org-capture-mode) org-capture-mode))
    (cond
     ((and (member (org-get-todo-state) (list "TODO"))
           (bh/is-task-p))
      "NEXT")
     ((and (member (org-get-todo-state) (list "NEXT"))
           (bh/is-project-p))
      "TODO"))))

(defun bh/find-project-task ()
  "Move point to the parent (project) task if any"
  (save-restriction
    (widen)
    (let ((parent-task (save-excursion (org-back-to-heading 'invisible-ok) (point))))
      (while (org-up-heading-safe)
        (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
          (setq parent-task (point))))
      (goto-char parent-task)
      parent-task)))

(defun bh/punch-in (arg)
  "Start continuous clocking and set the default task to the
selected task.  If no task is selected set the Organization task
as the default task."
  (interactive "p")
  (setq bh/keep-clock-running t)
  (if (equal major-mode 'org-agenda-mode)
      ;;
      ;; We're in the agenda
      ;;
      (let* ((marker (org-get-at-bol 'org-hd-marker))
             (tags (org-with-point-at marker (org-get-tags-at))))
        (if (and (eq arg 4) tags)
            (org-agenda-clock-in '(16))
          (bh/clock-in-organization-task-as-default)))
    ;;
    ;; We are not in the agenda
    ;;
    (save-restriction
      (widen)
      ; Find the tags on the current task
      (if (and (equal major-mode 'org-mode) (not (org-before-first-heading-p)) (eq arg 4))
          (org-clock-in '(16))
        (bh/clock-in-organization-task-as-default)))))

(defun bh/punch-out ()
  (interactive)
  (setq bh/keep-clock-running nil)
  (when (org-clock-is-active)
    (org-clock-out))
  (org-agenda-remove-restriction-lock))

(defun bh/clock-in-default-task ()
  (save-excursion
    (org-with-point-at org-clock-default-task
      (org-clock-in))))

(defun bh/clock-in-parent-task ()
  "Move point to the parent (project) task if any and clock in"
  (let ((parent-task))
    (save-excursion
      (save-restriction
        (widen)
        (while (and (not parent-task) (org-up-heading-safe))
          (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
            (setq parent-task (point))))
        (if parent-task
            (org-with-point-at parent-task
              (org-clock-in))
          (when bh/keep-clock-running
            (bh/clock-in-default-task)))))))

(defvar bh/organization-task-id "eb155a82-92b2-4f25-a3c6-0304591af2f9")

(defun bh/clock-in-organization-task-as-default ()
  (interactive)
  (org-with-point-at (org-id-find bh/organization-task-id 'marker)
    (org-clock-in '(16))))

(defun bh/clock-out-maybe ()
  (when (and bh/keep-clock-running
             (not org-clock-clocking-in)
             (marker-buffer org-clock-default-task)
             (not org-clock-resolving-clocks-due-to-idleness))
    (bh/clock-in-parent-task)))

(add-hook 'org-clock-out-hook 'bh/clock-out-maybe 'append)

;; Do not dim blocked tasks
(setq org-agenda-dim-blocked-tasks nil)

;; Compact the block agenda view
(setq org-agenda-compact-blocks t)

;; Custom agenda command definitions
(setq org-agenda-custom-commands
      (quote (("N" "Notes" tags "NOTE"
               ((org-agenda-overriding-header "Notes")
                (org-tags-match-list-sublevels t)))
              ("h" "Habits" tags-todo "STYLE=\"habit\""
               ((org-agenda-overriding-header "Habits")
                (org-agenda-sorting-strategy
                 '(todo-state-down effort-up category-keep))))
              (" " "Agenda"
               ((agenda "" nil)
                (tags "REFILE"
                      ((org-agenda-overriding-header "Tasks to Refile")
                       (org-tags-match-list-sublevels nil)))
                (tags-todo "-CANCELLED/!"
                           ((org-agenda-overriding-header "Stuck Projects")
                            (org-agenda-skip-function 'bh/skip-non-stuck-projects)))
                (tags-todo "-WAITING-CANCELLED/!NEXT"
                           ((org-agenda-overriding-header "Next Tasks")
                            (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
                            (org-agenda-todo-ignore-scheduled t)
                            (org-agenda-todo-ignore-deadlines t)
                            (org-agenda-todo-ignore-with-date t)
                            (org-tags-match-list-sublevels t)
                            (org-agenda-sorting-strategy
                             '(todo-state-down effort-up category-keep))))
                (tags-todo "-REFILE-CANCELLED/!-HOLD-WAITING"
                           ((org-agenda-overriding-header "Tasks")
                            (org-agenda-skip-function 'bh/skip-project-tasks-maybe)
                            (org-agenda-todo-ignore-scheduled t)
                            (org-agenda-todo-ignore-deadlines t)
                            (org-agenda-todo-ignore-with-date t)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-HOLD-CANCELLED/!"
                           ((org-agenda-overriding-header "Projects")
                            (org-agenda-skip-function 'bh/skip-non-projects)
                            (org-agenda-sorting-strategy
                             '(category-keep))))
                (tags-todo "-CANCELLED+WAITING/!"
                           ((org-agenda-overriding-header "Waiting and Postponed Tasks")
                            (org-agenda-skip-function 'bh/skip-stuck-projects)
                            (org-tags-match-list-sublevels nil)
                            (org-agenda-todo-ignore-scheduled 'future)
                            (org-agenda-todo-ignore-deadlines 'future)))
                (tags "-REFILE/"
                      ((org-agenda-overriding-header "Tasks to Archive")
                       (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
                       (org-tags-match-list-sublevels nil))))
               nil)
              ("r" "Tasks to Refile" tags "REFILE"
               ((org-agenda-overriding-header "Tasks to Refile")
                (org-tags-match-list-sublevels nil)))
              ("#" "Stuck Projects" tags-todo "-CANCELLED/!"
               ((org-agenda-overriding-header "Stuck Projects")
                (org-agenda-skip-function 'bh/skip-non-stuck-projects)))
              ("n" "Next Tasks" tags-todo "-WAITING-CANCELLED/!NEXT"
               ((org-agenda-overriding-header "Next Tasks")
                (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
                (org-agenda-todo-ignore-scheduled t)
                (org-agenda-todo-ignore-deadlines t)
                (org-agenda-todo-ignore-with-date t)
                (org-tags-match-list-sublevels t)
                (org-agenda-sorting-strategy
                 '(todo-state-down effort-up category-keep))))
              ("R" "Tasks" tags-todo "-REFILE-CANCELLED/!-HOLD-WAITING"
               ((org-agenda-overriding-header "Tasks")
                (org-agenda-skip-function 'bh/skip-project-tasks-maybe)
                (org-agenda-sorting-strategy
                 '(category-keep))))
              ("p" "Projects" tags-todo "-HOLD-CANCELLED/!"
               ((org-agenda-overriding-header "Projects")
                (org-agenda-skip-function 'bh/skip-non-projects)
                (org-agenda-sorting-strategy
                 '(category-keep))))
              ("w" "Waiting Tasks" tags-todo "-CANCELLED+WAITING/!"
               ((org-agenda-overriding-header "Waiting and Postponed tasks"))
               (org-tags-match-list-sublevels nil))
              ("A" "Tasks to Archive" tags "-REFILE/"
               ((org-agenda-overriding-header "Tasks to Archive")
                (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
                (org-tags-match-list-sublevels nil))))))



; Targets include this file and any file contributing to the agenda - up to 9 levels deep
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

; Use full outline paths for refile targets - we file directly with IDO
(setq org-refile-use-outline-path t)

; Targets complete directly with IDO
(setq org-outline-path-complete-in-steps nil)

; Allow refile to create parent tasks with confirmation
(setq org-refile-allow-creating-parent-nodes (quote confirm))

; Use IDO for both buffer and file completion and ido-everywhere to t
(setq org-completion-use-ido t)
(setq ido-everywhere t)
(setq ido-max-directory-size 100000)
(ido-mode (quote both))
; Use the current window when visiting files and buffers with ido
(setq ido-default-file-method 'selected-window)
(setq ido-default-buffer-method 'selected-window)

;;;; Refile settings
; Exclude DONE state tasks from refile targets
(defun bh/verify-refile-target ()
  "Exclude todo keywords with a done state from refile targets"
  (not (member (nth 2 (org-heading-components)) org-done-keywords)))

(setq org-refile-target-verify-function 'bh/verify-refile-target)


(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("NEXT" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold)
              ("PHONE" :foreground "forest green" :weight bold))))



(setq org-agenda-span 'day)

(setq org-stuck-projects (quote ("" nil nil "")))


(defun bh/is-project-p ()
  "Any task with a todo keyword subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task has-subtask))))

(defun bh/is-project-subtree-p ()
  "Any task with a todo keyword that is in a project subtree.
Callers of this function already widen the buffer view."
  (let ((task (save-excursion (org-back-to-heading 'invisible-ok)
                              (point))))
    (save-excursion
      (bh/find-project-task)
      (if (equal (point) task)
          nil
        t))))

(defun bh/is-task-p ()
  "Any task with a todo keyword and no subtask"
  (save-restriction
    (widen)
    (let ((has-subtask)
          (subtree-end (save-excursion (org-end-of-subtree t)))
          (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
      (save-excursion
        (forward-line 1)
        (while (and (not has-subtask)
                    (< (point) subtree-end)
                    (re-search-forward "^\*+ " subtree-end t))
          (when (member (org-get-todo-state) org-todo-keywords-1)
            (setq has-subtask t))))
      (and is-a-task (not has-subtask)))))

(defun bh/is-subproject-p ()
  "Any task which is a subtask of another project"
  (let ((is-subproject)
        (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
    (save-excursion
      (while (and (not is-subproject) (org-up-heading-safe))
        (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
          (setq is-subproject t))))
    (and is-a-task is-subproject)))

(defun bh/list-sublevels-for-projects-indented ()
  "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
  This is normally used by skipping functions where this variable is already local to the agenda."
  (if (marker-buffer org-agenda-restrict-begin)
      (setq org-tags-match-list-sublevels 'indented)
    (setq org-tags-match-list-sublevels nil))
  nil)

(defun bh/list-sublevels-for-projects ()
  "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
  This is normally used by skipping functions where this variable is already local to the agenda."
  (if (marker-buffer org-agenda-restrict-begin)
      (setq org-tags-match-list-sublevels t)
    (setq org-tags-match-list-sublevels nil))
  nil)

(defun bh/skip-stuck-projects ()
  "Skip trees that are not stuck projects"
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (if (bh/is-project-p)
          (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                 (has-next ))
            (save-excursion
              (forward-line 1)
              (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT " subtree-end t))
                (unless (member "WAITING" (org-get-tags-at))
                  (setq has-next t))))
            (if has-next
                nil
              next-headline)) ; a stuck project, has subtasks but no next task
        nil))))

(defun bh/skip-non-stuck-projects ()
  "Skip trees that are not stuck projects"
  (bh/list-sublevels-for-projects-indented)
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (if (bh/is-project-p)
          (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                 (has-next ))
            (save-excursion
              (forward-line 1)
              (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT " subtree-end t))
                (unless (member "WAITING" (org-get-tags-at))
                  (setq has-next t))))
            (if has-next
                next-headline
              nil)) ; a stuck project, has subtasks but no next task
        next-headline))))

(defun bh/skip-non-projects ()
  "Skip trees that are not projects"
  (bh/list-sublevels-for-projects-indented)
  (if (save-excursion (bh/skip-non-stuck-projects))
      (save-restriction
        (widen)
        (let ((subtree-end (save-excursion (org-end-of-subtree t))))
          (cond
           ((and (bh/is-project-p)
                 (marker-buffer org-agenda-restrict-begin))
            nil)
           ((and (bh/is-project-p)
                 (not (marker-buffer org-agenda-restrict-begin))
                 (not (bh/is-project-subtree-p)))
            nil)
           (t
            subtree-end))))
    (save-excursion (org-end-of-subtree t))))

(defun bh/skip-project-trees-and-habits ()
  "Skip trees that are projects"
  (save-restriction
    (widen)
    (let ((subtree-end (save-excursion (org-end-of-subtree t))))
      (cond
       ((bh/is-project-p)
        subtree-end)
       (t
        nil)))))

(defun bh/skip-projects-and-habits-and-single-tasks ()
  "Skip trees that are projects, tasks that are habits, single non-project tasks"
  (save-restriction
    (widen)
    (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
      (cond
       ((bh/is-project-p)
        next-headline)
       ((and (bh/is-task-p) (not (bh/is-project-subtree-p)))
        next-headline)
       (t
        nil)))))

(defun bh/skip-project-tasks-maybe ()
  "Show tasks related to the current restriction.
When restricted to a project, skip project and sub project tasks, habits, NEXT tasks, and loose tasks.
When not restricted, skip project and sub-project tasks, habits, and project related tasks."
  (save-restriction
    (widen)
    (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
           (next-headline (save-excursion (or (outline-next-heading) (point-max))))
           (limit-to-project (marker-buffer org-agenda-restrict-begin)))
      (cond
       ((bh/is-project-p)
        next-headline)
       ((and (not limit-to-project)
             (bh/is-project-subtree-p))
        subtree-end)
       ((and limit-to-project
             (bh/is-project-subtree-p)
             (member (org-get-todo-state) (list "NEXT")))
        subtree-end)
       (t
        nil)))))

(defun bh/skip-projects-and-habits ()
  "Skip trees that are projects and tasks that are habits"
  (save-restriction
    (widen)
    (let ((subtree-end (save-excursion (org-end-of-subtree t))))
      (cond
       ((bh/is-project-p)
        subtree-end)
       (t
        nil)))))

(defun bh/skip-non-subprojects ()
  "Skip trees that are not projects"
  (let ((next-headline (save-excursion (outline-next-heading))))
    (if (bh/is-subproject-p)
        nil
      next-headline)))











;; (global-set-key (kbd "<f5>") 'bh/org-todo)

(defun bh/org-todo (arg)
  (interactive "p")
  (if (equal arg 4)
      (save-restriction
        (bh/narrow-to-org-subtree)
        (org-show-todo-tree nil))
    (bh/narrow-to-org-subtree)
    (org-show-todo-tree nil)))

;; (global-set-key (kbd "<S-f5>") 'bh/widen)

(defun bh/widen ()
  (interactive)
  (if (equal major-mode 'org-agenda-mode)
      (org-agenda-remove-restriction-lock)
    (widen)
    (org-agenda-remove-restriction-lock)))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "W" 'bh/widen))
          'append)

(defun bh/restrict-to-file-or-follow (arg)
  "Set agenda restriction to 'file or with argument invoke follow mode.
I don't use follow mode very often but I restrict to file all the time
so change the default 'F' binding in the agenda to allow both"
  (interactive "p")
  (if (equal arg 4)
      (org-agenda-follow-mode)
    (if (equal major-mode 'org-agenda-mode)
        (bh/set-agenda-restriction-lock 4)
      (widen))))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "F" 'bh/restrict-to-file-or-follow))
          'append)

(defun bh/narrow-to-org-subtree ()
  (widen)
  (org-narrow-to-subtree))

(defun bh/narrow-to-subtree ()
  (interactive)
  (if (equal major-mode 'org-agenda-mode)
      (org-with-point-at (org-get-at-bol 'org-hd-marker)
        (bh/narrow-to-org-subtree)
        (save-restriction
          (org-agenda-set-restriction-lock)))
    (bh/narrow-to-org-subtree)
    (save-restriction
      (org-agenda-set-restriction-lock))))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "N" 'bh/narrow-to-subtree))
          'append)

(defun bh/narrow-up-one-org-level ()
  (widen)
  (save-excursion
    (outline-up-heading 1 'invisible-ok)
    (bh/narrow-to-org-subtree)))

(defun bh/get-pom-from-agenda-restriction-or-point ()
  (or (org-get-at-bol 'org-hd-marker)
      (and (marker-position org-agenda-restrict-begin) org-agenda-restrict-begin)
      (and (equal major-mode 'org-mode) (point))
      org-clock-marker))

(defun bh/narrow-up-one-level ()
  (interactive)
  (if (equal major-mode 'org-agenda-mode)
      (org-with-point-at (bh/get-pom-from-agenda-restriction-or-point)
        (bh/narrow-up-one-org-level))
    (bh/narrow-up-one-org-level)))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "U" 'bh/narrow-up-one-level))
          'append)

(defun bh/narrow-to-org-project ()
  (widen)
  (save-excursion
    (bh/find-project-task)
    (bh/narrow-to-org-subtree)))

(defun bh/narrow-to-project ()
  (interactive)
  (if (equal major-mode 'org-agenda-mode)
      (org-with-point-at (bh/get-pom-from-agenda-restriction-or-point)
        (bh/narrow-to-org-project)
        (save-restriction
          (org-agenda-set-restriction-lock)))
    (bh/narrow-to-org-project)
    (save-restriction
      (org-agenda-set-restriction-lock))))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "P" 'bh/narrow-to-project))
          'append)

(defvar bh/current-view-project nil)

(defun bh/view-next-project ()
  (interactive)
  (unless (marker-position org-agenda-restrict-begin)
    (goto-char (point-min))
    (setq bh/current-view-project (point)))
  (bh/widen)
  (goto-char bh/current-view-project)
  (forward-visible-line 1)
  (while (and (< (point) (point-max))
              (or (not (org-get-at-bol 'org-hd-marker))
                  (org-with-point-at (org-get-at-bol 'org-hd-marker)
                    (or (not (bh/is-project-p))
                        (bh/is-project-subtree-p)))))
    (forward-visible-line 1))
  (setq bh/current-view-project (point))
  (if (org-get-at-bol 'org-hd-marker)
      (progn
        (bh/narrow-to-project)
        (org-agenda-redo)
        (beginning-of-buffer))
    (beginning-of-buffer)
    (error "All projects viewed.")))

(add-hook 'org-agenda-mode-hook
          '(lambda () (org-defkey org-agenda-mode-map "V" 'bh/view-next-project))
          'append)

;; defaults: change per-file with e.g., #+STARTUP: overview

(setq org-startup-indented t)
(setq org-hide-block-startup t) ;; (t|nil)
(setq org-hide-leading-stars nil) ;; (t|nil)
(setq org-startup-folded t) ;; (content|nil|t|showeverything)
(setq org-pretty-entities t) ;; (t|nil)


;; (setq org-display-custom-times t)
;; (setq org-footnote-auto-adjust nil)
;; (setq org-footnote-auto-adjust t)

;; (setq org-footnote-auto-label confirm)
;; (setq org-footnote-auto-label nil)
;; (setq org-footnote-auto-label plain)
;; (setq org-footnote-auto-label t)

;; (setq org-footnote-define-inline nil)
;; (setq org-footnote-define-inline t)

;; (setq org-footnote-section nil)

;; (setq org-log-done nil)
;; (setq org-log-done note)
;; (setq org-log-done time)

;; (setq org-log-note-clock-out nil)
;; (setq org-log-note-clock-out t)

;; (setq org-log-redeadline nil)
;; (setq org-log-redeadline note)
;; (setq org-log-redeadline time)

;; (setq org-log-refile nil)
;; (setq org-log-refile note)
;; (setq org-log-refile time)

;; (setq org-log-repeat nil)
;; (setq org-log-repeat note)
;; (setq org-log-repeat state)

;; (setq org-log-reschedule nil)
;; (setq org-log-reschedule note)
;; (setq org-log-reschedule time)

;; (setq org-odd-levels-only nil)
;; (setq org-odd-levels-only t)


;; (setq org-startup-align-all-tables nil)
;; (setq org-startup-align-all-tables t)


;; (setq org-startup-with-beamer-mode t)

;; (setq org-startup-with-inline-images nil)
;; (setq org-startup-with-inline-images t)

;; (setq org-tag-persistent-alist nil)
