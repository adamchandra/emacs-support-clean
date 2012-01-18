(defun java-itit()
  (interactive "*")
  (backward-delete-char 1)
  (mark-word -1)
  (let ((var (buffer-substring (point) (mark))))
    (delete-region (point)(mark))
    (insert (format "while( %s.hasNext() ) {\n%s.next()\n}\n" var var))))

(defun expand-skeleton()
  (interactive "*")
  (backward-delete-char 1)
  (mark-word -1)
  (let ((var (buffer-substring (point) (mark))))
    (delete-region (point)(mark))
    (insert (format "while( %s.hasNext() ) {\n%s.next()\n}\n" var var))))


;; (cond 
;;  ((eq abbr "itit")
;;   (insert (format "while( %s.hasNext() ) {\n%s.next()\n}\n" var var)))
;;  ((eq abbr "itfor")
;;   (insert (format "for( %s;%s<0;%s++) {\n\n}\n" var var var))))


(defun perl-n()
  (interactive "*")
  (beginning-of-line)
  (insert "#!@perl -n -p\n\n")
  (insert "#!@<<END\n")
  (insert "END\n"))

(defun ruby-n()
  (interactive "*")
  (beginning-of-line)
  (insert "#!@ruby -n -p\n\n")
  (insert "#!@<<END\n")
  (insert "END\n"))


  