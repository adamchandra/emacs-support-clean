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
(defconst *emacs-support* (concat *projects* "emacs-support/"))
(defconst *personal-stuff* (concat *projects* "personal-stuff/"))
(defconst *project-planning* (concat *projects* "project-planning/"))
(defconst *external-projects* (concat *projects* "external-projects/"))

(defconst *rexa2-dev* (concat *projects* "rexa2s/rexa2-dev/"))
(defconst *scala-sources* (concat *external-projects* "scala/scala/src/"))
(defconst *scalaz-root* (concat *external-projects* "scala/scalazeds/scalaz-github-incoming/"))
(defconst *scala-meta-project* (concat *projects* "scala-meta-project/"))

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

 '("rexa2/src"
   (files
    (under *rexa2-dev*
           "src"
           "front/src")))

 '("scala/genesis/bucket"
   (files
    (under *scala-meta-project*
           "scala-genesis/src/main/scala/cc/acs/BitBucket.scala")))

 '("scala/scalaz"
   (files
    (under *scalaz-root*
           "example/src/main/scala/scalaz/example"
           "core/src/main/scala/scalaz")))

 '("lift/css"
   (files
    (under *external-projects*
           "scala/lifts/framework/web/webkit/src/main/resources/toserve")))
           
 '("emacs/filesets"
   (files
    (under *emacs-root*
           "lisp/filesets-defs.el")))


 '("emacs/filesets"
   (files
    (under *emacs-support*
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



