Workgroups2 is an Emacs session manager. It is based on the
experimental branch of the original "workgroups" extension.

If you find a bug - please post it here:
https://github.com/pashinin/workgroups2/issues


Install
----------------------
See the README.md file at: https://github.com/pashinin/workgroups2
Add the lines below to your .emacs configuration.
You can also set some keyboard shortcuts.

(require 'workgroups2)

(desktop-save-mode t)       ; save all opened files (or disable it)
(setq wg-prefix-key (kbd "C-c z")
      wg-restore-associated-buffers nil ; all buffers opened in current WG
      wg-use-default-session-file nil   ; turn off for "emacs --daemon"
      wg-default-session-file "~/.emacs_files/workgroups"
      wg-use-faces nil
      wg-morph-on nil)    ; animation off
(workgroups-mode 1)       ; Activate workgroups

(global-set-key (kbd "<pause>")     'wg-reload-session)
(global-set-key (kbd "C-S-<pause>") 'wg-save-session)
(global-set-key (kbd "s-z")         'wg-switch-to-workgroup)
(global-set-key (kbd "s-/")         'wg-switch-to-previous-workgroup)


Usage
----------------------
Most commands start with prefix `wg-prefix-key' (see above).
<prefix> <key>

<prefix> c    - create workgroup
<prefix> k    - kill workgroup
<prefix> v    - switch to workgroup
<prefix> C-s  - save session
<prefix> C-f  - load session

Help
----------------------
Type "<prefix> ?" for more help

See also: https://github.com/pashinin/workgroups2/wiki
