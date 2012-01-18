
(defconst *cmucl* "/usr/sen/tmp1/saunders/home.local/bin/cmucl-19c/bin/lisp")

(defconst *lisp*
  (cond
   ((file-exists-p *cmucl*) *cmucl*)))

(defun setup-slime() 
  (interactive)
  (require 'slime)
  (autoload 'slime-mode "slime-mode" "Slime Mode." t)
  (add-to-list 'auto-mode-alist '("\\.lisp\\'" . slime-mode))
  (setq inferior-lisp-program *lisp*)
  (add-hook 'slime-mode-hook
            (lambda ()
              ;; (lisp-mode)
              (local-set-key [(control i)] 'indent-sexp)
              (local-set-key [(tab)] 'lisp-indent-line)
              ))
  (slime-setup))

(setup-slime)
