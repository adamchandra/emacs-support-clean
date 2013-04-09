;; (require 'moz)
;; 
;; (defun find-sbt-project-dir (file-name)
;;   (interactive)
;;   (let* ((dir (file-name-directory file-name))
;;          (possible-path (concat dir "project/")))
;;     (if (file-directory-p dir)
;;         (if (file-exists-p possible-path)
;;             possible-path
;;           (if (not (equal dir (directory-file-name dir)))
;;               (find-sbt-project-dir (directory-file-name dir)))))))
;; 
;; (defun sxr-sync-to-firefox()
;;   (interactive)
;;   (let* ((project-dir (find-sbt-project-dir buffer-file-name))
;;          (build-props (concat project-dir "build.properties"))
;;          (scala-version (get-property "build.scala.versions" build-props))
;;          (target-dir (concat project-dir "../target/scala_" scala-version "/"))
;;          (sxr-dir (concat target-dir "classes.sxr/")))
;;     (sxr-get-or-create-window)
;;     (mozrepl-eval
;;      (format "repl.sxr.location.href = 'file://%s/%s'" 
;;              sxr-dir
;;              (sxr-buffer-name-to-html-path buffer-file-name)))))
;; 
;; ;; not working yet
;; (defun sxr-sync-from-firefox()
;;   (interactive)
;;   (let* ((project-dir (find-sbt-project-dir buffer-file-name))
;;          (build-props (concat project-dir "build.properties"))
;;          (scala-version (get-property "build.scala.versions" build-props))
;;          (target-dir (concat project-dir "../target/scala_" scala-version "/"))
;;          (sxr-dir (concat target-dir "classes.sxr/")))
;;     (sxr-get-or-create-window)
;;     (mozrepl-eval
;;      (format "repl.sxr.location.href"))))
;; 
;; ;; (comint-send-string (inferior-moz-process) "repl.sxr.location.href;")
;; 
;; (defun sxr-buffer-name-to-html-path (buffer-name)
;;   (interactive)
;;   (concat 
;;    (substring buffer-name
;;               (+ (length "/src/main/scala/")
;;                  (string-match "/src/main/scala/" buffer-name)))
;;    ".html"))
;; 
;; 
;; (defun mozrepl-eval (&rest jss)
;;   (interactive)
;;   (dolist (js jss)
;;     (comint-send-string (inferior-moz-process)
;;                         (concat js ";"))))
;; 
;; (defun sxr-get-or-create-window ()
;;   (interactive)
;;   (mozrepl-eval
;;    "repl.home()"
;;    "if (!repl.sxr) { repl.sxr = window.open('', 'Scala EmaX-Ray') }" 
;;   ))
;; 
;; (defun read-property-file (file)
;;   (delq nil (mapcar 'split-on-eq
;;                     (read-lines file))))
;; 
;; (defun get-property (property-name file)
;;   (second (assoc property-name
;;                  (read-property-file file))))
;; 
;; (defun split-on-eq (str)
;;   (cond ((not (string-match-p "#" str))
;;          (split-string str "=" t))
;;         (t nil)))
;; 
;; (defun read-lines (file) 
;;   "Return a list of lines of a file at fpath." 
;;   (with-temp-buffer 
;;     (insert-file-contents file) 
;;     (split-string (buffer-string) "\n" t)))
