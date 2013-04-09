;; (defun org-mode-setup()
;;   (interactive)
;;   (global-set-key "\C-cl" 'org-store-link)
;;   (global-set-key "\C-ca" 'org-agenda)
;;   (setq org-agenda-include-diary t)
;;   (require 'remember)
;;   (setq remember-annotation-functions '(org-remember-annotation))
;;   (setq remember-handler-functions '(org-remember-handler))
;;   (add-hook 'remember-mode-hook 'org-remember-apply-template)
;;   (setq org-directory "~/org-files")
;;   (setq org-default-notes-file "~/org-files/remember")
;;   )
;; 
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (add-hook 'org-mode-hook 'org-mode-setup)
;; 
;; (defvar org-publish-project-alist)
;; 
;; (defun setup-rexadoc-publication()
;;   (interactive)
;;   (setq org-publish-project-alist
;;         '(("rexa"
;;            :base-directory "/usr/sen/tmp1/saunders/eclipse-workspace/rexo/docs/public/org"
;;            :base-extension "org"
;;            :preparation-function  nil
;;            :completion-function  nil
;;            :publishing-directory "/usr/sen/tmp1/saunders/eclipse-workspace/web-rexa-org/org"
;;            :publishing-function org-publish-org-to-html
;;            :include nil ;; regexp
;;            :exclude nil ;; regexp
;;            :headline-levels 3
;;            :section-numbers nil
;;            :table-of-contents nil
;;            :style "<link rel='stylesheet' href='' type='text/css'>"
;;            :auto-preamble t
;;            :auto-postamble nil)
;;      
;;           ("images"
;;            :base-directory "/usr/sen/tmp1/saunders/eclipse-workspace/rexo/docs/public/images"
;;            :publishing-directory "/usr/sen/tmp1/saunders/eclipse-workspace/web-rexa-org/images"
;;            :base-extension "jpg\\|gif\\|png"
;;            :publishing-function org-publish-attachment)
;;      
;;           ("misc"
;;            :base-directory "/usr/sen/tmp1/saunders/eclipse-workspace/rexo/docs/public/misc"
;;            :base-extension "css"
;;            :publishing-directory "/usr/sen/tmp1/saunders/eclipse-workspace/web-rexa-org/misc"
;;            :publishing-function org-publish-attachment)
;;           ("website" :components ("rexa" "images" "misc"))))
;;   )
