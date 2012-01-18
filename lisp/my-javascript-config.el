(autoload 'moz-minor-mode "moz" "Mozilla Minor and Inferior Mozilla Modes" t)
(add-hook 'espresso-mode-hook 'espresso-custom-setup)
(add-to-list 'auto-mode-alist '("\\.js\\'" . espresso-mode))
(autoload 'espresso-mode "espresso" nil t)

(defun espresso-custom-setup ()
  (mozrepl-setup)
  (moz-minor-mode 1))

;; (add-hook 'javascript-mode-hook 'javascript-custom-setup)
;; (defun javascript-custom-setup () (moz-minor-mode 1))


(defun mozrepl-setup()
  (interactive)
  (require 'moz)
  (require 'json)
  
  (global-set-key (kbd "C-x p")
                  (lambda ()
                    (interactive)
                    (comint-send-string (inferior-moz-process)
                                        "BrowserReload();")))
  (defun moz-update (&rest ignored)
    "Update the remote mozrepl instance"
    (interactive)
    (comint-send-string (inferior-moz-process)
                        (concat "content.document.body.innerHTML="
                                (json-encode (buffer-string)) ";")))
  
  (defun moz-enable-auto-update ()
    "Automatically the remote mozrepl when this buffer changes"
    (interactive)
    (add-hook 'after-change-functions 'moz-update t t))
  
  (defun moz-disable-auto-update ()
    "Disable automatic mozrepl updates"
    (interactive)
    (remove-hook 'after-change-functions 'moz-update t))
  )
