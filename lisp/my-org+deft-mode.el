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
     
;; defaults: change per-file with e.g., #+STARTUP: overview
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
     
     
     
