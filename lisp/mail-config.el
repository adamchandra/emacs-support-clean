;;

(autoload 'vm "vm" "Start VM on your primary inbox." t)
(autoload 'vm-other-frame "vm" "Like `vm' but starts in another frame." t)
(autoload 'vm-visit-folder "vm" "Start VM on an arbitrary folder." t)
(autoload 'vm-visit-virtual-folder "vm" "Visit a VM virtual folder." t)
(autoload 'vm-mode "vm" "Run VM major mode on a buffer" t)
(autoload 'vm-mail "vm" "Send a mail message using VM." t)
(autoload 'vm-submit-bug-report "vm" "Send a bug report about VM." t)

(setq user-full-name "Adam Saunders"
      mail-from-style 'angles
      user-mail-address "saunders@cs.umass.edu"
      mail-default-reply-to user-mail-address)     

(setq vm-mutable-windows t
      vm-mutable-frames nil)
