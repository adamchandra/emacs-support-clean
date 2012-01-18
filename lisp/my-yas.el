(defconst *yas/snippet-dir* (concat *emacs-root* "my-snippets"))

(defun yasnippet-setup()
  (interactive)
  (require 'yasnippet)
  (yas/initialize)
  (yas/minor-mode-on)
  (setq yas/root-directory (concat *emacs-root* "my-snippets"))
  (yas/load-directory  yas/root-directory)
  ;; If non-nil, don't derive tab triggers from filenames.
  (setq yas/ignore-filenames-as-triggers t)
  (require 'dropdown-list)
  ;; (setq yas/prompt-functions '(yas/dropdown-prompt yas/ido-prompt))
  ;; (setq yas/prompt-functions '(yas/dropdown-prompt yas/ido-prompt yas/completing-prompt))
  ;; (setq yas/prompt-functions '(yas/completing-prompt yas/dropdown-prompt yas/ido-prompt))
  ;; (setq yas/prompt-functions '(yas/x-prompt))
  ;; (setq yas/prompt-functions '(yas/dropdown-prompt))
  ;; (setq yas/prompt-functions '(yas/ido-prompt))
  (setq yas/prompt-functions '(yas/completing-prompt))
  )

;; (require 'yasnippet-bundle)

(defmacro directory-excursion (dir &rest body)
  `(let ((saved-directory default-directory)
         (default-directory ,dir))
     ,@body
     (setq default-directory saved-directory)))


(defun yas/snippet-mode-dir ()
  (concat *yas/snippet-dir* "/" (symbol-name major-mode)))

(defun yas/dired-snippet-mode-dir ()
  (interactive)
  (dired
   (concat *yas/snippet-dir* 
           "/" 
           (symbol-name major-mode))))

(defun yas/write-header (snippet-dir snippet-name snippet-filename)
  (directory-excursion 
   snippet-dir
   (write-region (concat "" ;; start or string
                         "# Author: acs\n"
                         "# name: " snippet-name "\n"
                         "# key: " snippet-name "\n"
                         "# --\n"
                         )
                 nil                               ;; end 
                 snippet-filename                  ;; filename 
                 nil                               ;; append 
                 nil                               ;; visit 
                 nil                               ;; lockname
                 t)))                              ;; mustbenew

(defun yas/write-snippet-body (snippet-dir snippet-name content)
  (directory-excursion snippet-dir
                (write-region content          ;; start or string
                              t                ;; end 
                              snippet-name     ;; filename 
                              t                ;; append 
                              nil              ;; visit 
                              nil              ;; lockname
                              nil)))           ;; mustbenew

(defun yas/create-from-region (snippet-name)
  (interactive "sSnippet Name: ")
  (save-excursion 
    (let* ((snippet-string (buffer-substring (point) (mark)))
           (snippet-directory 
            (expand-file-name 
             (read-directory-name "Directory: " (yas/snippet-mode-dir))))
           (snippet-filename (concat snippet-directory "/" snippet-name)))
      (make-directory snippet-directory t)
      (yas/write-header
       snippet-directory 
       snippet-name
       snippet-filename)
      (yas/write-snippet-body
       snippet-directory 
       snippet-filename
       snippet-string))
    (yas/visit snippet-name)
    ))

(defun yas/visit (snippet-name)
  (interactive "sSnippet Name: ")
  (let* ((snippet-file
          (expand-file-name 
           (read-file-name "snippet: " 
                           (concat (yas/snippet-mode-dir) "/" snippet-name)
                           (concat (yas/snippet-mode-dir) "/" snippet-name)
                           t ;; must complete to existing file
                           )))) ;; initial text
    (find-file-other-window snippet-file)))

(yasnippet-setup)
