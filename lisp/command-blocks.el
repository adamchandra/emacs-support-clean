;;(defun send-to-tmux ()
;; (interactive)
;; (save-excursion
;;  (let* ((p1 (line-beginning-position) )
;;         (p2 (line-end-position) )
;;         (line (buffer-substring-no-properties p1 p2))
;;         (cmd (concat "tmux send-keys '" line "'")))
;;   ;;(message cmd)
;;   (shell-command cmd)
;;  )))

;; (defun perlify()
;;   (interactive)
;;   (save-excursion
;;     (re-search-backward "^#\\!@\\(\\(perl\\|ruby\\) .*\\)$")
;;     (setq perl-command (match-string 1))
;;     (vertical-motion 1)
;;     (setq script-start (point))
;;     (re-search-forward "^#\\!@<<")
;;     (beginning-of-line)
;;     (setq script-end (point))
;;     (setq script (buffer-substring script-start script-end))
;;     (vertical-motion 1)
;;     (setq doc-start (point-marker))
;;     (setq command (concat perl-command " -e '" script "'"))
;;     (re-search-forward "^END")
;;     (beginning-of-line)
;;     (setq doc-end (point-marker))
;;     ;; (goto-char doc-end)
;;     ;; (insert-string (concat "<-doc-end"))
;;     ;; (insert-string (concat "command: " command))
;;     (shell-command-on-region doc-start doc-end command t t "*Command Error*")))


;; #!BEGIN= tmux send-keys echo {} && tmux send-keys C-m
;;  
;; line 1
;; line 2
;;  
;; line3
;; #!END
;;  
;; (defun read-lines (file)
;;   "Return a list of lines in FILE."
;;   (with-temp-buffer
;;     (insert-file-contents file)
;;     (split-string
;;      (buffer-string) "\n" t)
;;     ))
;;  
;;  
;;  
;;  
;; (defun tmux-send-lines()
;;   (interactive)
;;   (save-excursion
;;     (re-search-backward "^#\\!BEGIN\\(=\\|-\\)\\(.*\\)$")
;;     (vertical-motion 1)
;;     ;; (setq region-start (point-marker))
;;     (setq region-start (point))
;;     (re-search-forward "^#\\!END")
;;     (beginning-of-line)
;;     (setq region-end (point))
;;     (let* ((p1 (line-beginning-position))
;;            (p2 (line-end-position))
;;            (region (buffer-substring-no-properties region-start region-end))
;;            (lines (split-string region "\n" t))
;;            )
;;       (shell-command-on-region doc-start doc-end command t t "*Command Error*"))))
;;  
;;  
;;  
;; (defun get-top-bottom-markers()
;;   (interactive)
;;   (save-excursion
;;     (re-search-backward "^#\\!@\\(\\(perl\\|ruby\\) .*\\)$")
;;     (vertical-motion 1)
;;     (setq script-start (point))
;;     (re-search-forward "^#\\!@<<")
;;     (beginning-of-line)
;;     (setq script-end (point))
;;     (setq script (buffer-substring script-start script-end))
;;     (vertical-motion 1)
;;     (setq doc-start (point-marker))
;;     (setq command (concat perl-command " -e '" script "'"))
;;     (re-search-forward "^END")
;;     (beginning-of-line)
;;     (setq doc-end (point-marker))
;;     ;; (goto-char doc-end)
;;     ;; (insert-string (concat "<-doc-end"))
;;     ;; (insert-string (concat "command: " command))
;;     (shell-command-on-region doc-start doc-end command t t "*Command Error*")))
;;  
;;  
;; (save-excursion
;;   (let ((end-marker (copy-marker bottom))
;;         next-line-marker)
;;     (goto-char top)
;;     (if (not (bolp))
;;         (forward-line 1))
;;     (setq next-line-marker (point-marker))
;;     (while (< next-line-marker end-marker)
;;       (goto-char next-line-marker)
;;       (save-excursion
;;         (forward-line 1)
;;         (set-marker next-line-marker (point)))
;;       (save-excursion
;;         (let ((mark-active nil))
;;           (execute-kbd-macro macro))))
;;     (set-marker end-marker nil)
;;     (set-marker next-line-marker nil))))
