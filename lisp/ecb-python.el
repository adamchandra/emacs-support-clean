;; ---------------------------------------------------------------------------
;; --- Some requirements we always need if using the ECB layout-engine -------
;; ---------------------------------------------------------------------------

(require 'ecb-util)
(require 'ecb-layout)
(require 'ecb-common-browser)

(eval-when-compile
  ;; to avoid compiler gripes
  (require 'cl))

;; turn off that annoying startup message
(setq ecb-tip-of-the-day nil)

(defun switch-to-left-analyse() 
  (interactive)
  (switch-to-layout "left-analyse"))

(defun switch-to-python-layout1() 
  (interactive)
  (switch-to-layout "python-layout1"))

(defun switch-to-layout(l) 
  (ecb-layout-switch l)
  (balance-windows)
  (ecb-redraw-layout))

(defun ecb-sample-keymap-setup()
  (interactive)
  ; activate/deactivate ecb
  (global-set-key [(control f11)] 'ecb-activate)
  (define-key ecb-mode-map [(control f11)] 'ecb-deactivate)

  ; control layouts/windows
  (define-key ecb-mode-map [(control f9)] 'ecb-redraw-layout)
  (define-key ecb-mode-map [(control f10)] 'ecb-toggle-ecb-windows)

  ; run python and sync the output windows 
  (define-key ecb-mode-map [(control f7)] 'ecb-python-sync)
  
  ; python-specific layouts
  (define-key ecb-mode-map [f9] 'switch-to-left-analyse)
  (define-key ecb-mode-map [f10] 'switch-to-python-layout1)
  )

;; Code for saving and restoring the state before activation

(defvar ecb-pre-python-layout nil)
(defvar ecb-pre-python-windows-height nil)
(defvar ecb-pre-python-compile-window-height nil)

(defun ecb-python-save-restore-layout(action)
  (cond ((equal action 'save)
	 (setq ecb-pre-python-layout ecb-layout-name
	       ecb-pre-python-windows-height ecb-windows-height
	       ecb-pre-python-compile-window-height ecb-compile-window-height))
	((equal action 'restore)
	 (setq ecb-layout-name ecb-pre-python-layout
	       ecb-windows-height ecb-pre-python-windows-height
	       ecb-compile-window-height ecb-pre-python-compile-window-height))))

;; ----------- Buffer creation/dedication 
(defconst ecb-python-unittest-buffer-name "*Unit Tests*")

(defecb-window-dedicator set-python-unittest-buffer
    ecb-python-unittest-buffer-name
  "window dedicated for this buffer."
  (switch-to-buffer (get-buffer-create ecb-python-unittest-buffer-name))
  (setq buffer-read-only t))


(defun ecb-python-unittest-sync ()
  "Synchronizes the buffer-info buffer with current source if changed.
   Can be called interactively but normally this should not be necessary because
   it will be called autom. with `ecb-current-buffer-sync-hook'."
  (interactive)

  (ecb-do-if-buffer-visible-in-ecb-frame 'ecb-python-unittest-buffer-name
    ;; The macro `ecb-do-if-buffer-visible-in-ecb-frame' binds locally the variables visible-buffer and visible-window:
    ;; visible-window:= (get-buffer-window ecb-examples-bufferinfo-buffer-name)
    ;; visible-buffer:= (get-buffer ecb-examples-bufferinfo-buffer-name)
    (let ((filename (buffer-file-name (current-buffer))))
      (if (and filename (file-readable-p filename))
	  (ecb-print-unittest-results visible-buffer filename)))))

;; call-process program &optional infile destination display &rest args
;; &optional infile destination display &rest args)
(defun ecb-print-unittest-results (buffer filename)
  "Insert python unit test results"
  (ecb-with-readonly-buffer buffer
    (erase-buffer)
    (call-process "w3m" nil buffer t "-dump" "/tmp/__pytest.html")))

;; ----------- End Buffer creation/dedication 

;; ----------- Buffer creation/dedication 
(defconst ecb-python-stdout-buffer-name "*Python Stdout*")

(defecb-window-dedicator set-python-stdout-buffer
    ecb-python-stdout-buffer-name
  "window dedicated for this buffer."
  (switch-to-buffer (get-buffer-create ecb-python-stdout-buffer-name))
  (setq buffer-read-only t))


(defun ecb-python-stdout-sync ()
  "Synchronizes the buffer-info buffer with current source if changed.
   Can be called interactively but normally this should not be necessary because
   it will be called autom. with `ecb-current-buffer-sync-hook'."
  (interactive)

  (ecb-do-if-buffer-visible-in-ecb-frame 'ecb-python-stdout-buffer-name
    ;; The macro `ecb-do-if-buffer-visible-in-ecb-frame' binds locally the variables visible-buffer and visible-window:
    ;; visible-window:= (get-buffer-window ecb-examples-bufferinfo-buffer-name)
    ;; visible-buffer:= (get-buffer ecb-examples-bufferinfo-buffer-name)
    (let ((filename (buffer-file-name (current-buffer))))
      (if (and filename (file-readable-p filename))
	  (ecb-print-stdout-results visible-buffer filename)))))

;; call-process program &optional infile destination display &rest args
;; &optional infile destination display &rest args)
(defun ecb-print-stdout-results (buffer filename)
  "Insert python stdout"
  (ecb-with-readonly-buffer buffer
    (erase-buffer)
    (call-process "testoob" nil buffer t "--html=/tmp/__pytest.html" "-s" filename)
    (ecb-python-unittest-sync)))

;; ----------- End Buffer creation/dedication 

;; general sync function
(defun ecb-python-sync()
  (interactive)
  (ecb-python-stdout-sync)
  (ecb-python-unittest-sync))

;; ---------------------------------------------------------------------------
;; --- The layout definition -----------
;; ---------------------------------------------------------------------------

(defconst *layout-name* "python-layout1")

(ecb-layout-define "python-layout1" top
  "This function creates the following layout:
    Edit window
    Unit test output window
    Methods window
    window/buffer of a layout."

  (set-python-unittest-buffer)
  (ecb-split-hor 0.51)
  (set-python-stdout-buffer)
  
  ;; the edit-window must be selected as the last step
  (select-window (next-window)))

;;; Activation setup
(defun ecb-python1-activate ()
  "Activate the layout"
  (interactive)
                                                                                                     
  (assert (featurep 'ecb) nil
          "ECB must be loaded!")
  (assert ecb-minor-mode nil
          "ECB must be activated!")
  (assert (equal (selected-frame) ecb-frame) nil
          "The ECB-frame must be selected!")
  (assert (not (ecb-string= ecb-layout-name ecb-python-unittest-buffer-name)) nil
          "The specified layout is already active!")
  
  ;; activating the synchronization of the bufferinfo-window
  (add-hook 'ecb-current-buffer-sync-hook
	    'ecb-python-unittest-sync)

  ;; saving the state
  (ecb-python-save-restore-layout 'save)

  ;; switch to our prefered layout
  (setq ecb-windows-height 6)
  (setq ecb-compile-window-height 0)
  (let ((ecb-change-layout-preserves-compwin-state nil))
    (ecb-layout-switch "python-layout1")))



;;; Dectivation 
(defun ecb-python1-deactivate ()
  "Deactivate the layout."
  (interactive)

  (assert (featurep 'ecb) nil
          "ECB must be loaded!")
  (assert ecb-minor-mode nil
          "ECB must be activated!")
  (assert (equal (selected-frame) ecb-frame) nil
          "The ECB-frame must be selected!")
  (assert (ecb-string= ecb-layout-name ecb-python-unittest-buffer-name) nil
          "The specified layout is not active!")
  
  (remove-hook 'ecb-current-buffer-sync-hook
               'ecb-python-unittest-sync)
  (ecb-python-save-restore-layout 'restore)
  (ecb-layout-switch ecb-layout-name))
