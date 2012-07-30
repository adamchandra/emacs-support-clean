;;
(eval-when-compile (require 'cl))

(require 'filesets)

(defun filesets (&rest sets)
  (setq filesets-data '())
  (dolist (s sets filesets-data)
    (setq
     filesets-data
     (append filesets-data
             (list (list (car s)
                   (eval (cadr s))))))))

(defun under (root &rest paths)
  (let ((n))
    (dolist (p paths n)
      (setq n
            (append n
                    (list
                     (concat (eval root) p)))))))

(defun files (paths)
  (let ((n '(:files)))
    (dolist (p paths n)
      (setq n (append n (list (eval p)))))))


(defconst *home-dir* (expand-file-name "~/"))
(defconst *projects* (expand-file-name "~/projects/"))
(defconst *the-outhouse* (concat *projects* "the-outhouse/"))
(defconst *external-projects* *the-outhouse*)
(defconst *the-toolshed* (concat *projects* "the-toolshed/"))
(defconst *the-library* (concat *projects* "the-library/"))
(defconst *the-kitchen* (concat *projects* "the-kitchen/"))

(defconst *project-planning* (concat *the-library* "project-planning/"))
(defconst *emacs-support* (concat *the-toolshed* "emacsen/emacs-support/"))
(defconst *scala-sources* (concat *external-projects* "scala/scala/src/"))
(defconst *scalaz-root* (concat *external-projects* "scala/scalazeds/"))
(defconst *scalaz-six-src*   (concat *external-projects* "scala/scalazeds/combined-scalaz-six-src"))
(defconst *scalaz-seven-src* (concat *external-projects* "scala/scalazeds/combined-scalaz-seven-src"))
(defconst *lift-src* (concat *external-projects* "scala/lifts/combined-liftweb-src/"))


(filesets
 '("emacs/dotemacs"
   (files
    (under *home-dir*
           ".emacs")))

 '("emacs/yas/snippetdir"
   (files
    (under *emacs-root*
           "my-snippets")))

 '("scala/src"
   (files
    (under *scala-sources*
           "scala")))

 '("scala/gists"
   (files
    (under *the-kitchen*
           "scala-genesis/src/main/scala/cc/acs/BitBucket.scala")))

 '("scalaz/6"
   (files
    (under *scalaz-root*
           "combined-scalaz-six-src")))

 '("scalaz/7"
   (files
    (under *scalaz-root*
           "combined-scalaz-seven-src")))

 '("lift/src"
   (files
    (under *lift-src*
           "src")))

 '("lift/css"
   (files
    (under *external-projects*
           "scala/lifts/framework/web/webkit/src/main/resources/toserve")))
           
 '("emacs/filesets"
   (files
    (under *emacs-root*
           "lisp/filesets-defs.el")))

 '("rc"
   (files
    (under "~/"
           ".bashrc")))

 '("journal"
   (files
    (under *project-planning*
           "org-files/index.org")))

 )

(setq filesets-external-viewers
      '(
        ;; ("^.+\\..?html?$" browse-url
        ;; ((:ignore-on-open-all t)))
        ("^.+\\.pdf$" "xpdf"
         ((:ignore-on-open-all t)
          (:ignore-on-read-text t)
          (:constraint-flag "xpdf")))
        ("^.+\\.e?ps\\(.gz\\)?$" "ggv"
         ((:ignore-on-open-all t)
          (:ignore-on-read-text t)
          (:constraint-flag "ggv")))
        ("^.+\\.dvi$" "xdvi"
         ((:ignore-on-open-all t)
          (:ignore-on-read-text t)
          (:constraint-flag "xdvi")))
        ("^.+\\.doc$" "antiword"
         ((:capture-output t)
          (:ignore-on-read-text t)
          (:constraint-flag "antiword")))
        ("^.+\\.\\(tiff\\|xpm\\|gif\\|pgn\\)$" "gqview"
         ((:ignore-on-open-all t)
          (:ignore-on-read-text t)
          (:constraint-flag "gqview")))))

(provide 'filesets-defs)



