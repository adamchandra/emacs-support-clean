;; Keyboard bindings

(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
(global-set-key [(tab)] 'my-indent-function)
(global-set-key [(control i)] 'indent-region)
(global-set-key [f3] '(lambda() (interactive) (set-buffer (find-file "~/.emacs"))))
(global-set-key [f6] 'flip-to-last-buffer)

(global-unset-key [(meta ?/)])
(global-set-key [(meta ?/)] 'hippie-expand)

;; (global-unset-key [(meta ?\ )])
(global-unset-key [(control ?z)])


;; ;; Script run, create, open
;; ;; (global-set-key '[\M-a) \M- space)] 'snippet-insert-snippet)

(global-set-key [(control ?c) (control ?s) (control ?\ )] 'snippet-run-perl-script)
(global-set-key [(control ?c) (control ?s) (control ?j)] 'snippet-edit-snippet)
;; (global-set-key [(control ?c) (control ?\ )] 'snippet-run-perl-script)
;; (global-set-key [(meta ?s) (meta ?s) (meta ?\ )] 'snippet-create-script-from-region)
;; (global-set-key [(control ?c) (control ?c) (control ?c) (control ?\ )] 'snippet-edit-snippet)
;; (global-set-key [(control ?x) ?n ?a] 'snippet-create-snippet-from-region)
;; (global-set-key [(control ?x) ?n ?s] 'snippet-create-script-from-region)
;; (global-set-key [(control ?x) ?n ?\"] 'snippet-make-temp-script)
;; (global-set-key [(control ?x) ?n ?\'] 'snippet-run-temp-perl-script)

(global-set-key [(control ?,)] 'bs-cycle-previous)
(global-set-key [(control ?.)] 'bs-cycle-next)
(global-set-key [(meta f1)] 'kill-whitespace-in-region)
(global-set-key [f5] 'mode-compile)   	  

(global-set-key "\C-c\C-t" 'insert-time)
(global-set-key "\C-c\C-d" 'insert-date)

;;;;;;;;;;;;;;;;;;;;;;;;

;; Numeric keypad.

(global-set-key [(kp-subtract)] 'kill-current-buffer)
(global-set-key [(shift kp-subtract)] 'kill-current-buffer-and-window)
(global-set-key [(control kp-subtract)] 'delete-window)
(define-key help-mode-map [(kp-subtract)] 'kill-current-buffer)
(define-key help-mode-map [(shift kp-subtract)] 'kill-current-buffer-and-window)
;; (define-key list-mode-map [(kp-subtract)] 'kill-current-buffer)
;; (define-key list-mode-map [(shift kp-subtract)]  'kill-current-buffer-and-window)

(require 'picture)
(global-set-key [(shift right)] 'picture-forward-column)	       	       	       	       	
