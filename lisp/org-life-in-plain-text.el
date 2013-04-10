;; From: http://doc.norang.ca/org-mode.html



;;TODO: ;; 4.2 Org-Mode Setup
;;TODO: 
;;TODO: ;; The following setup in my .emacs enables org-mode for most buffers. org-mode is the default mode for .org, .org_archive, and .txt files.
;;TODO: 
;;TODO:      ;;;
;;TODO:      ;;; Org Mode
;;TODO:      ;;;
;;TODO:      (add-to-list 'load-path (expand-file-name "~/git/org-mode/lisp"))
;;TODO:      (add-to-list 'auto-mode-alist '("\\.\\(org\\|org_archive\\|txt\\)$" . org-mode))
;;TODO:      (require 'org)
;;TODO:      ;;
;;TODO:      ;; Standard key bindings
;;TODO:      (global-set-key "\C-cl" 'org-store-link)
;;TODO:      (global-set-key "\C-ca" 'org-agenda)
;;TODO:      (global-set-key "\C-cb" 'org-iswitchb)
;;TODO: 
;;TODO: ;; That's all you need to get started using headlines and lists in org-mode.
;;TODO: ;; The rest of this document describes customizations I use in my setup, how I structure org-mode files, and other changes to fit the way I want org-mode to work.
;;TODO: 
;;TODO: ;; 4.3 Organizing Your Life Into Org Files
;;TODO: 
;;TODO: ;; Tasks are separated into logical groupings or projects. Use separate org files for large task groupings and subdirectories for collections of files for multiple projects that belong together.
;;TODO: ;; Here are sample files that I use.
;;TODO: ;; The following org files collect non-work related tasks:
;;TODO: ;;  _______________________________________________________
;;TODO: ;; |Filename____|Description_______________________________|
;;TODO: ;; |todo.org____|Personal_tasks_and_things_to_keep_track_of|
;;TODO: ;; |gsoc2009.org|Google_Summer_of_Code_stuff_for_2009______|
;;TODO: ;; |farm.org____|Farm_related_tasks________________________|
;;TODO: ;; |mark.org____|Tasks_related_to_my_son_Mark______________|
;;TODO: ;; |org.org_____|Org-mode_related_tasks____________________|
;;TODO: ;; |git.org_____|Git_related_tasks_________________________|
;;TODO: 
;;TODO: ;; The following org-file collects org capture notes and tasks:
;;TODO: ;;  ______________________________
;;TODO: ;; |Filename__|Description________|
;;TODO: ;; |refile.org|Capture_task_bucket|
;;TODO: 
;;TODO: ;; The following work-related org-files keep my business notes (using fictitious client names)
;;TODO: ;;  ___________________________________________________
;;TODO: ;; |Filename___|Description____________________________|
;;TODO: ;; |norang.org_|Norang_tasks_and_notes_________________|
;;TODO: ;; |XYZ.org____|XYZ_Corp_tasks_and_notes_______________|
;;TODO: ;; |ABC.org____|ABC_Ltd_tasks__________________________|
;;TODO: ;; |ABC-DEF.org|ABC_Ltd_tasks_for_their_client_DEF_Corp|
;;TODO: ;; |ABC-KKK.org|ABC_Ltd_tasks_for_their_client_KKK_Inc_|
;;TODO: ;; |YYY.org____|YYY_Inc_tasks__________________________|
;;TODO: 
;;TODO: ;; Org-mode is great for dealing with multiple clients and client projects. An org file becomes the collection of projects, notes, etc. for a single client or client-project.
;;TODO: ;; Client ABC Ltd. has multiple customer systems that I work on. Separating the tasks for each client-customer into separate org files helps keep things logically grouped and since clients come and go this allows entire org files to be added or dropped from my agenda to keep only what is important visible in agenda views.
;;TODO: ;; Other org files are used for publishing only and do not contribute to the agenda. See 16 for more details.
;;TODO: 
;;TODO: ;; 4.4 Agenda Setup
;;TODO: 
;;TODO: ;; Here is my current org-agenda-files setup.
;;TODO: 
;;TODO:      (setq org-agenda-files (quote ("~/git/org"
;;TODO:                                     "~/git/org/client1"
;;TODO:                                     "~/git/client2")))
;;TODO: 
;;TODO: ;; org-mode manages the org-agenda-files variable automatically using C-c [ and C-c ] to add and remove files respectively. However, this replaces my directory list with a list of explicit filenames instead and is not what I want. If this occurs then adding a new org file to any of the above directories will not contribute to my agenda and I will probably miss something important.
;;TODO: ;; I have disabled the C-c [ and C-c ] keys in org-mode-hook to prevent messing up my list of directories in the org-agenda-files variable. I just add and remove directories manually in my .emacs file. Changing the list of directories in org-agenda-files happens very rarely since new files in existing directories are automatically picked up.
;;TODO: ;; I also disable the comment function C-c ; since I never use those. I kept accidentally hitting this key sequence when doing C-c singlequote for editing source blocks.
;;TODO: ;; In the example above I have ~/git/client2 in a separate git repository from ~/git/org. This gives me the flexibility of leaving confidential information at the client site and having all of my personal information available everywhere I use org-mode. I synchronize my personal repositories on multiple machines and skip the confidential info on the non-client laptop I travel with. org-agenda-files
;;TODO: ;; on this laptop does not include the ~/git/client2 directory.
;;TODO: 
;;TODO: ;; 4.5 Org File Structure
;;TODO: 
;;TODO: ;; Most of my org files are set up with level 1 headings as main categories only. Tasks and projects normally start as level 2.
;;TODO: ;; Here are some examples of my level 1 headings in
;;TODO: ;; todo.org:
;;TODO: 
;;TODO: ;; * Special Dates
;;TODO: ;;   Includes level 2 headings for
;;TODO: ;;
;;TODO: ;;   o Birthdays
;;TODO: ;;   o Anniversaries
;;TODO: ;;   o Holidays
;;TODO: 
;;TODO: ;; * Finances
;;TODO: ;; * Health and Recreation
;;TODO: ;; * House Maintenance
;;TODO: ;; * Lawn and Garden Maintenance
;;TODO: ;; * Notes
;;TODO: ;; * Tasks
;;TODO: ;; * Vehicle Maintenance
;;TODO: ;; * Passwords
;;TODO: 
;;TODO: ;; norang.org:
;;TODO: 
;;TODO: ;; * System Maintenance
;;TODO: ;; * Payroll
;;TODO: ;; * Accounting
;;TODO: ;; * Finances
;;TODO: ;; * Hardware Maintenance
;;TODO: ;; * Tasks
;;TODO: ;; * Research and Development
;;TODO: ;; * Notes
;;TODO: ;; * Purchase Order Tracking
;;TODO: ;; * Passwords
;;TODO: 
;;TODO: ;; Each of these level 1 tasks normally has a property drawer specifying the category for any tasks in that tree. Level 1 headings are set up like this:
;;TODO: 
;;TODO: ;;   * Health and Recreation
;;TODO: ;;     PROPERTIES:
;;TODO: ;;     CATEGORY: Health
;;TODO: ;;     END:
;;TODO: ;;     ...
;;TODO: ;;   * House Maintenance
;;TODO: ;;     PROPERTIES:
;;TODO: ;;     CATEGORY: House
;;TODO: ;;     END:
;;TODO: 
;;TODO: 
;;TODO: ;; 4.6 Key bindings
;;TODO: 
;;TODO: ;; I live in the agenda. To make getting to the agenda faster I mapped F12 to the sequence C-c a since I'm using it hundreds of times a day.
;;TODO: ;; I have the following custom key bindings set up for my emacs (sorted by frequency).
;;TODO: ;;  __________________________________________________________________
;;TODO: ;; |Key____|For____________________________________________|Used______|
;;TODO: ;; |F12____|Agenda_(1_key_less_than_C-c_a)_________________|Very_Often|
;;TODO: ;; |C-c_b__|Switch_to_org_file_____________________________|Very_Often|
;;TODO: ;; |F11____|Goto_currently_clocked_item____________________|Very_Often|
;;TODO: ;; |C-M-r__|Capture_a_task_________________________________|Very_Often|
;;TODO: ;; |C-F11__|Clock_in_a_task_(show_menu_with_prefix)________|Often_____|
;;TODO: ;; |f9_g___|Gnus_-_I_check_mail_regularly__________________|Often_____|
;;TODO: ;; |f5_____|Show_todo_items_for_this_subtree_______________|Often_____|
;;TODO: ;; |S-f5___|Widen__________________________________________|Often_____|
;;TODO: ;; |f9_b___|Quick_access_to_bbdb_data______________________|Often_____|
;;TODO: ;; |f9_c___|Calendar_access________________________________|Often_____|
;;TODO: ;; |C-S-f12|Save_buffers_and_publish_current_project_______|Often_____|
;;TODO: ;; |C-c_l__|Store_a_link_for_retrieval_with_C-c_C-l________|Often_____|
;;TODO: ;; |f8_____|Go_to_next_org_file_in_org-agenda-files________|Sometimes_|
;;TODO: ;; |f9_r___|Boxquote_selected_region_______________________|Sometimes_|
;;TODO: ;; |f9_t___|Insert_inactive_timestamp______________________|Sometimes_|
;;TODO: ;; |f9_v___|Toggle_visible_mode_(for_showing/editing_links)|Sometimes_|
;;TODO: ;; |C-f9___|Previous_buffer________________________________|Sometimes_|
;;TODO: ;; |C-f10__|Next_buffer____________________________________|Sometimes_|
;;TODO: ;; |C-x_n_r|Narrow_to_region_______________________________|Sometimes_|
;;TODO: ;; |f9_f___|Boxquote_insert_a_file_________________________|Sometimes_|
;;TODO: ;; |f9_i___|Info_manual____________________________________|Sometimes_|
;;TODO: ;; |f9_I___|Punch_Clock_In_________________________________|Sometimes_|
;;TODO: ;; |f9_O___|Punch_Clock_Out________________________________|Sometimes_|
;;TODO: ;; |f9_o___|Switch_to_org_scratch_buffer___________________|Sometimes_|
;;TODO: ;; |f9_s___|Switch_to_scratch_buffer_______________________|Sometimes_|
;;TODO: ;; |C-c_r__|Capture_a_task_(from_my_mobile_phone)__________|Rare______|
;;TODO: ;; |f9_h___|Hide_other_tasks_______________________________|Rare______|
;;TODO: ;; |f7_____|Toggle_line_truncation/wrap____________________|Rare______|
;;TODO: ;; |f9_T___|Tabify_region__________________________________|Rare______|
;;TODO: ;; |f9_U___|Untabify_region________________________________|Rare______|
;;TODO: ;; |C-c_a__|Enter_Agenda_(minimal_emacs_testing)___________|Rare______|
;;TODO: 
;;TODO: ;; Here is the keybinding setup in lisp:
;;TODO: 
;;TODO: ;;   ;; Custom Key Bindings
;;TODO: ;;   (global-set-key (kbd "<f12>") 'org-agenda)
;;TODO: ;;   (global-set-key (kbd "<f5>") 'bh/org-todo)
;;TODO: ;;   (global-set-key (kbd "<S-f5>") 'bh/widen)
;;TODO: ;;   (global-set-key (kbd "<f7>") 'bh/set-truncate-lines)
;;TODO: ;;   (global-set-key (kbd "<f8>") 'org-cycle-agenda-files)
;;TODO: ;;   (global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
;;TODO: ;;   (global-set-key (kbd "<f9> b") 'bbdb)
;;TODO: ;;   (global-set-key (kbd "<f9> c") 'calendar)
;;TODO: ;;   (global-set-key (kbd "<f9> f") 'boxquote-insert-file)
;;TODO: ;;   (global-set-key (kbd "<f9> g") 'gnus)
;;TODO: ;;   (global-set-key (kbd "<f9> h") 'bh/hide-other)
;;TODO: ;;   (global-set-key (kbd "<f9> n") 'org-narrow-to-subtree)
;;TODO: ;;   (global-set-key (kbd "<f9> w") 'widen)
;;TODO: ;;   (global-set-key (kbd "<f9> u") 'bh/narrow-up-one-level)
;;TODO: ;;
;;TODO: ;;   (global-set-key (kbd "<f9> I") 'bh/punch-in)
;;TODO: ;;   (global-set-key (kbd "<f9> O") 'bh/punch-out)
;;TODO: ;;
;;TODO: ;;   (global-set-key (kbd "<f9> o") 'bh/make-org-scratch)
;;TODO: ;;
;;TODO: ;;   (global-set-key (kbd "<f9> r") 'boxquote-region)
;;TODO: ;;   (global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)
;;TODO: ;;
;;TODO: ;;   (global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
;;TODO: ;;   (global-set-key (kbd "<f9> T") 'tabify)
;;TODO: ;;   (global-set-key (kbd "<f9> U") 'untabify)
;;TODO: ;;
;;TODO: ;;   (global-set-key (kbd "<f9> v") 'visible-mode)
;;TODO: ;;   (global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
;;TODO: ;;   (global-set-key (kbd "C-<f9>") 'previous-buffer)
;;TODO: ;;   (global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
;;TODO: ;;   (global-set-key (kbd "C-x n r") 'narrow-to-region)
;;TODO: ;;   (global-set-key (kbd "C-<f10>") 'next-buffer)
;;TODO: ;;   (global-set-key (kbd "<f11>") 'org-clock-goto)
;;TODO: ;;   (global-set-key (kbd "C-<f11>") 'org-clock-in)
;;TODO: ;;   (global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
;;TODO: ;;   (global-set-key (kbd "C-M-r") 'org-capture)
;;TODO: ;;   (global-set-key (kbd "C-c r") 'org-capture)
;;TODO: 
;;TODO:      (defun bh/hide-other ()
;;TODO:        (interactive)
;;TODO:        (save-excursion
;;TODO:          (org-back-to-heading 'invisible-ok)
;;TODO:          (hide-other)
;;TODO:          (org-cycle)
;;TODO:          (org-cycle)
;;TODO:          (org-cycle)))
;;TODO: 
;;TODO:      (defun bh/set-truncate-lines ()
;;TODO:        "Toggle value of truncate-lines and refresh window display."
;;TODO:        (interactive)
;;TODO:        (setq truncate-lines (not truncate-lines))
;;TODO:        ;; now refresh window display (an idiom from simple.el):
;;TODO:        (save-excursion
;;TODO:          (set-window-start (selected-window)
;;TODO:                            (window-start (selected-window)))))
;;TODO: 
;;TODO:      (defun bh/make-org-scratch ()
;;TODO:        (interactive)
;;TODO:        (find-file "/tmp/publish/scratch.org")
;;TODO:        (gnus-make-directory "/tmp/publish"))
;;TODO: 
;;TODO:      (defun bh/switch-to-scratch ()
;;TODO:        (interactive)
;;TODO:        (switch-to-buffer "*scratch*"))
;;TODO: 
;;TODO: ;; The main reason I have special key bindings (like F11, and F12) is so that the keys work in any mode. If I'm in the Gnus summary buffer then C-u C-c C-x C-i doesn't work, but the C-F11 key combination does and this saves me time since I don't have to visit an org-mode buffer first just to clock in a recent task.
;;TODO: 
;;TODO: ;; 5 Tasks and States
;;TODO: 
;;TODO: ;; I use one set of TODO keywords for all of my org files. Org-mode lets you define TODO keywords per file but I find it's easier to have a standard set of TODO keywords globally so I can use the same setup in any org file I'm working with.
;;TODO: ;; The only exception to this is this document :) since I don't want org-mode hiding the TODO keyword when it appears in headlines. I've set up a dummy #+SEQ_TODO: FIXME FIXED entry at the top of this file just to leave my TODO keyword untouched in this document.
;;TODO: 
;; 5.1 TODO keywords

;; I use a light colour theme in emacs. I find this easier to read on bright sunny days.
;; Here are my TODO state keywords and colour settings:

     (setq org-todo-keywords
           (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
                   (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))

     (setq org-todo-keyword-faces
           (quote (("TODO" :foreground "red" :weight bold)
                   ("NEXT" :foreground "blue" :weight bold)
                   ("DONE" :foreground "forest green" :weight bold)
                   ("WAITING" :foreground "orange" :weight bold)
                   ("HOLD" :foreground "magenta" :weight bold)
                   ("CANCELLED" :foreground "forest green" :weight bold)
                   ("PHONE" :foreground "forest green" :weight bold))))


;;TODO: ;; 5.1.1 Task States
;;TODO: 
;;TODO: ;; Tasks go through the sequence TODO -> DONE.
;;TODO: ;; The following diagram shows the possible state transitions for a task.
;;TODO: ;;  normal_task_states.png
;;TODO: 
;;TODO: ;; 5.1.2 Project Task States
;;TODO: 
;;TODO: ;; I use a lazy project definition. I don't like to bother with manually stating 'this is a project' and 'that is not a project'. For me a project definition is really simple. If a task has subtasks with a todo keyword then it's a project. That's it.
;;TODO: ;; Projects can be defined at any level - just create a task with a todo state keyword that has at least one subtask also with a todo state keyword and you have a project. Projects use the same todo keywords as regular tasks. One subtask of a project needs to be marked NEXT so the project is not on the stuck projects list.
;;TODO: 
;;TODO: ;; 5.1.3 Phone Calls
;;TODO: 
;;TODO: ;; Telephone calls are special. They are created in a done state by a capture task. The time of the call is recorded for as long as the capture task is active. If I need to look up other details and want to close the capture task early I can just C-c C-c to close the capture task (stopping the clock) and then f9 SPC to resume the clock in the phone call while I do other things.
;;TODO: ;;  phone_states.png
;;TODO: 
;;TODO: ;; 5.2 Fast Todo Selection
;;TODO: 
;;TODO: ;; Fast todo selection allows changing from any task todo state to any other state directly by selecting the appropriate key from the fast todo selection key menu. This is a great feature!
;;TODO: 
;;TODO:      (setq org-use-fast-todo-selection t)
;;TODO: 
;;TODO: ;; Changing a task state is done with C-c C-t KEY
;;TODO: ;; where KEY is the appropriate fast todo state selection key as defined in org-todo-keywords.
;;TODO: ;; The setting
;;TODO: 
;;TODO:      (setq org-treat-S-cursor-todo-selection-as-state-change nil)
;;TODO: 
;;TODO: ;; allows changing todo states with S-left and S-right skipping all of the normal processing when entering or leaving a todo state. This cycles through the todo states but skips setting timestamps and entering notes which is very convenient when all you want to do is fix up the status of an entry.
;;TODO: 
;;TODO: ;; 5.3 TODO state triggers
;;TODO: 
;;TODO: ;; I have a few triggers that automatically assign tags to tasks based on state changes. If a task moves to CANCELLED state then it gets a CANCELLED tag. Moving a CANCELLED task back to TODO removes the CANCELLED tag. These are used for filtering tasks in agenda views which I'll talk about later.
;;TODO: ;; The triggers break down to the following rules:
;;TODO: 
;;TODO: ;; * Moving a task to CANCELLED adds a CANCELLED tag
;;TODO: ;; * Moving a task to WAITING adds a WAITING tag
;;TODO: ;; * Moving a task to HOLD adds a WAITING tag
;;TODO: ;; * Moving a task to a done state removes a WAITING tag
;;TODO: ;; * Moving a task to TODO removes WAITING and CANCELLED tags
;;TODO: ;; * Moving a task to NEXT removes a WAITING tag
;;TODO: ;; * Moving a task to DONE removes WAITING and CANCELLED tags
;;TODO: 
;;TODO: ;; The tags are used to filter tasks in the agenda views conveniently.
;;TODO: 
;;TODO:      (setq org-todo-state-tags-triggers
;;TODO:            (quote (("CANCELLED" ("CANCELLED" . t))
;;TODO:                    ("WAITING" ("WAITING" . t))
;;TODO:                    ("HOLD" ("WAITING" . t) ("HOLD" . t))
;;TODO:                    (done ("WAITING") ("HOLD"))
;;TODO:                    ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
;;TODO:                    ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
;;TODO:                    ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))
;;TODO: 
;;TODO: 
;; 6 Adding New Tasks Quickly with Org Capture

;; Org Capture mode replaces remember mode for capturing tasks and notes.
;; To add new tasks efficiently I use a minimal number of capture templates. I used to have lots of capture templates, one for each org-file. I'd start org-capture with C-M-r and then pick a template that filed the task under * Tasks in the appropriate file. This binding of C-M-r overrides the default emacs reverse regexp search but I rarely use that and can invoke it from the M-x command line if I
;; really need it. I like C-M-r better than C-c r since it feels like a single keystroke instead of two separate keys and I've been using this so long that my fingers just do the right thing without really thinking about it.
;; I found I still needed to refile these capture tasks again to the correct location within the org-file so all of these different capture templates weren't really helping at all. Since then I've changed my workflow to use a minimal number of capture templates &#x2013; I create the new task quickly and refile it once. This also saves me from maintaining my org-capture templates when I add a new org
;; file.

;; 6.1 Capture Templates

;; When a new task needs to be added I categorize it into one of a few things:

;; * A phone call (p)
;; * An email I need to respond to (r)
;; * A new task (t)
;; * A new note (n)
;; * An interruption (j)
;; * A new habit (h)

;; and pick the appropriate capture task.
;; Here is my setup for org-capture

             (setq org-directory *orgfile-dir*)
             (setq org-default-notes-file (expand-file-name (concat *orgfile-dir* "refile-agenda.org")))
             (setq org-journal-file (expand-file-name (concat *orgfile-dir* "diary.org")))
             
             
             ;; I use C-M-r to start capture mode
             (global-set-key (kbd "C-M-r") 'org-capture)
             ;; I use C-c r to start capture mode when using SSH from my Android phone
             ;; (global-set-key (kbd "C-c r") 'org-capture)
             
             ;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
             (setq org-capture-templates
                   (quote (("t" "todo" entry (file org-default-notes-file)
                            "* TODO %?\n%U\n" :clock-in t :clock-resume t)
                           ("r" "respond" entry (file org-default-notes-file)
                            "* NEXT Respond to %:from on %:subject\nSCHEDULED: %t\n%U\n" :clock-in t :clock-resume t :immediate-finish t)
                           ("n" "note" entry (file org-default-notes-file)
                            "* %? :NOTE:\n%U\n" :clock-in t :clock-resume t)
                           ("j" "Journal" entry (file+datetree org-journal-file)
                            "* %?\n%U\n" :clock-in t :clock-resume t)
                           ("w" "org-protocol" entry (file org-default-notes-file)
                            "* TODO Review %c\n%U\n" :immediate-finish t)
                           ("p" "Phone call" entry (file org-default-notes-file)
                            "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
                           ("h" "Habit" entry (file org-default-notes-file)
                            "* NEXT %?\n%U\nSCHEDULED: %(format-time-string \"<%Y-%m-%d %a .+1d/3d>\")\n:PROPERTIES:\n:STYLE: habit\n:REPEAT_TO_STATE: NEXT\n:END:\n"))))





;;TODO: ;; Capture mode now handles automatically clocking in and out of a capture task. This all works out of the box now without special hooks. When I start a capture mode task the task is clocked in as specified by :clock-in t and when the task is filed with C-c C-c the clock resumes on the original clocking task.
;;TODO: ;; The quick clocking in and out of capture mode tasks (often it takes less than a minute to capture some new task details) can leave empty clock drawers in my tasks which aren't really useful. Since I remove clocking lines with 0:00 length I end up with a clock drawer like this:
;;TODO: 
;;TODO: ;;     * TODO New Capture Task
;;TODO: ;;       LOGBOOK:
;;TODO: ;;       END:
;;TODO: ;;       [2010-05-08 Sat 13:53]
;;TODO: 
;;TODO: ;; I have the following setup to remove these empty LOGBOOK drawers if they occur.
;;TODO: 
;;TODO:      ;; Remove empty LOGBOOK drawers on clock out
;;TODO:      (defun bh/remove-empty-drawer-on-clock-out ()
;;TODO:        (interactive)
;;TODO:        (save-excursion
;;TODO:          (beginning-of-line 0)
;;TODO:          (org-remove-empty-drawer-at "LOGBOOK" (point))))
;;TODO: 
;;TODO:      (add-hook 'org-clock-out-hook 'bh/remove-empty-drawer-on-clock-out 'append)
;;TODO: 
;;TODO: 
;;TODO: ;; 6.2 Separate file for Capture Tasks
;;TODO: 
;;TODO: ;; I have a single org file which is the target for my capture templates.
;;TODO: ;; I store notes, tasks, phone calls, and org-protocol tasks in refile.org. I used to use multiple files but found that didn't really have any advantage over a single file.
;;TODO: ;; Normally this file is empty except for a single line at the top which creates a REFILE tag for anything in the file.
;;TODO: ;; The file has a single permanent line at the top like this
;;TODO: 
;;TODO: ;;     #+FILETAGS: REFILE
;;TODO: 
;;TODO: 
;;TODO: ;; 6.3 Capture Tasks is all about being FAST
;;TODO: 
;;TODO: ;; Okay I'm in the middle of something and oh yeah - I have to remember to do that. I don't stop what I'm doing. I'm probably clocking a project I'm working on and I don't want to lose my focus on that but I can't afford to forget this little thing that just came up.
;;TODO: ;; So what do I do? Hit C-M-r to start capture mode and select t since it's a new task and I get a buffer like this:
;;TODO: 
;;TODO: ;;     * TODO
;;TODO: ;;       [2010-08-05 Thu 21:06]
;;TODO: ;;       Capture_Tasks_is_all_about_being_FAST
;;TODO: 
;;TODO: ;; Enter the details of the TODO item and C-c C-c to file it away in refile.org and go right back to what I'm really working on secure in the knowledge that that item isn't going to get lost and I don't have to think about it anymore at all now.
;;TODO: ;; The amount of time I spend entering the captured note is clocked. The capture templates are set to automatically clock in and out of the capture task. This is great for interruptions and telephone calls too.
;;TODO: 
;;TODO: ;; 7 Refiling Tasks
;;TODO: 
;;TODO: ;; Refiling tasks is easy. After collecting a bunch of new tasks in my refile.org file using capture mode I need to move these to the correct org file and topic. All of my active org-files are in my org-agenda-files variable and contribute to the agenda.
;;TODO: ;; I collect capture tasks in refile.org for up to a week. These now stand out daily on my block agenda and I usually refile them during the day. I like to keep my refile task list empty.
;;TODO: 

;; 7.1 Refile Setup

;; To refile tasks in org you need to tell it where you want to refile things.
;; In my setup I let any file in org-agenda-files and the current file contribute to the list of valid refile targets.
;; I've recently moved to using IDO to complete targets directly. I find this to be faster than my previous complete in steps setup. At first I didn't like IDO but after reviewing the documentation again and learning about C-SPC to limit target searches I find it is much better than my previous complete-in-steps setup. Now when I want to refile something I do C-c C-w to start the refile process, then
;; type something to get some matching targets, then C-SPC to restrict the matches to the current list, then continue searching with some other text to find the target I need. C-j also selects the current completion as the final target. I like this a lot. I show full outline paths in the targets so I can have the same heading in multiple subtrees or projects and still tell them apart while refiling.
;; I now exclude DONE state tasks as valid refile targets. This helps to keep the refile target list to a reasonable size.
;; Here is my refile configuration:

     ; Targets include this file and any file contributing to the agenda - up to 9 levels deep
     (setq org-refile-targets (quote ((nil :maxlevel . 9)
                                      (org-agenda-files :maxlevel . 9))))

     ; Use full outline paths for refile targets - we file directly with IDO
     (setq org-refile-use-outline-path t)

     ; Targets complete directly with IDO
     (setq org-outline-path-complete-in-steps nil)

     ; Allow refile to create parent tasks with confirmation
     (setq org-refile-allow-creating-parent-nodes (quote confirm))

     ; Use IDO for both buffer and file completion and ido-everywhere to t
     (setq org-completion-use-ido t)
     (setq ido-everywhere t)
     (setq ido-max-directory-size 100000)
     (ido-mode (quote both))
     ; Use the current window when visiting files and buffers with ido
     (setq ido-default-file-method 'selected-window)
     (setq ido-default-buffer-method 'selected-window)

     ;;;; Refile settings
     ; Exclude DONE state tasks from refile targets
     (defun bh/verify-refile-target ()
       "Exclude todo keywords with a done state from refile targets"
       (not (member (nth 2 (org-heading-components)) org-done-keywords)))

     (setq org-refile-target-verify-function 'bh/verify-refile-target)

;; To refile a task to my norang.org file under System Maintenance I just put the cursor on the task and hit C-c C-w and enter nor C-SPC sys RET and it's done. IDO completion makes locating targets a snap.

;;TODO: ;; 7.2 Refiling Tasks
;;TODO: 
;;TODO: ;; Tasks to refile are in their own section of the block agenda. To find tasks to refile I run my agenda view with F12 SPC and scroll down to second section of the block agenda: Tasks to Refile. This view shows all tasks (even ones marked in a done state). Alternatively I just use F12 r on my slower Eee PC.
;;TODO: ;; Bulk refiling in the agenda works very well for multiple tasks going to the same place. Just mark the tasks with m and then B r to refile all of them to a new location. Occasionally I'll also refile tasks as subtasks of the current clocking task using C-2 C-c C-w from the refile.org file.
;;TODO: ;; Refiling all of my tasks tends to take less than a minute so I normally do this a couple of times a day.
;;TODO: 
;;TODO: ;; 7.3 Refiling Notes
;;TODO: 
;;TODO: ;; I keep a * Notes headline in most of my org-mode files. Notes have a NOTE tag which is created by the capture template for notes. This allows finding notes across multiple files easily using the agenda search functions.
;;TODO: ;; Notes created by capture tasks go first to refile.org and are later refiled to the appropriate project file. Some notes that are project related get filed to the appropriate project instead of under the catchall * NOTES task. Generally these types of notes are specific to the project and not generally useful &#x2013; so removing them from the notes list when the project is archived makes sense.
;;TODO: 
;;TODO: ;; 7.4 Refiling Phone Calls
;;TODO: 
;;TODO: ;; Phone calls are handled using capture mode. I time my calls using the capture mode template settings to clock in and out the capture task while the phone call is in progress.
;;TODO: ;; Phone call tasks collect in refile.org and are later refiled to the appropriate location. Some phone calls are billable and we want these tracked in the appropriate category.
;;TODO: 
;;TODO: ;; 8 Custom agenda views
;;TODO: 
;;TODO: ;; I now have one block agenda view that has everything on it. I also keep separate single view agenda commands for use on my slower Eee PC - since it takes prohibitively long to generate my block agenda on that slow machine. I'm striving to simplify my layout with everything at my fingertips in a single agenda on my workstation which is where I spend the bulk of my time.
;;TODO: ;; Most of my old custom agenda views were rendered obsolete when filtering functionality was added to the agenda in newer versions of org-mode and now with block agenda functionality I can combine everything into a single view.
;;TODO: ;; Custom agenda views are used for:
;;TODO: 
;;TODO: ;; * Single block agenda shows the following
;;TODO: ;;
;;TODO: ;;     o overview of today
;;TODO: ;;     o Finding tasks to be refiled
;;TODO: ;;     o Finding stuck projects
;;TODO: ;;     o Finding NEXT tasks to work on
;;TODO: ;;     o Show all related tasks
;;TODO: ;;     o Reviewing projects
;;TODO: ;;     o Finding tasks waiting on something
;;TODO: ;;     o Findings tasks to be archived
;;TODO: 
;;TODO: ;; * Finding notes
;;TODO: ;; * Viewing habits
;;TODO: 
;;TODO: ;; If I want just today's calendar view then F12 a is still faster than generating the block agenda - especially if I want to view a week or month's worth of information, or check my clocking data. In that case the extra detail on the block agenda view is never really needed and I don't want to spend time waiting for it to be generated.
;;TODO: 
;; 8.1 Setup


     ;; Do not dim blocked tasks
     (setq org-agenda-dim-blocked-tasks nil)

     ;; Compact the block agenda view
     (setq org-agenda-compact-blocks t)

     ;; Custom agenda command definitions
     (setq org-agenda-custom-commands
           (quote (("N" "Notes" tags "NOTE"
                    ((org-agenda-overriding-header "Notes")
                     (org-tags-match-list-sublevels t)))
                   ("h" "Habits" tags-todo "STYLE=\"habit\""
                    ((org-agenda-overriding-header "Habits")
                     (org-agenda-sorting-strategy
                      '(todo-state-down effort-up category-keep))))
                   (" " "Agenda"
                    ((agenda "" nil)
                     (tags "REFILE"
                           ((org-agenda-overriding-header "Tasks to Refile")
                            (org-tags-match-list-sublevels nil)))
                     (tags-todo "-CANCELLED/!"
                                ((org-agenda-overriding-header "Stuck Projects")
                                 (org-agenda-skip-function 'bh/skip-non-stuck-projects)))
                     (tags-todo "-WAITING-CANCELLED/!NEXT"
                                ((org-agenda-overriding-header "Next Tasks")
                                 (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
                                 (org-agenda-todo-ignore-scheduled t)
                                 (org-agenda-todo-ignore-deadlines t)
                                 (org-agenda-todo-ignore-with-date t)
                                 (org-tags-match-list-sublevels t)
                                 (org-agenda-sorting-strategy
                                  '(todo-state-down effort-up category-keep))))
                     (tags-todo "-REFILE-CANCELLED/!-HOLD-WAITING"
                                ((org-agenda-overriding-header "Tasks")
                                 (org-agenda-skip-function 'bh/skip-project-tasks-maybe)
                                 (org-agenda-todo-ignore-scheduled t)
                                 (org-agenda-todo-ignore-deadlines t)
                                 (org-agenda-todo-ignore-with-date t)
                                 (org-agenda-sorting-strategy
                                  '(category-keep))))
                     (tags-todo "-HOLD-CANCELLED/!"
                                ((org-agenda-overriding-header "Projects")
                                 (org-agenda-skip-function 'bh/skip-non-projects)
                                 (org-agenda-sorting-strategy
                                  '(category-keep))))
                     (tags-todo "-CANCELLED+WAITING/!"
                                ((org-agenda-overriding-header "Waiting and Postponed Tasks")
                                 (org-agenda-skip-function 'bh/skip-stuck-projects)
                                 (org-tags-match-list-sublevels nil)
                                 (org-agenda-todo-ignore-scheduled 'future)
                                 (org-agenda-todo-ignore-deadlines 'future)))
                     (tags "-REFILE/"
                           ((org-agenda-overriding-header "Tasks to Archive")
                            (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
                            (org-tags-match-list-sublevels nil))))
                    nil)
                   ("r" "Tasks to Refile" tags "REFILE"
                    ((org-agenda-overriding-header "Tasks to Refile")
                     (org-tags-match-list-sublevels nil)))
                   ("#" "Stuck Projects" tags-todo "-CANCELLED/!"
                    ((org-agenda-overriding-header "Stuck Projects")
                     (org-agenda-skip-function 'bh/skip-non-stuck-projects)))
                   ("n" "Next Tasks" tags-todo "-WAITING-CANCELLED/!NEXT"
                    ((org-agenda-overriding-header "Next Tasks")
                     (org-agenda-skip-function 'bh/skip-projects-and-habits-and-single-tasks)
                     (org-agenda-todo-ignore-scheduled t)
                     (org-agenda-todo-ignore-deadlines t)
                     (org-agenda-todo-ignore-with-date t)
                     (org-tags-match-list-sublevels t)
                     (org-agenda-sorting-strategy
                      '(todo-state-down effort-up category-keep))))
                   ("R" "Tasks" tags-todo "-REFILE-CANCELLED/!-HOLD-WAITING"
                    ((org-agenda-overriding-header "Tasks")
                     (org-agenda-skip-function 'bh/skip-project-tasks-maybe)
                     (org-agenda-sorting-strategy
                      '(category-keep))))
                   ("p" "Projects" tags-todo "-HOLD-CANCELLED/!"
                    ((org-agenda-overriding-header "Projects")
                     (org-agenda-skip-function 'bh/skip-non-projects)
                     (org-agenda-sorting-strategy
                      '(category-keep))))
                   ("w" "Waiting Tasks" tags-todo "-CANCELLED+WAITING/!"
                    ((org-agenda-overriding-header "Waiting and Postponed tasks"))
                    (org-tags-match-list-sublevels nil))
                   ("A" "Tasks to Archive" tags "-REFILE/"
                    ((org-agenda-overriding-header "Tasks to Archive")
                     (org-agenda-skip-function 'bh/skip-non-archivable-tasks)
                     (org-tags-match-list-sublevels nil))))))

;;TODO: ;; My block agenda view looks like this when not narrowed to a project. This shows top-level projects and NEXT tasks but hides the project details since we are not focused on any particular project.
;;TODO: ;;  block-agenda-nonproject.png
;;TODO: ;; After selecting a project (with P on any task in the agenda) the block agenda changes to show the project and any subprojects in the Projects section. Tasks show project-related tasks that are hidden when not narrowed to a project.
;;TODO: ;; This makes it easy to focus on the task at hand.
;;TODO: ;;  block-agenda-project.png
;;TODO: ;; I generally work top-down on the agenda. Things with deadlines and scheduled dates (planned to work on today or earlier) show up in the agenda at the top.
;;TODO: ;; My day goes generally like this:
;;TODO: 
;;TODO: ;; * Punch in (this starts the clock on the default task)
;;TODO: ;; * Look at the agenda and make a mental note of anything important to deal with today
;;TODO: ;; * Read email and news
;;TODO: 
;;TODO: ;;     o create notes, and tasks for things that need responses with org-capture
;;TODO: 
;;TODO: ;; * Check refile tasks and respond to emails
;;TODO: ;; * Look at my agenda and work on important tasks for today
;;TODO: 
;;TODO: ;;     o Clock it in
;;TODO: ;;     o Work on it until it is DONE or it gets interrupted
;;TODO: 
;;TODO: ;; * Work on tasks
;;TODO: ;; * Make journal entries (C-M-r j) for interruptions
;;TODO: ;; * Punch out for lunch and punch back in after lunch
;;TODO: ;; * work on more tasks
;;TODO: ;; * Refile tasks to empty the list
;;TODO: ;;
;;TODO: ;;     o Tag tasks to be refiled with m collecting all tasks for the same target
;;TODO: ;;     o Bulk refile the tasks to the target location with B r
;;TODO: ;;     o Repeat (or refile individually with C-c C-w) until all refile tasks are gone
;;TODO: 
;;TODO: ;; * Mark habits done today as DONE
;;TODO: ;; * Punch out at the end of the work day
;;TODO: 
;;TODO: 
;;TODO: ;; 8.2 What do I work on next?
;;TODO: 
;;TODO: ;; Start with deadlines and tasks scheduled today or earlier from the daily agenda view. Then move on to tasks in the Next Tasks list in the block agenda view. I tend to schedule current projects to 'today' when I start work on them and they sit on my daily agenda reminding me that they need to be completed. I normally only schedule one or two projects to the daily agenda and unschedule things that
;;TODO: ;; are no longer important and don't deserve my attention today.
;;TODO: ;; When I look for a new task to work on I generally hit F12 SPC to get the block agenda and follow this order:
;;TODO: 
;;TODO: ;; * Pick something off today's agenda
;;TODO: ;;
;;TODO: ;;     o deadline for today (do this first - it's not late yet)
;;TODO: ;;     o deadline in the past (it's already late)
;;TODO: ;;     o a scheduled task for today (it's supposed to be done today)
;;TODO: ;;     o a scheduled task that is still on the agenda
;;TODO: ;;     o deadline that is coming up soon
;;TODO: ;;
;;TODO: ;; * pick a NEXT task
;;TODO: ;; * If you run out of items to work on look for a NEXT task in the current context pick a task from the Tasks list of the current project.
;;TODO: 
;;TODO: 
;;TODO: ;; 8.2.1 Why keep it all on the NEXT list?
;;TODO: 
;;TODO: ;; I've moved to a more GTD way of doing things. Now I just use a NEXT list. Only projects get tasks with NEXT keywords since stuck projects initiate the need for marking or creating NEXT tasks. A NEXT task is something that is available to work on now, it is the next logical step in some project.
;;TODO: ;; I used to have a special keyword ONGOING for things that I do a lot and want to clock but never really start/end. I had a special agenda view for ONGOING tasks that I would pull up to easily find the thing I want to clock.
;;TODO: ;; Since then I've moved away from using the ONGOING todo keyword. Having an agenda view that shows NEXT tasks makes it easy to pick the thing to clock - and I don't have to remember if I need to look in the ONGOING list or the NEXT list when looking for the task to clock-in. The NEXT list is basically 'what is current' - any task that moves a project forward. I want to find the thing to work on as
;;TODO: ;; fast as I can and actually do work on it - not spend time hunting through my org files for the task that needs to be clocked-in.
;;TODO: ;; To drop a task off the NEXT list simply move it back to the TODO state.
;;TODO: 
;;TODO: ;; 8.3 Reading email, newsgroups, and conversations on IRC
;;TODO: 
;;TODO: ;; When reading email, newsgroups, and conversations on IRC I just let the default task (normally ** Organization) clock the time I spend on these tasks. To read email I go to Gnus and read everything in my inboxes. If there are emails that require a response I use org-capture to create a new task with a heading of 'Respond to <user>' for each one. This automatically links to the email in the task
;;TODO: ;; and makes it easy to find later. Some emails are quick to respond to and some take research and a significant amount of time to complete. I clock each one in it's own task just in case I need that clocked time later. The capture template for Repond To tasks is now scheduled for today so I can refile the task to the appropriate org file without losing the task for a week.
;;TODO: ;; Next, I go to my newly created tasks to be refiled from the block agenda with F12 a and clock in an email task and deal with it. Repeat this until all of the 'Respond to <user>' tasks are marked DONE.
;;TODO: ;; I read email and newgroups in Gnus so I don't separate clocked time for quickly looking at things. If an article has a useful piece of information I want to remember I create a note for it with C-M-r n and enter the topic and file it. This takes practically no time at all and I know the note is safely filed for later retrieval. The time I spend in the capture buffer is clocked with that capture
;;TODO: ;; note.
;;TODO: 
;;TODO: ;; 8.4 Filtering
;;TODO: 
;;TODO: ;; So many tasks, so little time. I have hundreds of tasks at any given time (373 right now). There is so much stuff to look at it can be daunting. This is where agenda filtering saves the day.
;;TODO: ;; It's 11:53AM and I'm in work mode just before lunch. I don't want to see tasks that are not work related right now. I also don't want to work on a big project just before lunch&#x2026; so I need to find small tasks that I can knock off the list.
;;TODO: ;; How do we do this? Get a list of NEXT tasks from the block agenda and then narrow it down with filtering. Tasks are ordered in the NEXT agenda view by estimated effort so the short tasks are first &#x2013; just start at the top and work your way down. I can limit the displayed agenda tasks to those estimates of 10 minutes or less with / + 1 and I can pick something that fits the minutes I have
;;TODO: ;; left before I take off for lunch.
;;TODO: 
;;TODO: ;; 8.4.1 Automatically removing context based tasks with / RET
;;TODO: 
;;TODO: ;; / RET in the agenda is really useful. This awesome feature was added to org-mode by John Wiegley. It removes tasks automatically by filtering based on a user-provided function.
;;TODO: ;; At work I have projects I'm working on which are assigned by my manager. Sometimes priorities changes and projects are delayed to sometime in the future. This means I need to stop working on these immediately. I put the project task on HOLD and work on something else. The / RET filter removes HOLD tasks and subtasks (because of tag inheritance).
;;TODO: ;; At home I have some tasks tagged with farm since these need to be performed when I am physically at our family farm. Since I am there infrequently I have added farm to the list of auto-excluded tags on my system. I can always explicitly filter to just farm tasks with / TAB farm RET when I am physically there.
;;TODO: ;; I have the following setup to allow / RET to filter tasks based on the description above.
;;TODO: 
;;TODO:      (defun bh/org-auto-exclude-function (tag)
;;TODO:        "Automatic task exclusion in the agenda with / RET"
;;TODO:        (and (cond
;;TODO:              ((string= tag "hold")
;;TODO:               t)
;;TODO:              ((string= tag "farm")
;;TODO:               t))
;;TODO:             (concat "-" tag)))
;;TODO: 
;;TODO:      (setq org-agenda-auto-exclude-function 'bh/org-auto-exclude-function)
;;TODO: 
;;TODO: ;; This lets me filter tasks with just / RET on the agenda which removes tasks I'm not supposed to be working on now from the list of returned results.
;;TODO: ;; This helps to keep my agenda clutter-free.
;;TODO: 
;;TODO: ;; 9 Time Clocking
;;TODO: 
;;TODO: ;; Okay, I admit it. I'm a clocking fanatic.
;;TODO: ;; I clock everything at work. Org-mode makes this really easy. I'd rather clock too much stuff than not enough so I find it's easier to get in the habit of clocking everything.
;;TODO: ;; This makes it possible to look back at the day and see where I'm spending too much time, or not enough time on specific projects. This also helps a lot when you need to estimate how long something is going to take to do &#x2013; you can use your clocking data from similar tasks to help tune your estimates so they are more accurate.
;;TODO: ;; Without clocking data it's hard to tell how long something took to do after the fact.
;;TODO: ;; I now use the concept of punching in and punching out at the start and end of my work day. I punch in when I arrive at work, punch out for lunch, punch in after lunch, and punch out at the end of the day. Every minute is clocked between punch-in and punch-out times.
;;TODO: ;; Punching in defines a default task to clock time on whenever the clock would normally stop. I found that with the default org-mode setup I would lose clocked minutes during the day, a minute here, a minute there, and that all adds up. This is especially true if you write notes when moving to a DONE state - in this case the clock normally stops before you have composed the note &#x2013; and good
;;TODO: ;; notes take a few minutes to write.
;;TODO: ;; My clocking setup basically works like this:
;;TODO: 
;;TODO: ;; * Punch in (start the clock)
;;TODO: ;;
;;TODO: ;;     o This clocks in a predefined task by org-id that is the default task to clock in whenever the clock normally stops
;;TODO: 
;;TODO: ;; * Clock in tasks normally, and let moving to a DONE state clock out
;;TODO: ;;
;;TODO: ;;     o clocking out automatically clocks time on a parent task or moves back to the predefined default task if no parent exists.
;;TODO: 
;;TODO: ;; * Continue clocking whatever tasks you work on
;;TODO: ;; * Punch out (stop the clock)
;;TODO: 
;;TODO: ;; I'm free to change the default task multiple times during the day but with the clock moving up the project tree on clock out I no longer need to do this. I simply have a single task that gets clocked in when I punch-in.
;;TODO: ;; If I punch-in with a prefix on a task in Project X then that task automatically becomes the default task and all clocked time goes on that project until I either punch out or punch in some other task.
;;TODO: ;; My org files look like this:
;;TODO: ;; todo.org:
;;TODO: ;;
;;TODO: ;;     #+FILETAGS: PERSONAL
;;TODO: ;;     ...
;;TODO: ;;     * Tasks
;;TODO: ;;     ** Organization
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        CLOCK_MODELINE_TOTAL: today
;;TODO: ;;        ID:       eb155a82-92b2-4f25-a3c6-0304591af2f9
;;TODO: ;;        END:
;;TODO: ;;        ...
;;TODO: 
;;TODO: ;; If I am working on some task, then I simply clock in on the task. Clocking out moves the clock up to a parent task with a todo keyword (if any) which keeps the clock time in the same subtree. If there is no parent task with a todo keyword then the clock moves back to the default clocking task until I punch out or clock in some other task. When an interruption occurs I start a capture task which
;;TODO: ;; keeps clocked time on the interruption task until I close it with C-c C-c.
;;TODO: ;; This works really well for me.
;;TODO: ;; For example, consider the following org file:
;;TODO: ;;
;;TODO: ;;     * TODO Project A
;;TODO: ;;     ** NEXT TASK 1
;;TODO: ;;     ** TODO TASK 2
;;TODO: ;;     ** TODO TASK 3
;;TODO: ;;     * Tasks
;;TODO: ;;     ** TODO Some miscellaneous task
;;TODO: 
;;TODO: ;; I'll work on this file in the following sequence:
;;TODO: ;;
;;TODO: ;;     1. I punch in with F9-I at the start of my day
;;TODO: ;;        That clocks in the Organization task by id in my todo.org file.
;;TODO: ;;     2. F12-SPC to review my block agenda
;;TODO: ;;        Pick 'TODO Some miscellaneous task' to work on next and clock that in with I The clock is now on 'TODO Some miscellaneous task'
;;TODO: ;;     3. I complete that task and mark it done with C-c C-t d
;;TODO: ;;        This stops the clock and moves it back to the Organization task.
;;TODO: ;;     4. Now I want to work on Project A so I clock in Task 1
;;TODO: ;;        I work on Task 1 and mark it DONE. This clocks out Task 1 and moves the clock to Project A. Now I work on Task 2 and clock that in.
;;TODO: 
;;TODO: ;; The entire time I'm working on and clocking some subtask of Project A all of the clock time in the interval is applied somewhere to the Project A tree. When I eventually mark Project A done then the clock will move back to the default organization task.

;; 9.1 Clock Setup

;; To get started we need to punch in which clocks in the default task and keeps the clock running. This is now simply a matter of punching in the clock with F9 I. You can do this anywhere. Clocking out will now clock in the parent task (if there is one with a todo keyword) or clock in the default task if not parent exists.
;; Keeping the clock running when moving a subtask to a DONE state means clocking continues to apply to the project task. I can pick the next task from the parent and clock that in without losing a minute or two while I'm deciding what to work on next.
;; I keep clock times, state changes, and other notes in the :LOGBOOK: drawer.
;; I have the following org-mode settings for clocking:

     ;;
     ;; Resume clocking task when emacs is restarted
     (org-clock-persistence-insinuate)
     ;;
     ;; Show lot sof clocking history so it's easy to pick items off the C-F11 list
     (setq org-clock-history-length 36)
     ;; Resume clocking task on clock-in if the clock is open
     (setq org-clock-in-resume t)
     ;; Change tasks to NEXT when clocking in
     (setq org-clock-in-switch-to-state 'bh/clock-in-to-next)
     ;; Separate drawers for clocking and logs
     (setq org-drawers (quote ("PROPERTIES" "LOGBOOK")));;      (setq org-drawers (quote ("PROPERTIES" "CLOCK" "LOGBOOK" "HIDDEN" "MORE")))
     ;; Save clock data and state changes and notes in the LOGBOOK drawer
     (setq org-clock-into-drawer t)
     ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
     (setq org-clock-out-remove-zero-time-clocks t)
     ;; Clock out when moving task to a done state
     (setq org-clock-out-when-done t)
     ;; Save the running clock and all clock history when exiting Emacs, load it on startup
     (setq org-clock-persist t)
     ;; Do not prompt to resume an active clock
     (setq org-clock-persist-query-resume nil)
     ;; Enable auto clock resolution for finding open clocks
     (setq org-clock-auto-clock-resolution (quote when-no-clock-is-running))
     ;; Include current clocking task in clock reports
     (setq org-clock-report-include-clocking-task t)

     (setq bh/keep-clock-running nil)

     (defun bh/clock-in-to-next (kw)
       "Switch a task from TODO to NEXT when clocking in.
     Skips capture tasks, projects, and subprojects.
     Switch projects and subprojects from NEXT back to TODO"
       (when (not (and (boundp 'org-capture-mode) org-capture-mode))
         (cond
          ((and (member (org-get-todo-state) (list "TODO"))
                (bh/is-task-p))
           "NEXT")
          ((and (member (org-get-todo-state) (list "NEXT"))
                (bh/is-project-p))
           "TODO"))))

     (defun bh/find-project-task ()
       "Move point to the parent (project) task if any"
       (save-restriction
         (widen)
         (let ((parent-task (save-excursion (org-back-to-heading 'invisible-ok) (point))))
           (while (org-up-heading-safe)
             (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
               (setq parent-task (point))))
           (goto-char parent-task)
           parent-task)))

     (defun bh/punch-in (arg)
       "Start continuous clocking and set the default task to the
     selected task.  If no task is selected set the Organization task
     as the default task."
       (interactive "p")
       (setq bh/keep-clock-running t)
       (if (equal major-mode 'org-agenda-mode)
           ;;
           ;; We're in the agenda
           ;;
           (let* ((marker (org-get-at-bol 'org-hd-marker))
                  (tags (org-with-point-at marker (org-get-tags-at))))
             (if (and (eq arg 4) tags)
                 (org-agenda-clock-in '(16))
               (bh/clock-in-organization-task-as-default)))
         ;;
         ;; We are not in the agenda
         ;;
         (save-restriction
           (widen)
           ; Find the tags on the current task
           (if (and (equal major-mode 'org-mode) (not (org-before-first-heading-p)) (eq arg 4))
               (org-clock-in '(16))
             (bh/clock-in-organization-task-as-default)))))

     (defun bh/punch-out ()
       (interactive)
       (setq bh/keep-clock-running nil)
       (when (org-clock-is-active)
         (org-clock-out))
       (org-agenda-remove-restriction-lock))

     (defun bh/clock-in-default-task ()
       (save-excursion
         (org-with-point-at org-clock-default-task
           (org-clock-in))))

     (defun bh/clock-in-parent-task ()
       "Move point to the parent (project) task if any and clock in"
       (let ((parent-task))
         (save-excursion
           (save-restriction
             (widen)
             (while (and (not parent-task) (org-up-heading-safe))
               (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
                 (setq parent-task (point))))
             (if parent-task
                 (org-with-point-at parent-task
                   (org-clock-in))
               (when bh/keep-clock-running
                 (bh/clock-in-default-task)))))))

     (defvar bh/organization-task-id "eb155a82-92b2-4f25-a3c6-0304591af2f9")

     (defun bh/clock-in-organization-task-as-default ()
       (interactive)
       (org-with-point-at (org-id-find bh/organization-task-id 'marker)
         (org-clock-in '(16))))

     (defun bh/clock-out-maybe ()
       (when (and bh/keep-clock-running
                  (not org-clock-clocking-in)
                  (marker-buffer org-clock-default-task)
                  (not org-clock-resolving-clocks-due-to-idleness))
         (bh/clock-in-parent-task)))

     (add-hook 'org-clock-out-hook 'bh/clock-out-maybe 'append)

;; I used to clock in tasks by ID using the following function but with the new punch-in and punch-out I don't need these as much anymore. f9-SPC calls bh/clock-in-last-task which switches the clock back to the previously clocked task.

     (require 'org-id)
     (defun bh/clock-in-task-by-id (id)
       "Clock in a task by id"
       (org-with-point-at (org-id-find id 'marker)
         (org-clock-in nil)))

     (defun bh/clock-in-last-task (arg)
       "Clock in the interrupted task if there is one
     Skip the default task and get the next one.
     A prefix arg forces clock in of the default task."
       (interactive "p")
       (let ((clock-in-to-task
              (cond
               ((eq arg 4) org-clock-default-task)
               ((and (org-clock-is-active)
                     (equal org-clock-default-task (cadr org-clock-history)))
                (caddr org-clock-history))
               ((org-clock-is-active) (cadr org-clock-history))
               ((equal org-clock-default-task (car org-clock-history)) (cadr org-clock-history))
               (t (car org-clock-history)))))
         (widen)
         (org-with-point-at clock-in-to-task
           (org-clock-in nil))))


;; 9.2 Clocking in
;;TODO: ;; When I start or continue working on a task I clock it in with any of the following:
;;TODO: 
;;TODO: ;; * C-c C-x C-i
;;TODO: ;; * I in the agenda
;;TODO: ;; * I speed key on the first character of the heading line
;;TODO: ;; * f9 I while on the task in the agenda
;;TODO: ;; * f9 I while in the task in an org file
;;TODO: 
;;TODO: 
;;TODO: ;; 9.2.1 Setting a default clock task
;;TODO: 
;;TODO: ;; I have a default ** Organization task in my todo.org file that I tend to put miscellaneous clock time on. This is the task I clock in on when I punch in at the start of my work day with F9-I. While reorganizing my org-files, reading email, clearing my inbox, and doing other planning work that isn't for a specific project I'll clock in this task. Punching-in anywhere clocks in this Organization
;;TODO: ;; task as the default task.
;;TODO: ;; If I want to change the default clocking task I just visit the new task in any org buffer and clock it in with C-u C-u C-c C-x C-i. Now this new task that collects miscellaneous clock minutes when the clock would normally stop.
;;TODO: ;; You can quickly clock in the default clocking task with C-u C-c C-x C-i d. Another option is to repeatedly clock out so the clock moves up the project tree until you clock out the top-level task and the clock moves to the default task.
;;TODO: 
;;TODO: ;; 9.2.2 Using the clock history to clock in old tasks
;;TODO: 
;;TODO: ;; You can use the clock history to restart clocks on old tasks you've clocked or to jump directly to a task you have clocked previously. I use this mainly to clock in whatever got interrupted by something.
;;TODO: ;; Consider the following scenario:
;;TODO: 
;;TODO: ;; * You are working on and clocking Task A (Organization)
;;TODO: ;; * You get interrupted and switch to Task B (Document my use of org-mode)
;;TODO: ;; * You complete Task B (Document my use of org-mode)
;;TODO: ;; * Now you want to go back to Task A (Organization) again to continue
;;TODO: 
;;TODO: ;; This is easy to deal with.
;;TODO: ;;
;;TODO: ;;     1. Clock in Task A, work on it
;;TODO: ;;     2. Go to Task B (or create a new task) and clock it in
;;TODO: ;;     3. When you are finished with Task B hit C-u C-c C-x C-i i
;;TODO: 
;;TODO: ;; This displays a clock history selection window like the following and selects the interrupted [i] entry.
;;TODO: ;; Clock history selection buffer for C-u C-c C-x C-i
;;TODO: ;;
;;TODO: ;;     Default Task
;;TODO: ;;     [d] norang          Organization                          <-- Task B
;;TODO: ;;     The task interrupted by starting the last one
;;TODO: ;;     [i] norang          Organization                          <-- Task B
;;TODO: ;;     Current Clocking Task
;;TODO: ;;     [c] org             NEXT Document my use of org-mode      <-- Task A
;;TODO: ;;     Recent Tasks
;;TODO: ;;     [1] org             NEXT Document my use of org-mode      <-- Task A
;;TODO: ;;     [2] norang          Organization                          <-- Task B
;;TODO: ;;     ...
;;TODO: ;;     [Z] org             DONE Fix default section links        <-- 35 clock task entries ago
;;TODO: 
;;TODO: 
;;TODO: ;; 9.3 Clock Everything - Create New Tasks
;;TODO: 
;;TODO: ;; In order to clock everything you need a task for everything. That's fine for planned projects but interruptions inevitably occur and you need some place to record whatever time you spend on that interruption.
;;TODO: ;; To deal with this we create a new capture task to record the thing we are about to do. The workflow goes something like this:
;;TODO: 
;;TODO: ;; * You are clocking some task and an interruption occurs
;;TODO: ;; * Create a quick capture task journal entry C-M-r j
;;TODO: ;; * Type the heading
;;TODO: ;; * go do that thing (eat lunch, whatever)
;;TODO: ;; * file it C-c C-c, this restores the clock back to the previous clocking task
;;TODO: ;; * clock something else in or continue with the current clocking task
;;TODO: 
;;TODO: ;; This means you can ignore the details like where this task really belongs in your org file layout and just get on with completing the thing. Refiling a bunch of tasks later in a group when it is convenient to refile the tasks saves time in the long run.
;;TODO: ;; If it's a one-shot uninteresting task (like a coffee break) I create a capture journal entry for it that goes to the diary.org date tree. If it's a task that actually needs to be tracked and marked done, and applied to some project then I create a capture task instead which files it in refile.org.
;;TODO: 
;;TODO: ;; 9.4 Finding tasks to clock in
;;TODO: 
;;TODO: ;; To find a task to work on I use one of the following options (generally listed most frequently used first)
;;TODO: 
;;TODO: ;; * Use the clock history C-u C-c C-x C-i Go back to something I was clocking that is not finished
;;TODO: ;; * Pick something off today's block agenda SCHEDULED or DEADLINE items that need to be done soon
;;TODO: ;; * Pick something off the NEXT tasks agenda view Work on some unfinished task to move to completion
;;TODO: ;; * Pick something off the other task list
;;TODO: ;; * Use an agenda view with filtering to pick something to work on
;;TODO: 
;;TODO: ;; Punching in on the task you select will restrict the agenda view to that project so you can focus on just that thing for some period of time.
;;TODO: 
;;TODO: ;; 9.5 Editing clock entries
;;TODO: 
;;TODO: ;; Sometimes it is necessary to edit clock entries so they reflect reality. I find I do this for maybe 2-3 entries in a week.
;;TODO: ;; Occassionally I cannot clock in a task on time because I'm away from my computer. In this case the previous clocked task is still running and counts time for both tasks which is wrong.
;;TODO: ;; I make a note of the time and then when I get back to my computer I clock in the right task and edit the start and end times to correct the clock history.
;;TODO: ;; To visit the clock line for an entry quickly use the agenda log mode. F12 a l shows all clock lines for today. I use this to navigate to the appropriate clock lines quickly. F11 goes to the current clocked task but the agenda log mode is better for finding and visiting older clock entries.
;;TODO: ;; Use F12 a l to open the agenda in log mode and show only logged clock times. Move the cursor down to the clock line you need to edit and hit TAB and you're there.
;;TODO: ;; To edit a clock entry just put the cursor on the part of the date you want to edit (use the keyboard not the mouse - since the clicking on the timestamp with the mouse goes back to the agenda for that day) and hit the S-<up arrow> or S-<down arrow> keys to change the time.
;;TODO: ;; The following setting makes time editing use discrete minute intervals (no rounding) increments:
;;TODO: 
;;TODO:      (setq org-time-stamp-rounding-minutes (quote (1 1)))
;;TODO: 
;;TODO: ;; Editing the time with the shift arrow combination also updates the total for the clock line which is a nice convenience.
;;TODO: ;; I always check that I haven't created task overlaps when fixing time clock entries by viewing them with log mode on in the agenda. There is a new view in the agenda for this &#x2013; just hit v c in the daily agenda and clock gaps and overlaps are identified.
;;TODO: ;; I want my clock entries to be as accurate as possible.
;;TODO: ;; The following setting shows 1 minute clocking gaps.
;;TODO: 
;;TODO:      (setq org-agenda-clock-consistency-checks
;;TODO:            (quote (:max-duration "4:00"
;;TODO:                    :min-duration 0
;;TODO:                    :max-gap 0
;;TODO:                    :gap-ok-around ("4:00"))))
;;TODO: 
;;TODO: 
;;TODO: ;; 10 Time reporting and tracking
;;TODO: 
;;TODO: 
;;TODO: ;; 10.1 Billing clients based on clocked time
;;TODO: 
;;TODO: ;; At the beginning of the month I invoice my clients for work done last month. This is where I review my clocking data for correctness before billing for the clocked time.
;;TODO: ;; Billing for clocked time basically boils down to the following steps:
;;TODO: ;;
;;TODO: ;;     1. Verify that the clock data is complete and correct
;;TODO: ;;     2. Use clock reports to summarize time spent
;;TODO: ;;     3. Create an invoice based on the clock data
;;TODO: ;;        I currently create invoices in an external software package based on the org-mode clock data.
;;TODO: ;;     4. Archive complete tasks so they are out of the way.
;;TODO: ;;        See 15 for more details.
;;TODO: 
;;TODO: 
;;TODO: ;; 10.1.1 Verify that the clock data is complete and correct
;;TODO: 
;;TODO: ;; Since I change tasks often (sometimes more than once in a minute) I use the following setting to remove clock entries with a zero duration.
;;TODO: 
;;TODO:      ;; Sometimes I change tasks I'm clocking quickly - this removes clocked tasks with 0:00 duration
;;TODO:      (setq org-clock-out-remove-zero-time-clocks t)
;;TODO: 
;;TODO: ;; This setting just keeps my clocked log entries clean - only keeping clock entries that contribute to the clock report.
;;TODO: ;; Before invoicing for clocked time it is important to make sure your clocked time data is correct. If you have a clocked time with an entry that is not closed (ie. it has no end time) then that is a hole in your clocked day and it gets counted as zero (0) for time spent on the task when generating clock reports. Counting it as zero is almost certainly wrong.
;;TODO: ;; To check for unclosed clock times I use the agenda-view clock check (v c in the agenda). This view shows clocking gaps and overlaps in the agenda.
;;TODO: ;; To check the last month's clock data I use F12 a v m b v c which shows a full month in the agenda, moves to the previous month, and shows the clocked times only. It's important to remove any agenda restriction locks and filters when checking the logs for gaps and overlaps.
;;TODO: ;; The clocked-time only display in the agenda makes it easy to quickly scan down the list to see if an entry is missing an end time. If an entry is not closed you can manually fix the clock entry based on other clock info around that time.
;;TODO: 
;;TODO: ;; 10.1.2 Using clock reports to summarize time spent
;;TODO: 
;;TODO: ;; Billable time for clients are kept in separate org files.
;;TODO: ;; To get a report of time spent on tasks for XYZ.org you simply visit the XYZ.org file and run an agenda clock report for the last month with F12 < a v m b R. This limits the agenda to this one file, shows the agenda for a full month, moves to last month, and generates a clock report.
;;TODO: ;; My agenda org clock report settings show 5 levels of detail with links to the tasks. I like wider reports than the default compact setting so I override the :narrow value.
;;TODO: 
;;TODO:      ;; Agenda clock report parameters
;;TODO:      (setq org-agenda-clockreport-parameter-plist
;;TODO:            (quote (:link t :maxlevel 5 :fileskip0 t :compact t :narrow 80)))
;;TODO: 
;;TODO: ;; I used to have a monthly clock report dynamic block in each project org file and manually updated them at the end of my billing cycle. I used this as the basis for billing my clients for time spent on their projects. I found updating the dynamic blocks fairly tedious when you have more than a couple of files for the month.
;;TODO: ;; I have since moved to using agenda clock reports shortly after that feature was added. I find this much more convenient. The data isn't normally for consumption by anyone else so the format of the agenda clock report format is great for my use-case.
;;TODO: 
;;TODO: ;; 10.2 Task Estimates and column view
;;TODO: 
;;TODO: ;; Estimating how long tasks take to complete is a difficult skill to master. Org-mode makes it easy to practice creating estimates for tasks and then clock the actual time it takes to complete.
;;TODO: ;; By repeatedly estimating tasks and reviewing how your estimate relates to the actual time clocked you can tune your estimating skills.
;;TODO: 
;;TODO: ;; 10.2.1 Creating a task estimate with column mode
;;TODO: 
;;TODO: ;; I use properties and column view to do project estimates.
;;TODO: ;; I set up column view globally with the following headlines
;;TODO: 
;;TODO:      ; Set default column view headings: Task Effort Clock_Summary
;;TODO:      (setq org-columns-default-format "%80ITEM(Task) %10Effort(Effort){:} %10CLOCKSUM")
;;TODO: 
;;TODO: ;; This makes column view show estimated task effort and clocked times side-by-side which is great for reviewing your project estimates.
;;TODO: ;; A property called Effort records the estimated amount of time a given task will take to complete. The estimate times I use are one of:
;;TODO: 
;;TODO: ;; * 10 minutes
;;TODO: ;; * 30 minutes
;;TODO: ;; * 1 hour
;;TODO: ;; * 2 hours
;;TODO: ;; * 3 hours
;;TODO: ;; * 4 hours
;;TODO: ;; * 5 hours
;;TODO: ;; * 6 hours
;;TODO: ;; * 7 hours
;;TODO: ;; * 8 hours
;;TODO: 
;;TODO: ;; These are stored for easy use in column mode in the global property Effort_ALL.
;;TODO: 
;;TODO:      ; global Effort estimate values
;;TODO:      ; global STYLE property values for completion
;;TODO:      (setq org-global-properties (quote (("Effort_ALL" . "0:15 0:30 0:45 1:00 2:00 3:00 4:00 5:00 6:00 0:00")
;;TODO:                                          ("STYLE_ALL" . "habit"))))
;;TODO: 
;;TODO: ;; To create an estimate for a task or subtree start column mode with C-c C-x C-c and collapse the tree with c. This shows a table overlayed on top of the headlines with the task name, effort estimate, and clocked time in columns.
;;TODO: ;; With the cursor in the Effort column for a task you can easily set the estimated effort value with the quick keys 1 through 9.
;;TODO: ;; After setting the effort values exit column mode with q.
;;TODO: 
;;TODO: ;; 10.2.2 Saving your estimate
;;TODO: 
;;TODO: ;; For fixed price jobs where you provide your estimate to a client, then work to complete the project it is useful to save the original estimate that is provided to the client.
;;TODO: ;; Save your original estimate by creating a dynamic clock report table at the top of your estimated project subtree. Entering C-c C-x i RET inserts a clock table report with your estimated values and any clocked time to date.
;;TODO: ;;
;;TODO: ;;     Original Estimate
;;TODO: ;;     #+BEGIN: columnview :hlines 1 :id local
;;TODO: ;;     | Task                        | Estimated Effort | CLOCKSUM |
;;TODO: ;;     |-----------------------------+------------------+----------|
;;TODO: ;;     | ** TODO Project to estimate |             5:40 |          |
;;TODO: ;;     | *** TODO Step 1             |             0:10 |          |
;;TODO: ;;     | *** TODO Step 2             |             0:10 |          |
;;TODO: ;;     | *** TODO Step 3             |             5:10 |          |
;;TODO: ;;     | **** TODO Step 3.1          |             2:00 |          |
;;TODO: ;;     | **** TODO Step 3.2          |             3:00 |          |
;;TODO: ;;     | **** TODO Step 3.3          |             0:10 |          |
;;TODO: ;;     | *** TODO Step 4             |             0:10 |          |
;;TODO: ;;     #+END:
;;TODO: 
;;TODO: ;; I normally delete the #+BEGIN: and #+END: lines from the original table after providing the estimate to the client to ensure I don't accidentally update the table by hitting C-c C-c on the #+BEGIN: line.
;;TODO: ;; Saving the original estimate data makes it possible to refine the project tasks into subtasks as you work on the project without losing the original estimate data.
;;TODO: 
;;TODO: ;; 10.2.3 Reviewing your estimate
;;TODO: 
;;TODO: ;; Column view is great for reviewing your estimate. This shows your estimated time value and the total clock time for the project side-by-side.
;;TODO: ;; Creating a dynamic clock table with C-c C-x i RET is a great way to save this project review if you need to make it available to other applications.
;;TODO: ;; C-c C-x C-d also provides a quick summary of clocked time for the current org file.
;;TODO: 
;;TODO: ;; 10.3 Providing progress reports to others
;;TODO: 
;;TODO: ;; When someone wants details of what I've done recently I simple generate a log report in the agenda with tasks I've completed and state changes combined with a clock report for the appropriate time period.
;;TODO: ;; The following setting shows closed tasks and state changes in the agenda. Combined with the agenda clock report ('R') I can quickly generate all of the details required.
;;TODO: 
;;TODO:      ;; Agenda log mode items to display (closed and state changes by default)
;;TODO:      (setq org-agenda-log-mode-items (quote (closed state)))
;;TODO: 
;;TODO: ;; To generate the report I pull up the agenda for the appropriate time frame (today, yesterday, this week, or last week) and hit the key sequence l R to add the log report (without clocking data lines) and the agenda clock report at the end.
;;TODO: ;; Then it's simply a matter of exporting the resulting agenda in some useful format to provide to other people. C-x C-w /tmp/agenda.html RET exports to HTML and C-x C-w /tmp/agenda.txt RET exports to plain text. Other formats are available but I use these two the most.
;;TODO: ;; Combining this export with tag filters and C-u R can limit the report to exactly the tags that people are interested in.
;;TODO: 
;;TODO: ;; 11 Tags
;;TODO: 
;;TODO: ;; Tasks can have any number of arbitrary tags. Tags are used for:
;;TODO: 
;;TODO: ;; * filtering todo lists and agenda views
;;TODO: ;; * providing context for tasks
;;TODO: ;; * tagging notes
;;TODO: ;; * tagging phone calls
;;TODO: ;; * tagging tasks to be refiled
;;TODO: ;; * tagging tasks in a WAITING state because a parent task is WAITING
;;TODO: ;; * tagging cancelled tasks because a parent task is CANCELLED
;;TODO: ;; * preventing export of some subtrees when publishing
;;TODO: 
;;TODO: ;; I use tags mostly for filtering in the agenda. This means you can find tasks with a specific tag easily across your large number of org-mode files.
;;TODO: ;; Some tags are mutually exclusive. These are defined in a group so that only one of the tags can be applied to a task at a time (disregarding tag inheritance). I use these types for tags for applying context to a task. (Work tasks have an @office tag, and are done at the office, Farm tasks have an @farm tag and are done at the farm &#x2013; I can't change the oil on the tractor if I'm not at the
;;TODO: ;; farm&#x2026; so I hide these and other tasks by filtering my agenda view to only @office tasks when I'm at the office.)
;;TODO: ;; Tasks are grouped together in org-files and a #+FILETAGS: entry applies a tag to all tasks in the file. I use this to apply a tag to all tasks in the file. My norang.org file creates a NORANG file tag so I can filter tasks in the agenda in the norang.org file easily.
;;TODO: 
;;TODO: ;; 11.1 Tags
;;TODO: 
;;TODO: ;; Here are my tag definitions with associated keys for filtering in the agenda views.
;;TODO: ;; The startgroup - endgroup (@XXX) tags are mutually exclusive - selecting one removes a similar tag already on the task. These are the context tags - you can't be in two places at once so if a task is marked with @farm and you add @office then the @farm tag is removed automagically.
;;TODO: ;; The other tags PHONE .. FLAGGED are not mutually exclusive and multiple tags can appear on a single task. Some of those tags are created by todo state change triggers. The shortcut key is used to add or remove the tag using C-c C-q or to apply the task for filtering on the agenda.
;;TODO: ;; I have both FARM and @farm tags. FARM is set by a FILETAGS entry and just gives me a way to filter anything farm related. The @farm tag signifies that the task as to be done at the farm. If I have to call someone about something that would have a FARM tag but I can do that at home on my lunch break. I don't physically have to be at the farm to make the call.
;;TODO: 
;;TODO:      ; Tags with fast selection keys
;;TODO:      (setq org-tag-alist (quote ((:startgroup)
;;TODO:                                  ("@errand" . ?e)
;;TODO:                                  ("@office" . ?o)
;;TODO:                                  ("@home" . ?H)
;;TODO:                                  ("@farm" . ?f)
;;TODO:                                  (:endgroup)
;;TODO:                                  ("PHONE" . ?p)
;;TODO:                                  ("WAITING" . ?w)
;;TODO:                                  ("HOLD" . ?h)
;;TODO:                                  ("PERSONAL" . ?P)
;;TODO:                                  ("WORK" . ?W)
;;TODO:                                  ("FARM" . ?F)
;;TODO:                                  ("ORG" . ?O)
;;TODO:                                  ("NORANG" . ?N)
;;TODO:                                  ("crypt" . ?E)
;;TODO:                                  ("MARK" . ?M)
;;TODO:                                  ("NOTE" . ?n)
;;TODO:                                  ("CANCELLED" . ?c)
;;TODO:                                  ("FLAGGED" . ??))))
;;TODO: 
;;TODO:      ; Allow setting single tags without the menu
;;TODO:      (setq org-fast-tag-selection-single-key (quote expert))
;;TODO: 
;;TODO:      ; For tag searches ignore tasks with scheduled and deadline dates
;;TODO:      (setq org-agenda-tags-todo-honor-ignore-options t)
;;TODO: 
;;TODO: 
;;TODO: ;; 11.2 Filetags
;;TODO: 
;;TODO: ;; Filetags are a convenient way to apply one or more tags to all of the headings in a file.
;;TODO: ;; Filetags look like this:
;;TODO: ;;
;;TODO: ;;     #+FILETAGS: NORANG @office
;;TODO: 
;;TODO: ;; I have the following #+FILETAGS: entries in my org-mode files:
;;TODO: 
;;TODO: ;; 11.2.1 Non-work related org-mode files
;;TODO: 
;;TODO: ;;  __________________________
;;TODO: ;; |File________|Tags_________|
;;TODO: ;; |todo.org____|PERSONAL_____|
;;TODO: ;; |gsoc2009.org|GSOC_PERSONAL|
;;TODO: ;; |git.org_____|GIT_WORK_____|
;;TODO: ;; |org.org_____|ORG_WORK_____|
;;TODO: ;; |mark.org____|MARK_PERSONAL|
;;TODO: ;; |farm.org____|FARM_PERSONAL|
;;TODO: 
;;TODO: 
;;TODO: ;; 11.2.2 Work related org-mode files
;;TODO: 
;;TODO: ;;  ___________________________
;;TODO: ;; |File_______|Tags___________|
;;TODO: ;; |norang.org_|NORANG_@office_|
;;TODO: ;; |ABC.org____|ABC_@office____|
;;TODO: ;; |XYZ.org____|XYZ_@office____|
;;TODO: ;; |ABC-DEF.org|ABC_DEF_@office|
;;TODO: ;; |ABC-KKK.org|ABC_KKK_@office|
;;TODO: ;; |YYY.org____|YYY_@office____|
;;TODO: 
;;TODO: 
;;TODO: ;; 11.2.3 Refile tasks
;;TODO: 
;;TODO: ;;  _________________
;;TODO: ;; |File______|Tags__|
;;TODO: ;; |refile.org|REFILE|
;;TODO: 
;;TODO: 
;;TODO: ;; 11.3 State Trigger Tags
;;TODO: 
;;TODO: ;; The following tags are automatically added or removed by todo state triggers described previously in ToDo_state_triggers
;;TODO: 
;;TODO: ;; * WAITING
;;TODO: ;; * CANCELLED
;;TODO: 
;;TODO: 
;;TODO: ;; 12 Handling Notes
;;TODO: 
;;TODO: ;; Notes are little gems of knowledge that you come across during your day. They are just like tasks except there is nothing to do (except learn and memorize the gem of knowledge). Unfortunately there are way too many gems to remember and my head explodes just thinking about it.
;;TODO: ;; org-mode to the rescue!
;;TODO: ;; Often I'll find some cool feature or thing I want to remember while reading the org-mode and git mailing lists in Gnus. To create a note I use my note capture template C-M-r n, type a heading for the note and C-c C-c to save it. The only other thing to do is to refile it (later) to the appropriate project file.
;;TODO: ;; I have an agenda view just to find notes. Notes are refiled to an appropriate project file and task. If there is no specific task it belongs to it goes to the catchall * Notes task. I generally have a catchall notes task in every project file. Notes are created with a NOTE tag already applied by the capture template so I'm free to refile the note anywhere. As long as the note is in a project file
;;TODO: ;; that contributes to my agenda (ie. in org-agenda-files) then I can find the note back easily with my notes agenda view by hitting the key combination F12 N. I'm free to limit the agenda view of notes using standard agenda tag filtering.
;;TODO: ;; Short notes with a meaningful headline are a great way to remember technical details without the need to actually remember anything - other than how to find them back when you need them using F12 N.
;;TODO: ;; Notes that are project related and not generally useful can be archived with the project and removed from the agenda when the project is removed.
;;TODO: ;; So my org notes go in org.org and my git notes go in git.org both under the * Notes task. I'll forever be able to find those. A note about some work project detail I want to remember with the project is filed to the project task under the appropriate work org-mode file and eventually gets removed from the agenda when the project is complete and archived.
;;TODO: 
;;TODO: ;; 13 Handling Phone Calls
;;TODO: 
;;TODO: ;; Phone calls are interruptions and I use capture mode to deal with these (like all interruptions). Most of the heavy lifting for phone calls is done by capture mode. I use a special capture template for phone calls combined with a custom function that replaces text with information from my bbdb addressbook database.
;;TODO: ;; C-M-r p starts a capture task normally and I'm free to enter notes from the call in the template immediately. The cursor starts in the template normally where the name of the caller would be inserted. I can use a bbdb lookup function to insert the name with f9-p or I can just type in whatever is appropriate. If a bbdb entry needs to be created for the caller I can do that and replace the caller
;;TODO: ;; details with f9-p anytime that is convenient for me. I found that automatically calling the bbdb lookup function would interrupt my workflow during the call in cases where the information about the caller was not readily available. Sometimes I want to make notes first and get the caller details later during the call.
;;TODO: ;; The phone call capture template starts the clock as soon as the phone rings and I'm free to lookup and replace the caller in bbdb anytime during or after the call. Capture mode starts the clock using the :clock-in t setting in the template.
;;TODO: ;; When the phone call ends I simple do C-c C-c to close the capture buffer and stop the clock. If I have to close it early and look up other information during the call I just do C-c C-c F9-SPC to close the capture buffer (which stops the clock) and then immediately switch back to the last clocked item to continue the clock in the phone call task. When the phone call ends I clock out which normally
;;TODO: ;; clocks in my default task again (if any).
;;TODO: ;; Here is my set up for phone calls. I would like to thank Gregory J. Grubbs for the original bbdb lookup functions which this version is based on.
;;TODO: ;; Below is the partial capture template showing the phone call template followed by the phone-call related lookup functions.
;;TODO: 
;;TODO:      ;; Capture templates for: TODO tasks, Notes, appointments, phone calls, and org-protocol
;;TODO:      (setq org-capture-templates
;;TODO:            (quote (...
;;TODO:                    ("p" "Phone call" entry (file "~/git/org/refile.org")
;;TODO:                     "* PHONE %? :PHONE:\n%U" :clock-in t :clock-resume t)
;;TODO:                    ...)))
;;TODO: 
;;TODO: 
;;TODO:      (require 'bbdb)
;;TODO:      (require 'bbdb-com)
;;TODO: 
;;TODO:      (global-set-key (kbd "<f9> p") 'bh/phone-call)
;;TODO: 
;;TODO:      ;;
;;TODO:      ;; Phone capture template handling with BBDB lookup
;;TODO:      ;; Adapted from code by Gregory J. Grubbs
;;TODO:      (defun bh/phone-call ()
;;TODO:        "Return name and company info for caller from bbdb lookup"
;;TODO:        (interactive)
;;TODO:        (let* (name rec caller)
;;TODO:          (setq name (completing-read "Who is calling? "
;;TODO:                                      (bbdb-hashtable)
;;TODO:                                      'bbdb-completion-predicate
;;TODO:                                      'confirm))
;;TODO:          (when (> (length name) 0)
;;TODO:            ; Something was supplied - look it up in bbdb
;;TODO:            (setq rec
;;TODO:                  (or (first
;;TODO:                       (or (bbdb-search (bbdb-records) name nil nil)
;;TODO:                           (bbdb-search (bbdb-records) nil name nil)))
;;TODO:                      name)))
;;TODO: 
;;TODO:          ; Build the bbdb link if we have a bbdb record, otherwise just return the name
;;TODO:          (setq caller (cond ((and rec (vectorp rec))
;;TODO:                              (let ((name (bbdb-record-name rec))
;;TODO:                                    (company (bbdb-record-company rec)))
;;TODO:                                (concat "[[bbdb:"
;;TODO:                                        name "]["
;;TODO:                                        name "]]"
;;TODO:                                        (when company
;;TODO:                                          (concat " - " company)))))
;;TODO:                             (rec)
;;TODO:                             (t "NameOfCaller")))
;;TODO:          (insert caller)))
;;TODO: 
;;TODO: 
;;TODO: ;; 14 GTD stuff
;;TODO: 
;;TODO: ;; Most of my day is deadline/schedule driven. I work off of the agenda first and then pick items from the todo lists as outlined in 8.2


;; 14.1 Weekly Review Process
;; The first day of the week (usually Monday) I do my weekly review. I keep a list like this one to remind me what needs to be done.
;; To keep the agenda fast I set

     (setq org-agenda-span 'day)

;; so only today's date is shown by default. I only need the weekly view during my weekly review and this keeps my agenda generation fast.
;; I have a recurring task which keeps my weekly review checklist handy. This pops up as a reminder on Monday's. This week I'm doing my weekly review on Tuesday since Monday was a holiday.
;;
;;     * NEXT Weekly Review [0/6]
;;       SCHEDULED: <2009-05-18 Mon ++1w>
;;       LOGBOOK:...
;;       PROPERTIES:...
;;
;;       What to review:
;;
;;        - [ ] Check follow-up folder
;;        - [ ] Review weekly agenda =F12 a w //=
;;        - [ ] Check clocking data for past week =v c=
;;        - [ ] Review clock report for past week =R=
;;          - Check where we spent time (too much or too little) and rectify this week
;;        - [ ] Look at entire agenda for today  =F12 SPC=
;;        - [ ] Review projects =F12 SPC //= and =V= repeatedly to view each project
;;
;;        - start work
;;          - daily agenda first - knock off items
;;          - then work on NEXT tasks

;; The first item [ ] Check follow-up folder makes me pull out the paper file I dump stuff into all week long - things I need to take care of but are in no particular hurry to deal with. Stuff I get in the mail etc. that I don't want to deal with now. I just toss it in my Follow-Up folder in the filing cabinet and forget about it until the weekly review.
;; I go through the folder and weed out anything that needs to be dealt with. After that everything else is in org-mode. I tend to schedule tasks onto the agenda for the coming week so that I don't spend lots of time trying to find what needs to be worked on next.
;; This works for me. Your mileage may vary ;)


;; 14.2 Project definition and finding stuck projects

;; I'm using a new lazy project definition to mark tasks as projects. This requires zero effort from me. Any task with a subtask using a todo keyword is a project. Period.
;; Projects are 'stuck' if they have no subtask with a NEXT todo keyword task defined.
;; The org-mode stuck projects agenda view lists projects that have no NEXT task defined. Stuck projects show up on my block agenda and I tend to assign a NEXT task so the list remains empty. This helps to keep projects moving forward.
;; I disable the default org-mode stuck projects agenda view with the following setting.

     (setq org-stuck-projects (quote ("" nil nil "")))

;; This prevents org-mode from trying to show incorrect data if I select the default stuck project view with F12 # from the agenda menu. My customized stuck projects view is part of my block agenda displayed with F12 a.
;; Projects can have subprojects - and these subprojects can also be stuck. Any project that is stuck shows up on the stuck projects list so I can indicate or create a NEXT task to move that project forward.
;; In the following example Stuck Project A is stuck because it has no subtask which is NEXT. Project C is not stuck because it has NEXT tasks SubTask G and Task I. Stuck Sub Project D is stuck because SubTask E is not NEXT and there are no other tasks available in this project.
;;
;;     * Category
;;     ** TODO Stuck Project A
;;     *** TODO Task B
;;     ** TODO Project C
;;     *** TODO Stuck Sub Project D
;;     **** TODO SubTask E
;;     *** TODO Sub Project F
;;     **** NEXT SubTask G
;;     **** TODO SubTask H
;;     *** NEXT Task I
;;     *** TODO Task J

;; All of the stuck projects and subprojects show up in the stuck projects list and that is my indication to assign or create NEXT tasks until the stuck projects list is empty. Occasionally some subtask is WAITING for something and the project is stuck until that condition is satisfied. In this case I leave it on the stuck project list and just work on something else. This stuck project 'bugs' me
;; regularly when I see it on the block agenda and this prompts me to follow up on the thing that I'm waiting for.
;; I have the following helper functions defined for projects which are used by agenda views.

     (defun bh/is-project-p ()
       "Any task with a todo keyword subtask"
       (save-restriction
         (widen)
         (let ((has-subtask)
               (subtree-end (save-excursion (org-end-of-subtree t)))
               (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
           (save-excursion
             (forward-line 1)
             (while (and (not has-subtask)
                         (< (point) subtree-end)
                         (re-search-forward "^\*+ " subtree-end t))
               (when (member (org-get-todo-state) org-todo-keywords-1)
                 (setq has-subtask t))))
           (and is-a-task has-subtask))))

     (defun bh/is-project-subtree-p ()
       "Any task with a todo keyword that is in a project subtree.
     Callers of this function already widen the buffer view."
       (let ((task (save-excursion (org-back-to-heading 'invisible-ok)
                                   (point))))
         (save-excursion
           (bh/find-project-task)
           (if (equal (point) task)
               nil
             t))))

     (defun bh/is-task-p ()
       "Any task with a todo keyword and no subtask"
       (save-restriction
         (widen)
         (let ((has-subtask)
               (subtree-end (save-excursion (org-end-of-subtree t)))
               (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
           (save-excursion
             (forward-line 1)
             (while (and (not has-subtask)
                         (< (point) subtree-end)
                         (re-search-forward "^\*+ " subtree-end t))
               (when (member (org-get-todo-state) org-todo-keywords-1)
                 (setq has-subtask t))))
           (and is-a-task (not has-subtask)))))

     (defun bh/is-subproject-p ()
       "Any task which is a subtask of another project"
       (let ((is-subproject)
             (is-a-task (member (nth 2 (org-heading-components)) org-todo-keywords-1)))
         (save-excursion
           (while (and (not is-subproject) (org-up-heading-safe))
             (when (member (nth 2 (org-heading-components)) org-todo-keywords-1)
               (setq is-subproject t))))
         (and is-a-task is-subproject)))

     (defun bh/list-sublevels-for-projects-indented ()
       "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
       This is normally used by skipping functions where this variable is already local to the agenda."
       (if (marker-buffer org-agenda-restrict-begin)
           (setq org-tags-match-list-sublevels 'indented)
         (setq org-tags-match-list-sublevels nil))
       nil)

     (defun bh/list-sublevels-for-projects ()
       "Set org-tags-match-list-sublevels so when restricted to a subtree we list all subtasks.
       This is normally used by skipping functions where this variable is already local to the agenda."
       (if (marker-buffer org-agenda-restrict-begin)
           (setq org-tags-match-list-sublevels t)
         (setq org-tags-match-list-sublevels nil))
       nil)

     (defun bh/skip-stuck-projects ()
       "Skip trees that are not stuck projects"
       (save-restriction
         (widen)
         (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
           (if (bh/is-project-p)
               (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                      (has-next ))
                 (save-excursion
                   (forward-line 1)
                   (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT " subtree-end t))
                     (unless (member "WAITING" (org-get-tags-at))
                       (setq has-next t))))
                 (if has-next
                     nil
                   next-headline)) ; a stuck project, has subtasks but no next task
             nil))))

     (defun bh/skip-non-stuck-projects ()
       "Skip trees that are not stuck projects"
       (bh/list-sublevels-for-projects-indented)
       (save-restriction
         (widen)
         (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
           (if (bh/is-project-p)
               (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                      (has-next ))
                 (save-excursion
                   (forward-line 1)
                   (while (and (not has-next) (< (point) subtree-end) (re-search-forward "^\\*+ NEXT " subtree-end t))
                     (unless (member "WAITING" (org-get-tags-at))
                       (setq has-next t))))
                 (if has-next
                     next-headline
                   nil)) ; a stuck project, has subtasks but no next task
             next-headline))))

     (defun bh/skip-non-projects ()
       "Skip trees that are not projects"
       (bh/list-sublevels-for-projects-indented)
       (if (save-excursion (bh/skip-non-stuck-projects))
           (save-restriction
             (widen)
             (let ((subtree-end (save-excursion (org-end-of-subtree t))))
               (cond
                ((and (bh/is-project-p)
                      (marker-buffer org-agenda-restrict-begin))
                 nil)
                ((and (bh/is-project-p)
                      (not (marker-buffer org-agenda-restrict-begin))
                      (not (bh/is-project-subtree-p)))
                 nil)
                (t
                 subtree-end))))
         (save-excursion (org-end-of-subtree t))))

     (defun bh/skip-project-trees-and-habits ()
       "Skip trees that are projects"
       (save-restriction
         (widen)
         (let ((subtree-end (save-excursion (org-end-of-subtree t))))
           (cond
            ((bh/is-project-p)
             subtree-end)
            ((org-is-habit-p)
             subtree-end)
            (t
             nil)))))

     (defun bh/skip-projects-and-habits-and-single-tasks ()
       "Skip trees that are projects, tasks that are habits, single non-project tasks"
       (save-restriction
         (widen)
         (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
           (cond
            ((org-is-habit-p)
             next-headline)
            ((bh/is-project-p)
             next-headline)
            ((and (bh/is-task-p) (not (bh/is-project-subtree-p)))
             next-headline)
            (t
             nil)))))

     (defun bh/skip-project-tasks-maybe ()
       "Show tasks related to the current restriction.
     When restricted to a project, skip project and sub project tasks, habits, NEXT tasks, and loose tasks.
     When not restricted, skip project and sub-project tasks, habits, and project related tasks."
       (save-restriction
         (widen)
         (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
                (next-headline (save-excursion (or (outline-next-heading) (point-max))))
                (limit-to-project (marker-buffer org-agenda-restrict-begin)))
           (cond
            ((bh/is-project-p)
             next-headline)
            ((org-is-habit-p)
             subtree-end)
            ((and (not limit-to-project)
                  (bh/is-project-subtree-p))
             subtree-end)
            ((and limit-to-project
                  (bh/is-project-subtree-p)
                  (member (org-get-todo-state) (list "NEXT")))
             subtree-end)
            (t
             nil)))))

     (defun bh/skip-projects-and-habits ()
       "Skip trees that are projects and tasks that are habits"
       (save-restriction
         (widen)
         (let ((subtree-end (save-excursion (org-end-of-subtree t))))
           (cond
            ((bh/is-project-p)
             subtree-end)
            ((org-is-habit-p)
             subtree-end)
            (t
             nil)))))

     (defun bh/skip-non-subprojects ()
       "Skip trees that are not projects"
       (let ((next-headline (save-excursion (outline-next-heading))))
         (if (bh/is-subproject-p)
             nil
           next-headline)))


;;TODO: ;; 15 Archiving
;;TODO: 
;;TODO: 
;;TODO: ;; 15.1 Archiving Subtrees
;;TODO: 
;;TODO: ;; My archiving procedure has changed. I used to move entire subtrees to a separate archive file for the project. Task subtrees in FILE.org get archived to FILE.org_archive using the a y command in the agenda.
;;TODO: ;; I still archive to the same archive file as before but now I archive any done state todo task that is old enough to archive. Tasks to archive are listed automatically at the end of my block agenda and these are guaranteed to be old enough that I've already billed any time associated with these tasks. This cleans up my project trees and removes the old tasks that are no longer interesting. The
;;TODO: ;; archived tasks get extra property data created during the archive procedure so that it is possible to reconstruct exactly where the archived entry came from in the rare case where you want to unarchive something.
;;TODO: ;; My archive files are huge but so far I haven't found a need to split them by year (or decade) :)
;;TODO: ;; Archivable tasks show up in the last section of my block agenda when a new month starts. Any tasks that are done but have no timestamps this month or last month (ie. they are over 30 days old) are available to archive. Timestamps include closed dates, notes, clock data, etc - any active or inactive timestamp in the task.
;;TODO: ;; Archiving is trivial. Just mark all of the entries in the block agenda using the m key and then archive them all to the appropriate place with B $. This normally takes less than 5 minutes once a month.
;;TODO: 
;;TODO: ;; 15.2 Archive Setup
;;TODO: 
;;TODO: ;; I not longer use an ARCHIVE property in my subtrees. Tasks can just archive normally to the Archived Tasks heading in the archive file.
;;TODO: ;; The following setting ensures that task states are untouched when they are archived. This makes it possible to archive tasks that are not marked DONE. By default tasks are archived under the heading * Archived Tasks in the archive file.
;;TODO: 
;;TODO:      (setq org-archive-mark-done nil)
;;TODO:      (setq org-archive-location "%s_archive::* Archived Tasks")
;;TODO: 
;;TODO: 
;;TODO:      (defun bh/skip-non-archivable-tasks ()
;;TODO:        "Skip trees that are not available for archiving"
;;TODO:        (save-restriction
;;TODO:          (widen)
;;TODO:          (let ((next-headline (save-excursion (or (outline-next-heading) (point-max)))))
;;TODO:            ;; Consider only tasks with done todo headings as archivable candidates
;;TODO:            (if (member (org-get-todo-state) org-done-keywords)
;;TODO:                (let* ((subtree-end (save-excursion (org-end-of-subtree t)))
;;TODO:                       (daynr (string-to-int (format-time-string "%d" (current-time))))
;;TODO:                       (a-month-ago (* 60 60 24 (+ daynr 1)))
;;TODO:                       (last-month (format-time-string "%Y-%m-" (time-subtract (current-time) (seconds-to-time a-month-ago))))
;;TODO:                       (this-month (format-time-string "%Y-%m-" (current-time)))
;;TODO:                       (subtree-is-current (save-excursion
;;TODO:                                             (forward-line 1)
;;TODO:                                             (and (< (point) subtree-end)
;;TODO:                                                  (re-search-forward (concat last-month "\\|" this-month) subtree-end t)))))
;;TODO:                  (if subtree-is-current
;;TODO:                      next-headline ; Has a date in this month or last month, skip it
;;TODO:                    nil))  ; available to archive
;;TODO:              (or next-headline (point-max))))))
;;TODO: 
;;TODO: 
;;TODO: ;; 15.3 Archive Tag - Hiding Information
;;TODO: 
;;TODO: ;; The only time I set the ARCHIVE tag on a task is to prevent it from opening by default because it has tons of information I don't really need to look at on a regular basis. I can open the task with C-TAB if I need to see the gory details (like a huge table of data related to the task) but normally I don't need that information displayed.
;;TODO: 
;;TODO: ;; 15.4 When to Archive
;;TODO: 
;;TODO: ;; Archiving monthly works well for me. I keep completed tasks around for at least 30 days before archiving them. This keeps current clocking information for the last 30 days out of the archives. This keeps my files that contribute to the agenda fairly current (this month, and last month, and anything that is unfinished). I only rarely visit tasks in the archive when I need to pull up ancient history
;;TODO: ;; for something.
;;TODO: ;; Archiving keeps my main working files clutter-free. If I ever need the detail for the archived tasks they are available in the appropriate archive file.
;;TODO: 
;;TODO: ;; 16 Publishing and Exporting
;;TODO: 
;;TODO: ;; I don't do a lot of publishing for other people but I do keep a set of private client system documentation online. Most of this documentation is a collection of notes exported to HTML.
;;TODO: ;; Everything at http://doc.norang.ca/ is generated by publishing org-files. This includes the index pages on this site.
;;TODO: ;; Org-mode can export to a variety of publishing formats including (but not limited to)
;;TODO: 
;;TODO: ;; * ASCII (plain text - but not the original org-mode file)
;;TODO: ;; * HTML
;;TODO: ;; * LaTeX
;;TODO: ;; * Docbook which enables getting to lots of other formats like ODF, XML, etc
;;TODO: ;; * PDF via LaTeX or Docbook
;;TODO: ;; * iCal
;;TODO: 
;;TODO: ;; I haven't begun the scratch the surface of what org-mode is capable of doing. My main use case for org-mode publishing is just to create HTML documents for viewing online conveniently. Someday I'll get time to try out the other formats when I need them for something.
;;TODO: 
;;TODO: ;; 16.1 Org-babel Setup
;;TODO: 
;;TODO: ;; Org-babel makes it easy to generate decent graphics using external packages like ditaa, graphviz, PlantUML, and others.
;;TODO: ;; The setup is really easy. ditaa is provided with the org-mode source. You'll have to install the graphviz and PlantUML packages on your system.
;;TODO: 
;;TODO:      (setq org-ditaa-jar-path "~/java/ditaa0_6b.jar")
;;TODO:      (setq org-plantuml-jar-path "~/java/plantuml.jar")
;;TODO: 
;;TODO:      (add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)
;;TODO: 
;;TODO:      ; Make babel results blocks lowercase
;;TODO:      (setq org-babel-results-keyword "results")
;;TODO: 
;;TODO:      (defun bh/display-inline-images ()
;;TODO:        (condition-case nil
;;TODO:            (org-display-inline-images)
;;TODO:          (error nil)))
;;TODO: 
;;TODO:      (org-babel-do-load-languages
;;TODO:       (quote org-babel-load-languages)
;;TODO:       (quote ((emacs-lisp . t)
;;TODO:               (dot . t)
;;TODO:               (ditaa . t)
;;TODO:               (R . t)
;;TODO:               (python . t)
;;TODO:               (ruby . t)
;;TODO:               (gnuplot . t)
;;TODO:               (clojure . t)
;;TODO:               (sh . t)
;;TODO:               (ledger . t)
;;TODO:               (org . t)
;;TODO:               (plantuml . t)
;;TODO:               (latex . t))))
;;TODO: 
;;TODO:      ; Do not prompt to confirm evaluation
;;TODO:      ; This may be dangerous - make sure you understand the consequences
;;TODO:      ; of setting this -- see the docstring for details
;;TODO:      (setq org-confirm-babel-evaluate nil)
;;TODO: 
;;TODO:      ; Use fundamental mode when editing plantuml blocks with C-c '
;;TODO:      (add-to-list 'org-src-lang-modes (quote ("plantuml" . fundamental)))
;;TODO: 
;;TODO: ;; Now you just create a begin-src block for the appropriate tool, edit the text, and build the pictures with C-c C-c. After evaluating the block results are displayed. You can toggle display of inline images with C-c C-x C-v
;;TODO: ;; I disable startup with inline images because when I access my org-files from an SSH session without X this breaks (say from my Android phone) it fails when trying to display the images on a non-X session. It's much more important for me to be able to access my org files from my Android phone remotely than it is to see images on startup.
;;TODO: 
;;TODO:      ;; Don't enable this because it breaks access to emacs from my Android phone
;;TODO:      (setq org-startup-with-inline-images nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 16.2 Playing with ditaa
;;TODO: 
;;TODO: ;; ditaa is a great tool for quickly generating graphics to convey ideas and ditaa is distributed with org-mode! All of the graphics in this document are automatically generated by org-mode using plain text source.
;;TODO: ;; Artist mode makes it easy to create boxes and lines for ditaa graphics.
;;TODO: ;; The source for a ditaa graphic looks like this in org-mode:
;;TODO: ;;
;;TODO: ;;     #+begin_src ditaa :file some_filename.png :cmdline -r -s 0.8
;;TODO: ;;       <context of ditaa source goes here>
;;TODO: ;;     #+end_src
;;TODO: 
;;TODO: ;; Here's an example without the #+begin_src and #+end_src lines.
;;TODO: ;;
;;TODO: ;;         +-----------+        +---------+
;;TODO: ;;         |    PLC    |        |         |
;;TODO: ;;         |  Network  +<------>+   PLC   +<---=---------+
;;TODO: ;;         |    cRED   |        |  c707   |              |
;;TODO: ;;         +-----------+        +----+----+              |
;;TODO: ;;                                   ^                   |
;;TODO: ;;                                   |                   |
;;TODO: ;;                                   |  +----------------|-----------------+
;;TODO: ;;                                   |  |                |                 |
;;TODO: ;;                                   v  v                v                 v
;;TODO: ;;           +----------+       +----+--+--+      +-------+---+      +-----+-----+       Windows clients
;;TODO: ;;           |          |       |          |      |           |      |           |      +----+      +----+
;;TODO: ;;           | Database +<----->+  Shared  +<---->+ Executive +<-=-->+ Operator  +<---->|cYEL| . . .|cYEL|
;;TODO: ;;           |   c707   |       |  Memory  |      |   c707    |      | Server    |      |    |      |    |
;;TODO: ;;           +--+----+--+       |{d} cGRE  |      +------+----+      |   c707    |      +----+      +----+
;;TODO: ;;              ^    ^          +----------+             ^           +-------+---+
;;TODO: ;;              |    |                                   |
;;TODO: ;;              |    +--------=--------------------------+
;;TODO: ;;              v
;;TODO: ;;     +--------+--------+
;;TODO: ;;     |                 |
;;TODO: ;;     | Millwide System |            -------- Data ---------
;;TODO: ;;     | cBLU            |            --=----- Signals ---=--
;;TODO: ;;     +-----------------+
;;TODO: 
;;TODO: ;;  communication.png
;;TODO: 
;;TODO: ;; 16.3 Playing with graphviz
;;TODO: 
;;TODO: ;; Graphviz is another great tool for creating graphics in your documents.
;;TODO: ;; The source for a graphviz graphic looks like this in org-mode:
;;TODO: ;;
;;TODO: ;;     #+begin_src dot :file some_filename.png :cmdline -Kdot -Tpng
;;TODO: ;;       <context of graphviz source goes here>
;;TODO: ;;     #+end_src
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     digraph G {
;;TODO: ;;       size="8,6"
;;TODO: ;;       ratio=expand
;;TODO: ;;       edge [dir=both]
;;TODO: ;;       plcnet [shape=box, label="PLC Network"]
;;TODO: ;;       subgraph cluster_wrapline {
;;TODO: ;;         label="Wrapline Control System"
;;TODO: ;;         color=purple
;;TODO: ;;         subgraph {
;;TODO: ;;         rank=same
;;TODO: ;;         exec
;;TODO: ;;         sharedmem [style=filled, fillcolor=lightgrey, shape=box]
;;TODO: ;;         }
;;TODO: ;;         edge[style=dotted, dir=none]
;;TODO: ;;         exec -> opserver
;;TODO: ;;         exec -> db
;;TODO: ;;         plc -> exec
;;TODO: ;;         edge [style=line, dir=both]
;;TODO: ;;         exec -> sharedmem
;;TODO: ;;         sharedmem -> db
;;TODO: ;;         plc -> sharedmem
;;TODO: ;;         sharedmem -> opserver
;;TODO: ;;       }
;;TODO: ;;       plcnet -> plc [constraint=false]
;;TODO: ;;       millwide [shape=box, label="Millwide System"]
;;TODO: ;;       db -> millwide
;;TODO: ;;
;;TODO: ;;       subgraph cluster_opclients {
;;TODO: ;;         color=blue
;;TODO: ;;         label="Operator Clients"
;;TODO: ;;         rankdir=LR
;;TODO: ;;         labelloc=b
;;TODO: ;;         node[label=client]
;;TODO: ;;         opserver -> client1
;;TODO: ;;         opserver -> client2
;;TODO: ;;         opserver -> client3
;;TODO: ;;       }
;;TODO: ;;     }
;;TODO: 
;;TODO: ;;  gv01.png
;;TODO: ;; The -Kdot is optional (defaults to dot) but you can substitute other graphviz types instead here (ie. twopi, neato, circo, etc).
;;TODO: 
;;TODO: ;; 16.4 Playing with PlantUML
;;TODO: 
;;TODO: ;; I have just started using PlantUML which is built on top of Graphviz. I'm still experimenting with this but so far I like it a lot. The todo state change diagrams in this document are created with PlantUML.
;;TODO: ;; The source for a PlantUML graphic looks like this in org-mode:
;;TODO: ;;
;;TODO: ;;     #+begin_src plantuml :file somefile.png
;;TODO: ;;       <context of PlantUML source goes here>
;;TODO: ;;     #+end_src
;;TODO: 
;;TODO: 
;;TODO: ;; 16.4.1 Sequence Diagram
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     title Example Sequence Diagram
;;TODO: ;;     activate Client
;;TODO: ;;     Client -> Server: Session Initiation
;;TODO: ;;     note right: Client requests new session
;;TODO: ;;     activate Server
;;TODO: ;;     Client <-- Server: Authorization Request
;;TODO: ;;     note left: Server requires authentication
;;TODO: ;;     Client -> Server: Authorization Response
;;TODO: ;;     note right: Client provides authentication details
;;TODO: ;;     Server --> Client: Session Token
;;TODO: ;;     note left: Session established
;;TODO: ;;     deactivate Server
;;TODO: ;;     Client -> Client: Saves token
;;TODO: ;;     deactivate Client
;;TODO: 
;;TODO: ;;  sequence.png
;;TODO: 
;;TODO: ;; 16.4.2 Activity Diagram
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     title Example Activity Diagram
;;TODO: ;;     note right: Example Function
;;TODO: ;;     (*)--> "Step 1"
;;TODO: ;;     --> "Step 2"
;;TODO: ;;     -> "Step 3"
;;TODO: ;;     --> "Step 4"
;;TODO: ;;     --> === STARTLOOP ===
;;TODO: ;;     note top: For each element in the array
;;TODO: ;;     if "Are we done?" then
;;TODO: ;;       -> [no] "Do this"
;;TODO: ;;       -> "Do that"
;;TODO: ;;       note bottom: Important note\ngoes here
;;TODO: ;;       -up-> "Increment counters"
;;TODO: ;;       --> === STARTLOOP ===
;;TODO: ;;     else
;;TODO: ;;       --> [yes] === ENDLOOP ===
;;TODO: ;;     endif
;;TODO: ;;     --> "Last Step"
;;TODO: ;;     --> (*)
;;TODO: 
;;TODO: ;;  activity.png
;;TODO: 
;;TODO: ;; 16.4.3 Usecase Diagram
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     LabUser --> (Runs Simulation)
;;TODO: ;;     LabUser --> (Analyses Results)
;;TODO: 
;;TODO: ;;  usecase.png
;;TODO: 
;;TODO: ;; 16.4.4 Object Diagram
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     Object1 <|-- Object2
;;TODO: ;;     Object1: someVar
;;TODO: ;;     Object1: execute()
;;TODO: ;;     Object2: getState()
;;TODO: ;;     Object2: setState()
;;TODO: ;;     Object2: state
;;TODO: 
;;TODO: ;;  object.png
;;TODO: 
;;TODO: ;; 16.4.5 State Diagram
;;TODO: ;;
;;TODO: ;;
;;TODO: ;;     [*] --> Start
;;TODO: ;;     Start -> State2
;;TODO: ;;     State2 -> State3
;;TODO: ;;     note right of State3: Notes can be\nattached to states
;;TODO: ;;     State2 --> State4
;;TODO: ;;     State4 -> Finish
;;TODO: ;;     State3 --> Finish
;;TODO: ;;     Finish --> [*]
;;TODO: 
;;TODO: ;;  plantuml_example_states.png
;;TODO: 
;;TODO: ;; 16.5 Publishing Single Files
;;TODO: 
;;TODO: ;; Org-mode exports the current file to one of the standard formats by invoking an export function. The standard key binding for this is C-c C-e followed by the key for the type of export you want.
;;TODO: ;; This works great for single files or parts of files &#x2013; if you narrow the buffer to only part of the org-mode file then you only get the narrowed detail in the export.
;;TODO: 
;;TODO: ;; 16.6 Publishing Projects
;;TODO: 
;;TODO: ;; I mainly use publishing for publishing multiple files or projects. I don't want to remember where the created export file needs to move to and org-mode projects are a great solution to this.
;;TODO: ;; The http://doc.norang.ca website (and a bunch of other files that are not publicly available) are all created by editing org-mode files and publishing the project the file is contained in. This is great for people like me who want to figure out the details once and forget about it. I love stuff that Just Works(tm).
;;TODO: ;; I have 5 main projects I use org-mode publishing for currently:
;;TODO: 
;;TODO: ;; * norang (website)
;;TODO: ;; * doc.norang.ca (website, published documents)
;;TODO: ;; * doc.norang.ca/private (website, non-published documents)
;;TODO: ;; * www.norang.ca/tmp (temporary publishing site for testing org-mode stuff)
;;TODO: ;; * org files (which are selectively included by other websites)
;;TODO: 
;;TODO: ;; Here's my publishing setup:
;;TODO: 
;;TODO:      ; experimenting with docbook exports - not finished
;;TODO:      (setq org-export-docbook-xsl-fo-proc-command "fop %s %s")
;;TODO:      (setq org-export-docbook-xslt-proc-command "xsltproc --output %s /usr/share/xml/docbook/stylesheet/nwalsh/fo/docbook.xsl %s")
;;TODO:      ;
;;TODO:      ; Inline images in HTML instead of producting links to the image
;;TODO:      (setq org-export-html-inline-images t)
;;TODO:      ; Do not use sub or superscripts - I currently don't need this functionality in my documents
;;TODO:      (setq org-export-with-sub-superscripts nil)
;;TODO:      ; Use org.css from the norang website for export document stylesheets
;;TODO:      (setq org-export-html-style-extra "<link rel=\"stylesheet\" href=\"http://doc.norang.ca/org.css\" type=\"text/css\" />")
;;TODO:      (setq org-export-html-style-include-default nil)
;;TODO:      ; Do not generate internal css formatting for HTML exports
;;TODO:      (setq org-export-htmlize-output-type (quote css))
;;TODO:      ; Export with LaTeX fragments
;;TODO:      (setq org-export-with-LaTeX-fragments t)
;;TODO:      ; Increase default number of headings to export
;;TODO:      (setq org-export-headline-levels 6)
;;TODO: 
;;TODO:      ; List of projects
;;TODO:      ; norang       - http://www.norang.ca/
;;TODO:      ; doc          - http://doc.norang.ca/
;;TODO:      ; org-mode-doc - http://doc.norang.ca/org-mode.html and associated files
;;TODO:      ; org          - miscellaneous todo lists for publishing
;;TODO:      (setq org-publish-project-alist
;;TODO:            ;
;;TODO:            ; http://www.norang.ca/  (norang website)
;;TODO:            ; norang-org are the org-files that generate the content
;;TODO:            ; norang-extra are images and css files that need to be included
;;TODO:            ; norang is the top-level project that gets published
;;TODO:            (quote (("norang-org"
;;TODO:                     :base-directory "~/git/www.norang.ca"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs"
;;TODO:                     :recursive t
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function org-publish-org-to-html
;;TODO:                     :style-include-default nil
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"norang.css\" type=\"text/css\" />"
;;TODO:                     :author-info nil
;;TODO:                     :creator-info nil)
;;TODO:                    ("norang-extra"
;;TODO:                     :base-directory "~/git/www.norang.ca/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs"
;;TODO:                     :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
;;TODO:                     :publishing-function org-publish-attachment
;;TODO:                     :recursive t
;;TODO:                     :author nil)
;;TODO:                    ("norang"
;;TODO:                     :components ("norang-org" "norang-extra"))
;;TODO:                    ;
;;TODO:                    ; http://doc.norang.ca/  (norang website)
;;TODO:                    ; doc-org are the org-files that generate the content
;;TODO:                    ; doc-extra are images and css files that need to be included
;;TODO:                    ; doc is the top-level project that gets published
;;TODO:                    ("doc-org"
;;TODO:                     :base-directory "~/git/doc.norang.ca/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs"
;;TODO:                     :recursive nil
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function (org-publish-org-to-html org-publish-org-to-org)
;;TODO:                     :style-include-default nil
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"/org.css\" type=\"text/css\" />"
;;TODO:                     :author-info nil
;;TODO:                     :creator-info nil)
;;TODO:                    ("doc-extra"
;;TODO:                     :base-directory "~/git/doc.norang.ca/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs"
;;TODO:                     :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
;;TODO:                     :publishing-function org-publish-attachment
;;TODO:                     :recursive nil
;;TODO:                     :author nil)
;;TODO:                    ("doc"
;;TODO:                     :components ("doc-org" "doc-extra"))
;;TODO:                    ("doc-private-org"
;;TODO:                     :base-directory "~/git/doc.norang.ca/private"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs/private"
;;TODO:                     :recursive nil
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function (org-publish-org-to-html org-publish-org-to-org)
;;TODO:                     :style-include-default nil
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"/org.css\" type=\"text/css\" />"
;;TODO:                     :auto-sitemap t
;;TODO:                     :sitemap-filename "index.html"
;;TODO:                     :sitemap-title "Norang Private Documents"
;;TODO:                     :sitemap-style "tree"
;;TODO:                     :author-info nil
;;TODO:                     :creator-info nil)
;;TODO:                    ("doc-private-extra"
;;TODO:                     :base-directory "~/git/doc.norang.ca/private"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs/private"
;;TODO:                     :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
;;TODO:                     :publishing-function org-publish-attachment
;;TODO:                     :recursive nil
;;TODO:                     :author nil)
;;TODO:                    ("doc-private"
;;TODO:                     :components ("doc-private-org" "doc-private-extra"))
;;TODO:                    ;
;;TODO:                    ; Miscellaneous pages for other websites
;;TODO:                    ; org are the org-files that generate the content
;;TODO:                    ("org-org"
;;TODO:                     :base-directory "~/git/org/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/org"
;;TODO:                     :recursive t
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function org-publish-org-to-html
;;TODO:                     :style-include-default nil
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"/org.css\" type=\"text/css\" />"
;;TODO:                     :author-info nil
;;TODO:                     :creator-info nil)
;;TODO:                    ;
;;TODO:                    ; http://doc.norang.ca/  (norang website)
;;TODO:                    ; org-mode-doc-org this document
;;TODO:                    ; org-mode-doc-extra are images and css files that need to be included
;;TODO:                    ; org-mode-doc is the top-level project that gets published
;;TODO:                    ; This uses the same target directory as the 'doc' project
;;TODO:                    ("org-mode-doc-org"
;;TODO:                     :base-directory "~/git/org-mode-doc/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs"
;;TODO:                     :recursive t
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function (org-publish-org-to-html org-publish-org-to-org)
;;TODO:                     :plain-source t
;;TODO:                     :htmlized-source t
;;TODO:                     :style-include-default nil
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"/org.css\" type=\"text/css\" />"
;;TODO:                     :author-info nil
;;TODO:                     :creator-info nil)
;;TODO:                    ("org-mode-doc-extra"
;;TODO:                     :base-directory "~/git/org-mode-doc/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/doc.norang.ca/htdocs"
;;TODO:                     :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
;;TODO:                     :publishing-function org-publish-attachment
;;TODO:                     :recursive t
;;TODO:                     :author nil)
;;TODO:                    ("org-mode-doc"
;;TODO:                     :components ("org-mode-doc-org" "org-mode-doc-extra"))
;;TODO:                    ;
;;TODO:                    ; http://doc.norang.ca/  (norang website)
;;TODO:                    ; org-mode-doc-org this document
;;TODO:                    ; org-mode-doc-extra are images and css files that need to be included
;;TODO:                    ; org-mode-doc is the top-level project that gets published
;;TODO:                    ; This uses the same target directory as the 'doc' project
;;TODO:                    ("tmp-org"
;;TODO:                     :base-directory "/tmp/publish/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs/tmp"
;;TODO:                     :recursive t
;;TODO:                     :section-numbers nil
;;TODO:                     :table-of-contents nil
;;TODO:                     :base-extension "org"
;;TODO:                     :publishing-function (org-publish-org-to-html org-publish-org-to-org)
;;TODO:                     :style "<link rel=\"stylesheet\" href=\"http://doc.norang.ca/org.css\" type=\"text/css\" />"
;;TODO:                     :plain-source t
;;TODO:                     :htmlized-source t
;;TODO:                     :style-include-default nil
;;TODO:                     :auto-sitemap t
;;TODO:                     :sitemap-filename "index.html"
;;TODO:                     :sitemap-title "Test Publishing Area"
;;TODO:                     :sitemap-style "tree"
;;TODO:                     :author-info t
;;TODO:                     :creator-info t)
;;TODO:                    ("tmp-extra"
;;TODO:                     :base-directory "/tmp/publish/"
;;TODO:                     :publishing-directory "/ssh:www-data@www:~/www.norang.ca/htdocs/tmp"
;;TODO:                     :base-extension "css\\|pdf\\|png\\|jpg\\|gif"
;;TODO:                     :publishing-function org-publish-attachment
;;TODO:                     :recursive t
;;TODO:                     :author nil)
;;TODO:                    ("tmp"
;;TODO:                     :components ("tmp-org" "tmp-extra")))))
;;TODO: 
;;TODO:      ; I'm lazy and don't want to remember the name of the project to publish when I modify
;;TODO:      ; a file that is part of a project.  So this function saves the file, and publishes
;;TODO:      ; the project that includes this file
;;TODO:      ;
;;TODO:      ; It's bound to C-S-F12 so I just edit and hit C-S-F12 when I'm done and move on to the next thing
;;TODO:      (defun bh/save-then-publish ()
;;TODO:        (interactive)
;;TODO:        (save-buffer)
;;TODO:        (org-save-all-org-buffers)
;;TODO:        (org-publish-current-project))
;;TODO: 
;;TODO:      (global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
;;TODO: 
;;TODO: ;; The main projects are norang, doc, doc-private, org-mode-doc, and tmp. These projects publish directly to the webserver directory on a remote web server that serves the site. Publishing one of these projects exports all modified pages, generates images, and copies the resulting files to the webserver so that they are immediately available for viewing.
;;TODO: ;; The http://doc.norang.ca/ site contains subdirectories with client and private documentation that are restricted by using Apache Basic authentication. I don't create links to these sites from the publicly viewable pages. http://doc.norang.ca/someclient/ would show the index for any org files under ~/git/doc.norang.ca/someclient/ if that is set up as a viewable website. I use most of the
;;TODO: ;; information myself but give access to clients if they are interested in the information/notes that I keep about their systems.
;;TODO: ;; This works great for me - I know where my notes are and I can access them from anywhere on the internet. I'm also free to share notes with other people by simply giving them the link to the appropriate site.
;;TODO: ;; All I need to remember to do is edit the appropriate org file and publish it with C-S-F12 &#x2013; not exactly hard :)
;;TODO: ;; Recently I added a temporary publishing site for testing exports and validation. This is the tmp site which takes files from /tmp/publish and exports those files to a website publishing directory. This makes it easy to try new throw-away things on a live server.
;;TODO: 
;;TODO: ;; 16.7 Miscellaneous Export Settings
;;TODO: 
;;TODO: ;; This is a collection of export and publishing related settings that I use.
;;TODO: 
;;TODO: ;; 16.7.1 Fontify Latex listings for source blocks
;;TODO: 
;;TODO: ;; For export to latex I use the following setting to get fontified listings from source blocks:
;;TODO: 
;;TODO:      (setq org-export-latex-listings t)
;;TODO: 
;;TODO: 
;;TODO: ;; 16.7.2 Export HTML without XML header
;;TODO: 
;;TODO: ;; I use the following setting to remove the xml header line for HTML exports. This xml line was confusing Open Office when opening the HTML to convert to ODT.
;;TODO: 
;;TODO:      (setq org-export-html-xml-declaration (quote (("html" . "")
;;TODO:                                                    ("was-html" . "<?xml version=\"1.0\" encoding=\"%s\"?>")
;;TODO:                                                    ("php" . "<?php echo \"<?xml version=\\\"1.0\\\" encoding=\\\"%s\\\" ?>\"; ?>"))))
;;TODO: 
;;TODO: 
;;TODO: ;; 16.7.3 Allow binding variables on export without confirmation
;;TODO: 
;;TODO: ;; The following setting allows #+BIND: variables to be set on export without confirmation. In rare situations where I want to override some org-mode variable for export this allows exporting the document without a prompt.
;;TODO: 
;;TODO:      (setq org-export-allow-BIND t)
;;TODO: 
;;TODO: 
;;TODO: ;; 17 Reminders
;;TODO: 
;;TODO: ;; I use appt for reminders. It's simple and unobtrusive &#x2013; putting pending appointments in the status bar and beeping as 12, 9, 6, 3, and 0 minutes before the appointment is due.
;;TODO: ;; Everytime the agenda is displayed (and that's lots for me) the appointment list is erased and rebuilt from the current agenda details for today. This means everytime I reschedule something, add or remove tasks that are time related the appointment list is automatically updated the next time I look at the agenda.
;;TODO: 
;;TODO: ;; 17.1 Reminder Setup
;;TODO: 
;;TODO: 
;;TODO:      ; Erase all reminders and rebuilt reminders for today from the agenda
;;TODO:      (defun bh/org-agenda-to-appt ()
;;TODO:        (interactive)
;;TODO:        (setq appt-time-msg-list nil)
;;TODO:        (org-agenda-to-appt))
;;TODO: 
;;TODO:      ; Rebuild the reminders everytime the agenda is displayed
;;TODO:      (add-hook 'org-finalize-agenda-hook 'bh/org-agenda-to-appt 'append)
;;TODO: 
;;TODO:      ; This is at the end of my .emacs - so appointments are set up when Emacs starts
;;TODO:      (bh/org-agenda-to-appt)
;;TODO: 
;;TODO:      ; Activate appointments so we get notifications
;;TODO:      (appt-activate t)
;;TODO: 
;;TODO:      ; If we leave Emacs running overnight - reset the appointments one minute after midnight
;;TODO:      (run-at-time "24:01" nil 'bh/org-agenda-to-appt)
;;TODO: 
;;TODO: 
;;TODO: ;; 18 Productivity Tools
;;TODO: 
;;TODO: ;; This section is a miscellaneous collection of Emacs customizations that I use with org-mode so that it Works-For-Me(tm).
;;TODO: 
;;TODO: ;; 18.1 Abbrev-mode and Skeletons
;;TODO: 
;;TODO: ;; I use skeletons with abbrev-mode to quickly add preconfigured blocks to my Emacs edit buffers.
;;TODO: ;; I have blocks for creating:
;;TODO: 
;;TODO: ;; * generic blocks in org-mode
;;TODO: ;; * plantuml blocks in org-mode
;;TODO: ;;
;;TODO: ;;     o plantuml activity diagram block in org-mode
;;TODO: ;;     o plantuml sequent diagram block in org-mode
;;TODO: 
;;TODO: ;; * graphviz dot blocks in org-mode
;;TODO: ;; * ditaa blocks in org-mode
;;TODO: ;; * elisp source blocks in org-mode
;;TODO: 
;;TODO: ;; I still use < e TAB and < s TAB for creating example blocks and simple shell script blocks that need no further parameters.
;;TODO: ;; Here's my current setup for org-mode related skeletons. Each one defines an abbrev-mode shortcut so I can type splantumlRET to create a Plantuml block. This prompts for the filename (without extension) for the generated image file.
;;TODO: ;; At work I add a :tangle header to the skeleton and explicitly include the @startuml and @enduml marker lines in the skeleton so I can tangle the source file and share it with my colleagues. This makes the tangled source useable in Notepad and the PlantUML jar file running standalone.
;;TODO: ;; I have put the s (src) prefix on the shortcuts to prevent abbrev-mode from trying to expand PlantUML when I'm typing it in a sentence.
;;TODO: ;; For convenience in activity diagrams I added sif and sfor and just change the labels for the synchronization bars.
;;TODO: 
;;TODO:      ;; Enable abbrev-mode
;;TODO:      (add-hook 'org-mode-hook (lambda () (abbrev-mode 1)))
;;TODO: 
;;TODO:      ;; Skeletons
;;TODO:      ;;
;;TODO:      ;; sblk - Generic block #+begin_FOO .. #+end_FOO
;;TODO:      (define-skeleton skel-org-block
;;TODO:        "Insert an org block, querying for type."
;;TODO:        "Type: "
;;TODO:        "#+begin_" str "\n"
;;TODO:        _ - \n
;;TODO:        "#+end_" str "\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sblk" "" 'skel-org-block)
;;TODO: 
;;TODO:      ;; splantuml - PlantUML Source block
;;TODO:      (define-skeleton skel-org-block-plantuml
;;TODO:        "Insert a org plantuml block, querying for filename."
;;TODO:        "File (no extension): "
;;TODO:        "#+begin_src plantuml :file " str ".png :cache yes\n"
;;TODO:        _ - \n
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "splantuml" "" 'skel-org-block-plantuml)
;;TODO: 
;;TODO:      (define-skeleton skel-org-block-plantuml-activity
;;TODO:        "Insert a org plantuml block, querying for filename."
;;TODO:        "File (no extension): "
;;TODO:        "#+begin_src plantuml :file " str "-act.png :cache yes :tangle " str "-act.txt\n"
;;TODO:        "@startuml\n"
;;TODO:        "skinparam activity {\n"
;;TODO:        "BackgroundColor<<New>> Cyan\n"
;;TODO:        "}\n\n"
;;TODO:        "title " str " - \n"
;;TODO:        "note left: " str "\n"
;;TODO:        "(*) --> (*)\n"
;;TODO:        _ - \n
;;TODO:        "@enduml\n"
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sact" "" 'skel-org-block-plantuml-activity)
;;TODO: 
;;TODO:      (define-skeleton skel-org-block-plantuml-activity-if
;;TODO:        "Insert a org plantuml block activity if statement"
;;TODO:        ""
;;TODO:        "if \"\" then\n"
;;TODO:        "  -> [] \"" - _ "\"\n"
;;TODO:        "  --> ==M1==\n"
;;TODO:        "  -left-> ==M2==\n"
;;TODO:        "else\n"
;;TODO:        "end if\n"
;;TODO:        "--> ==M2==")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sif" "" 'skel-org-block-plantuml-activity-if)
;;TODO: 
;;TODO:      (define-skeleton skel-org-block-plantuml-activity-for
;;TODO:        "Insert a org plantuml block activity for statement"
;;TODO:        ""
;;TODO:        "--> ==LOOP1==\n"
;;TODO:        "note left: Loop1: For each\n"
;;TODO:        "--> ==ENDLOOP1==\n"
;;TODO:        "note left: Loop1: End for each")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sfor" "" 'skel-org-block-plantuml-activity-for)
;;TODO: 
;;TODO:      (define-skeleton skel-org-block-plantuml-sequence
;;TODO:        "Insert a org plantuml activity diagram block, querying for filename."
;;TODO:        "File appends (no extension): "
;;TODO:        "#+begin_src plantuml :file " str "-seq.png :cache yes :tangle " str "-seq.txt\n"
;;TODO:        "@startuml\n"
;;TODO:        "title " str " - \n"
;;TODO:        "actor CSR as \"Customer Service Representative\"\n"
;;TODO:        "participant CSMO as \"CSM Online\"\n"
;;TODO:        "participant CSMU as \"CSM Unix\"\n"
;;TODO:        "participant NRIS\n"
;;TODO:        "actor Customer"
;;TODO:        _ - \n
;;TODO:        "@enduml\n"
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sseq" "" 'skel-org-block-plantuml-sequence)
;;TODO: 
;;TODO:      ;; sdot - Graphviz DOT block
;;TODO:      (define-skeleton skel-org-block-dot
;;TODO:        "Insert a org graphviz dot block, querying for filename."
;;TODO:        "File (no extension): "
;;TODO:        "#+begin_src dot :file " str ".png :cache yes :cmdline -Kdot -Tpng\n"
;;TODO:        "graph G {\n"
;;TODO:        _ - \n
;;TODO:        "}\n"
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sdot" "" 'skel-org-block-dot)
;;TODO: 
;;TODO:      ;; sditaa - Ditaa source block
;;TODO:      (define-skeleton skel-org-block-ditaa
;;TODO:        "Insert a org ditaa block, querying for filename."
;;TODO:        "File (no extension): "
;;TODO:        "#+begin_src ditaa :file " str ".png :cache yes\n"
;;TODO:        _ - \n
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "sditaa" "" 'skel-org-block-ditaa)
;;TODO: 
;;TODO:      ;; selisp - Emacs Lisp source block
;;TODO:      (define-skeleton skel-org-block-elisp
;;TODO:        "Insert a org emacs-lisp block"
;;TODO:        ""
;;TODO:        "#+begin_src emacs-lisp\n"
;;TODO:        _ - \n
;;TODO:        "#+end_src\n")
;;TODO: 
;;TODO:      (define-abbrev org-mode-abbrev-table "selisp" "" 'skel-org-block-elisp)
;;TODO: 
;;TODO: ;; I also use abbrev-mode when taking notes at work. I tend to write first names for people which get expanded to their complete name in my notes. So if I write mickey it gets automatically expanded to Mickey Mouse as I type. To create an abbreviation just type in the short form followed by C-x a i l to create an abbreviation for the current mode I'm in.
;;TODO: ;; The only thing you have to be careful with is not to use a common word for your abbreviation since abbrev-mode will try to expand it everytime you enter it. I found this annoying when I used plantuml as one of my abbreviations.
;;TODO: ;; I also use skeletons and abbrev-mode for C source files at work. This works really well for me.
;;TODO: 
;;TODO: ;; 18.2 Focus On Current Work
;;TODO: 
;;TODO: ;; There is more than one way to do this. Use what works for you.
;;TODO: 

;; 18.2.1 Narrowing to a subtree with bh/org-todo

;; f5 and S-f5 are bound the functions for narrowing and widening the emacs buffer as defined below.
;; We now use:

;; * T (tasks) for C-c / t on the current buffer
;; * N (narrow) narrows to this task subtree
;; * U (up) narrows to the immediate parent task subtree without moving
;; * P (project) narrows to the parent project subtree without moving
;; * F (file) narrows to the current file or file of the existing restriction

;; The agenda keeps widening the org buffer so this gives a convenient way to focus on what we are doing.

     ;; (global-set-key (kbd "<f5>") 'bh/org-todo)

     (defun bh/org-todo (arg)
       (interactive "p")
       (if (equal arg 4)
           (save-restriction
             (bh/narrow-to-org-subtree)
             (org-show-todo-tree nil))
         (bh/narrow-to-org-subtree)
         (org-show-todo-tree nil)))

     ;; (global-set-key (kbd "<S-f5>") 'bh/widen)

     (defun bh/widen ()
       (interactive)
       (if (equal major-mode 'org-agenda-mode)
           (org-agenda-remove-restriction-lock)
         (widen)
         (org-agenda-remove-restriction-lock)))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "W" 'bh/widen))
               'append)

     (defun bh/restrict-to-file-or-follow (arg)
       "Set agenda restriction to 'file or with argument invoke follow mode.
     I don't use follow mode very often but I restrict to file all the time
     so change the default 'F' binding in the agenda to allow both"
       (interactive "p")
       (if (equal arg 4)
           (org-agenda-follow-mode)
         (if (equal major-mode 'org-agenda-mode)
             (bh/set-agenda-restriction-lock 4)
           (widen))))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "F" 'bh/restrict-to-file-or-follow))
               'append)

     (defun bh/narrow-to-org-subtree ()
       (widen)
       (org-narrow-to-subtree))

     (defun bh/narrow-to-subtree ()
       (interactive)
       (if (equal major-mode 'org-agenda-mode)
           (org-with-point-at (org-get-at-bol 'org-hd-marker)
             (bh/narrow-to-org-subtree)
             (save-restriction
               (org-agenda-set-restriction-lock)))
         (bh/narrow-to-org-subtree)
         (save-restriction
           (org-agenda-set-restriction-lock))))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "N" 'bh/narrow-to-subtree))
               'append)

     (defun bh/narrow-up-one-org-level ()
       (widen)
       (save-excursion
         (outline-up-heading 1 'invisible-ok)
         (bh/narrow-to-org-subtree)))

     (defun bh/get-pom-from-agenda-restriction-or-point ()
       (or (org-get-at-bol 'org-hd-marker)
           (and (marker-position org-agenda-restrict-begin) org-agenda-restrict-begin)
           (and (equal major-mode 'org-mode) (point))
           org-clock-marker))

     (defun bh/narrow-up-one-level ()
       (interactive)
       (if (equal major-mode 'org-agenda-mode)
           (org-with-point-at (bh/get-pom-from-agenda-restriction-or-point)
             (bh/narrow-up-one-org-level))
         (bh/narrow-up-one-org-level)))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "U" 'bh/narrow-up-one-level))
               'append)

     (defun bh/narrow-to-org-project ()
       (widen)
       (save-excursion
         (bh/find-project-task)
         (bh/narrow-to-org-subtree)))

     (defun bh/narrow-to-project ()
       (interactive)
       (if (equal major-mode 'org-agenda-mode)
           (org-with-point-at (bh/get-pom-from-agenda-restriction-or-point)
             (bh/narrow-to-org-project)
             (save-restriction
               (org-agenda-set-restriction-lock)))
         (bh/narrow-to-org-project)
         (save-restriction
           (org-agenda-set-restriction-lock))))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "P" 'bh/narrow-to-project))
               'append)

     (defvar bh/current-view-project nil)

     (defun bh/view-next-project ()
       (interactive)
       (unless (marker-position org-agenda-restrict-begin)
         (goto-char (point-min))
         (setq bh/current-view-project (point)))
       (bh/widen)
       (goto-char bh/current-view-project)
       (forward-visible-line 1)
       (while (and (< (point) (point-max))
                   (or (not (org-get-at-bol 'org-hd-marker))
                       (org-with-point-at (org-get-at-bol 'org-hd-marker)
                         (or (not (bh/is-project-p))
                             (bh/is-project-subtree-p)))))
         (forward-visible-line 1))
       (setq bh/current-view-project (point))
       (if (org-get-at-bol 'org-hd-marker)
           (progn
             (bh/narrow-to-project)
             (org-agenda-redo)
             (beginning-of-buffer))
         (beginning-of-buffer)
         (error "All projects viewed.")))

     (add-hook 'org-agenda-mode-hook
               '(lambda () (org-defkey org-agenda-mode-map "V" 'bh/view-next-project))
               'append)

;;TODO: ;; This makes it easy to hide all of the other details in your org-file temporarily by limiting your view to this task subtree. Tasks are folded and hilighted so that only tasks which are incomplete are shown.
;;TODO: ;; I hit f5 (or the T speed key) a lot. This basically does a org-narrow-to-subtree and C-c / t combination leaving the buffer in a narrowed state. I use S-f5 (or some other widening speed key like U, W, F) to widen back to the normal view.
;;TODO: ;; I also have the following setting to force showing the next headline.
;;TODO: 
;;TODO:      (setq org-show-entry-below (quote ((default))))
;;TODO: 
;;TODO: ;; This prevents too many headlines from being folded together when I'm working with collapsed trees.
;;TODO: 
;;TODO: ;; 18.2.2 Limiting the agenda to a subtree
;;TODO: 
;;TODO: ;; C-c C-x < turns on the agenda restriction lock for the current subtree. This keeps your agenda focused on only this subtree. Alarms and notifications are still active outside the agenda restriction. C-c C-x > turns off the agenda restriction lock returning your agenda view back to normal.
;;TODO: ;; I have added key bindings for the agenda to allow using C-c C-x < in the agenda to set the restriction lock to the current task directly. The following elisp accomplishes this.
;;TODO: 
;;TODO:      (add-hook 'org-agenda-mode-hook
;;TODO:                '(lambda () (org-defkey org-agenda-mode-map "\C-c\C-x<" 'bh/set-agenda-restriction-lock))
;;TODO:                'append)
;;TODO: 
;;TODO:      (defun bh/set-agenda-restriction-lock (arg)
;;TODO:        "Set restriction lock to current task subtree or file if prefix is specified"
;;TODO:        (interactive "p")
;;TODO:        (let* ((pom (bh/get-pom-from-agenda-restriction-or-point))
;;TODO:               (tags (org-with-point-at pom (org-get-tags-at))))
;;TODO:          (let ((restriction-type (if (equal arg 4) 'file 'subtree)))
;;TODO:            (save-restriction
;;TODO:              (cond
;;TODO:               ((and (equal major-mode 'org-agenda-mode) pom)
;;TODO:                (org-with-point-at pom
;;TODO:                  (org-agenda-set-restriction-lock restriction-type)))
;;TODO:               ((and (equal major-mode 'org-mode) (org-before-first-heading-p))
;;TODO:                (org-agenda-set-restriction-lock 'file))
;;TODO:               (pom
;;TODO:                (org-with-point-at pom
;;TODO:                  (org-agenda-set-restriction-lock restriction-type))))))))
;;TODO: 
;;TODO: ;; This allows me to set the restriction lock from agenda to task directly. I work from the agenda a lot and I find this very convenient.
;;TODO: ;; Setting the restriction directly to the task is less surprising than automatically moving up the tree to the project level task &#x2013; which is what I was doing before. If the select task is too restrictive it's easy to move the restriction lock up a level by visiting the task in the org file and going up and resetting the lock - in case you want to see move of the project.
;;TODO: ;; Selecting the entire project sometimes has too many tasks in it and I want to limit the view to part of the subtree. This is why I keep the N and U key bindings for adjusting the narrowed region.
;;TODO: ;; I've added new convenience keys for restricting the agenda and org-buffer to subtree, parent task, and project task, as well as removing the restriction. These keys work both in the agenda and as speed commands on a headline in the org-file.
;;TODO: 
;;TODO: ;; * N narrows to the current task subtree
;;TODO: ;;     This is the same as same as C-c C-x <
;;TODO: ;; * U narrows to the parent subtree of this task
;;TODO: ;;     This goes up one level and narrows to that subtree.
;;TODO: ;; * P narrows to the entire project containing this task
;;TODO: ;;     This goes up the tree to the top-level TODO keyword and selects that as the subtree to narrow to
;;TODO: ;; * W removes the restriction, widening the buffer
;;TODO: 
;;TODO: 
;;TODO: ;; 18.2.3 Limiting the agenda to a file
;;TODO: 
;;TODO: ;; You can limit the agenda view to a single file in multiple ways.
;;TODO: ;; You can use the agenda restriction lock C-c C-x < on the any line before the first heading to set the agenda restriction lock to this file only. This is equivalent using a prefix argumment (C-u C-c C-x <) anywhere in the file. This lock stays in effect until you remove it with C-c C-x >.
;;TODO: ;; This also works in the agenda with my C-u C-c c-x < key binding.
;;TODO: ;; Another way is to invoke the agenda with F12 < a while visiting an org-mode file. This limits the agenda view to just this file. I occasionally use this to view a file not in my org-agenda-files in the agenda.
;;TODO: 
;;TODO: ;; 18.3 Tuning the Agenda Views
;;TODO: 
;;TODO: ;; Various customizations affect how the agenda views show task details. This section shows each of the customizations I use in my workflow.
;;TODO: 
;; 18.3.1 Highlight the current agenda line

;; The following code in my .emacs file keeps the current agenda line highlighted. This makes it obvious what task will be affected by commands issued in the agenda. No more acting on the wrong task by mistake!
;; The clock modeline time is also shown with a reverse background.

     ;; Always hilight the current agenda line
     (add-hook 'org-agenda-mode-hook
               '(lambda () (hl-line-mode 1))
               'append)

     ;; TODO
     ;; ;; The following custom-set-faces create the highlights
     ;; (custom-set-faces
     ;;   ;; custom-set-faces was added by Custom.
     ;;   ;; If you edit it by hand, you could mess it up, so be careful.
     ;;   ;; Your init file should contain only one such instance.
     ;;   ;; If there is more than one, they won't work right.
     ;;  '(org-mode-line-clock ((t (:background "grey75" :foreground "red" :box (:line-width -1 :style released-button)))) t))


;;TODO: ;; 18.3.2 Keep tasks with timestamps visible on the global todo lists
;;TODO: 
;;TODO: ;; Tasks with dates (SCHEDULED:, DEADLINE:, or active dates) show up in the agenda when appropriate. The block agenda view (F12 a) tries to keep tasks showing up only in one location (either in the calendar or other todo lists in later sections of the block agenda.) I now rarely use the global todo list search in org-mode (F12 t, F12 m) and when I do I'm trying to find a specific task quickly. These
;;TODO: ;; lists now include everything so I can just search for the item I want and move on.
;;TODO: ;; The block agenda prevents display of tasks with deadlines or scheduled dates in the future so you can safely ignore these until the appropriate time.
;;TODO: 
;;TODO:      ;; Keep tasks with dates on the global todo lists
;;TODO:      (setq org-agenda-todo-ignore-with-date nil)
;;TODO: 
;;TODO:      ;; Keep tasks with deadlines on the global todo lists
;;TODO:      (setq org-agenda-todo-ignore-deadlines nil)
;;TODO: 
;;TODO:      ;; Keep tasks with scheduled dates on the global todo lists
;;TODO:      (setq org-agenda-todo-ignore-scheduled nil)
;;TODO: 
;;TODO:      ;; Keep tasks with timestamps on the global todo lists
;;TODO:      (setq org-agenda-todo-ignore-timestamp nil)
;;TODO: 
;;TODO:      ;; Remove completed deadline tasks from the agenda view
;;TODO:      (setq org-agenda-skip-deadline-if-done t)
;;TODO: 
;;TODO:      ;; Remove completed scheduled tasks from the agenda view
;;TODO:      (setq org-agenda-skip-scheduled-if-done t)
;;TODO: 
;;TODO:      ;; Remove completed items from search results
;;TODO:      (setq org-agenda-skip-timestamp-if-done t)


;; 18.3.3 Use the Diary for Holidays and Appointments

;; I don't use the emacs Diary for anything but I like seeing the holidays on my agenda. This helps with planning for those days when you're not supposed to be working.

     (setq org-agenda-include-diary nil)
     (setq org-agenda-diary-file org-journal-file)


;; The diary file keeps date-tree entries created by the capture mode 'appointment' template. I use this also for miscellaneous tasks I want to clock during interruptions.
;; I don't use a ~/diary file anymore. That is just there as a zero-length file to keep Emacs happy. I use org-mode's diary functions instead. Inserting entries with i in the emacs agenda creates date entries in the ~/git/org/diary.org file.
;; I include holidays from the calendar in my todo.org file as follows:
;; 
;;      #+FILETAGS: PERSONAL
;;      * Appointments
;;        PROPERTIES:
;;        CATEGORY: Appt
;;        ARCHIVE:  %s_archive::* Appointments
;;        END:
;;      ** Holidays
;;         PROPERTIES:
;;         Category: Holiday
;;         END:
;;         %%(org-calendar-holiday)
;;      ** Some other Appointment
;;         ...

;;TODO: ;; I use the following setting so any time strings in the heading are shown in the agenda.
;;TODO: 
;;TODO:      (setq org-agenda-insert-diary-extract-time t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.3.4 Searches include archive files
;;TODO: 
;;TODO: ;; I keep a single archive file for each of my org-mode project files. This allows me to search the current file and the archive when I need to dig up old information from the archives.
;;TODO: ;; I don't need this often but it sure is handy on the occasions that I do need it.
;;TODO: 
;;TODO:      ;; Include agenda archive files when searching for things
;;TODO:      (setq org-agenda-text-search-extra-files (quote (agenda-archives)))
;;TODO: 
;;TODO: 
;; 18.3.5 Agenda view tweaks

;; The following agenda customizations control

;; * display of repeating tasks
;; * display of empty dates on the agenda
;; * task sort order
;; * start the agenda weekly view with Sunday
;; * display of the grid
;; * habits at the bottom

;; I use a custom sorting function so that my daily agenda lists tasks in order of importance. Tasks on the daily agenda are listed in the following order:
;; 
;;      1. tasks with times at the top so they are hard to miss
;;      2. entries for today (active timestamp headlines that are not scheduled or deadline tasks)
;;      3. deadlines due today
;;      4. late deadline tasks
;;      5. scheduled items for today
;;      6. pending deadlines (due soon)
;;      7. late scheduled items
;;      8. habits

;; The lisp for this isn't particularly pretty but it works.
;; Here are the .emacs settings:

     ;; Show all future entries for repeating tasks
     (setq org-agenda-repeating-timestamp-show-all t)

     ;; Show all agenda dates - even if they are empty
     (setq org-agenda-show-all-dates t)

     ;; Sorting order for tasks on the agenda
     (setq org-agenda-sorting-strategy
           (quote ((agenda habit-down time-up user-defined-up priority-down effort-up category-keep)
                   (todo category-up priority-down effort-up)
                   (tags category-up priority-down effort-up)
                   (search category-up))))

     ;; Start the weekly agenda on Monday
     (setq org-agenda-start-on-weekday 1)

     ;; Enable display of the time grid so we can see the marker for the current time
     (setq org-agenda-time-grid (quote ((daily today remove-match)
                                        #("----------------" 0 16 (org-heading t))
                                        (0900 1100 1300 1500 1700))))

     ;; Display tags farther right
     (setq org-agenda-tags-column -102)

     ;;
     ;; Agenda sorting functions
     ;;
     (setq org-agenda-cmp-user-defined 'bh/agenda-sort)

     (defun bh/agenda-sort (a b)
       "Sorting strategy for agenda items.
     Late deadlines first, then scheduled, then non-late deadlines"
       (let (result num-a num-b)
         (cond
          ; time specific items are already sorted first by org-agenda-sorting-strategy

          ; non-deadline and non-scheduled items next
          ((bh/agenda-sort-test 'bh/is-not-scheduled-or-deadline a b))

          ; deadlines for today next
          ((bh/agenda-sort-test 'bh/is-due-deadline a b))

          ; late deadlines next
          ((bh/agenda-sort-test-num 'bh/is-late-deadline '< a b))

          ; scheduled items for today next
          ((bh/agenda-sort-test 'bh/is-scheduled-today a b))

          ; late scheduled items next
          ((bh/agenda-sort-test-num 'bh/is-scheduled-late '> a b))

          ; pending deadlines last
          ((bh/agenda-sort-test-num 'bh/is-pending-deadline '< a b))

          ; finally default to unsorted
          (t (setq result nil)))
         result))

     (defmacro bh/agenda-sort-test (fn a b)
       "Test for agenda sort"
       `(cond
         ; if both match leave them unsorted
         ((and (apply ,fn (list ,a))
               (apply ,fn (list ,b)))
          (setq result nil))
         ; if a matches put a first
         ((apply ,fn (list ,a))
          (setq result -1))
         ; otherwise if b matches put b first
         ((apply ,fn (list ,b))
          (setq result 1))
         ; if none match leave them unsorted
         (t nil)))

     (defmacro bh/agenda-sort-test-num (fn compfn a b)
       `(cond
         ((apply ,fn (list ,a))
          (setq num-a (string-to-number (match-string 1 ,a)))
          (if (apply ,fn (list ,b))
              (progn
                (setq num-b (string-to-number (match-string 1 ,b)))
                (setq result (if (apply ,compfn (list num-a num-b))
                                 -1
                               1)))
            (setq result -1)))
         ((apply ,fn (list ,b))
          (setq result 1))
         (t nil)))

     (defun bh/is-not-scheduled-or-deadline (date-str)
       (and (not (bh/is-deadline date-str))
            (not (bh/is-scheduled date-str))))

     (defun bh/is-due-deadline (date-str)
       (string-match "Deadline:" date-str))

     (defun bh/is-late-deadline (date-str)
       (string-match "In *\\(-.*\\)d\.:" date-str))

     (defun bh/is-pending-deadline (date-str)
       (string-match "In \\([^-]*\\)d\.:" date-str))

     (defun bh/is-deadline (date-str)
       (or (bh/is-due-deadline date-str)
           (bh/is-late-deadline date-str)
           (bh/is-pending-deadline date-str)))

     (defun bh/is-scheduled (date-str)
       (or (bh/is-scheduled-today date-str)
           (bh/is-scheduled-late date-str)))

     (defun bh/is-scheduled-today (date-str)
       (string-match "Scheduled:" date-str))

     (defun bh/is-scheduled-late (date-str)
       (string-match "Sched\.\\(.*\\)x:" date-str))


;;TODO: ;; 18.3.6 q buries the agenda view buffer
;;TODO: 
;;TODO: ;; I change the q key in the agenda so instead of killing the agenda buffer it merely buries it to the end of the buffer list. This allows me to pull it back up quickly with the q speed key or f9 f9 and regenerate the results with g.
;;TODO: 
;;TODO:      (add-hook 'org-agenda-mode-hook
;;TODO:                (lambda ()
;;TODO:                  (define-key org-agenda-mode-map "q" 'bury-buffer))
;;TODO:                'append)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.4 Checklist handling
;;TODO: 
;;TODO: ;; Checklists are great for repeated tasks with lots of things that need to be done. For a long time I was manually resetting the check boxes to unchecked when marking the repeated task DONE but no more! There's a contributed org-checklist that can uncheck the boxes automagically when the task is marked done.
;;TODO: ;; Add the following to your .emacs
;;TODO: 
;;TODO:      (add-to-list 'load-path (expand-file-name "~/git/org-mode/contrib/lisp"))
;;TODO: 
;;TODO:      (require 'org-checklist)
;;TODO: 
;;TODO: ;; and then to use it in a task you simply set the property RESET_CHECK_BOXES to t like this
;;TODO: ;; 
;;TODO: ;;      * TODO Invoicing and Archive Tasks [0/7]
;;TODO: ;;        DEADLINE: <2009-07-01 Wed +1m -0d>
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        RESET_CHECK_BOXES: t
;;TODO: ;;        END:
;;TODO: ;; 
;;TODO: ;;        - [ ] Do task 1
;;TODO: ;;        - [ ] Do task 2
;;TODO: ;;        ...
;;TODO: ;;        - [ ] Do task 7
;;TODO: 
;;TODO: 
;;TODO: ;; 18.5 Backups
;;TODO: 
;;TODO: ;; Backups that you have to work hard at don't get done.
;;TODO: ;; I lost a bunch of data over 10 years ago due to not having a working backup solution. At the time I said I'm not going to lose any important data ever again. So far so good :)
;;TODO: ;; My backups get done religiously. What does this have to do with org-mode? Not much really, other than I don't spend time doing backups &#x2013; they just happen &#x2013; which saves me time for other more interesting things.
;;TODO: ;; My backup philosophy is to make it possible to recover your data &#x2013; not necessarily easy. It doesn't have to be easy/fast to do the recovery because I'll rarely have to recover data from the backups. Saving time for recovery doesn't make sense to me. I want the backup to be fast and painless since I do those all the time.
;;TODO: ;; I set up an automated network backup over 10 years ago that is still serving me well today. All of my systems gets daily backups to a network drive. These are collected monthly and written to an external removable USB disk.
;;TODO: ;; Once a month my task for backups prompts me to move the current collection of montly backups to the USB drive for external storage. Backups take minimal effort currently and I'm really happy about that.
;;TODO: ;; Since then git came into my life, so backups of git repositories that are on multiple machines is much less critical than it used to be. There is an automatic backup of everything pushed to the remote repository.
;;TODO: 
;;TODO: ;; 18.6 Handling blocked tasks
;;TODO: 
;;TODO: ;; Blocked tasks are tasks that have subtasks which are not in a done todo state. Blocked tasks show up in a grayed font by default in the agenda.
;;TODO: ;; To enable task blocking set the following variable:
;;TODO: 
;;TODO:      (setq org-enforce-todo-dependencies t)
;;TODO: 
;;TODO: ;; This setting prevents tasks from changing to DONE if any subtasks are still open. This works pretty well except for repeating tasks. I find I'm regularly adding TODO tasks under repeating tasks and not all of the subtasks need to be complete before the next repeat cycle.
;;TODO: ;; You can override the setting temporarily by changing the task with C-u C-u C-u C-c C-t but I never remember that. I set a permanent property on the repeated tasks as follows:
;;TODO: ;; 
;;TODO: ;;      * TODO New Repeating Task
;;TODO: ;;        SCHEDULED: <2009-06-16 Tue +1w>
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        NOBLOCKING: t
;;TODO: ;;        END:
;;TODO: ;;        ...
;;TODO: ;;      ** TODO Subtask
;;TODO: 
;;TODO: ;; This prevents the New Repeating Task from being blocked if some of the items under it are not complete.
;;TODO: ;; Occassionally I need to complete tasks in a given order. Org-mode has a property ORDERED that enforces this for subtasks.
;;TODO: 
;;TODO: ;;      * TODO Some Task
;;TODO: ;;        PROPERTY:
;;TODO: ;;        ORDERED: t
;;TODO: ;;        END:
;;TODO: ;;      ** TODO Step 1
;;TODO: ;;      ** TODO Step 2
;;TODO: ;;      ** TODO Step 3
;;TODO: 
;;TODO: ;; In this case you need to complete Step 1 before you can complete Step 2, etc. and org-mode prevents the state change to a done task until the preceding tasks are complete.
;;TODO: 
;;TODO: ;; 18.7 Org Task structure and presentation
;;TODO: 
;;TODO: ;; This section describes various org-mode settings I use to control how tasks are displayed while I work on my org mode files.
;;TODO: 
;;TODO: ;; 18.7.1 Controlling display of leading stars on headlines
;;TODO: 
;;TODO: ;; Org-mode has the ability to show or hide the leading stars on task headlines. It's also possible to have headlines at odd levels only so that the stars and heading task names line up in sublevels.
;;TODO: ;; To make org show leading stars use
;;TODO: 
;;TODO:      (setq org-hide-leading-stars nil)
;;TODO: 
;;TODO: ;; I now use org-indent mode which hides leading stars.
;;TODO: 
;;TODO: ;; 18.7.2 org-indent mode
;;TODO: 
;;TODO: ;; I recently started using org-indent mode. I like this setting a lot. It removes the indentation in the org-file but displays it as if it was indented while you are working on the org file buffer.
;;TODO: ;; org-indent mode displays as if org-odd-levels-only is true but it has a really clean look that I prefer over my old setup.
;;TODO: ;; I have org-indent mode on by default at startup with the following setting:
;;TODO: 
;;TODO:      (setq org-startup-indented t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.7.3 Handling blank lines
;;TODO: 
;;TODO: ;; Blank lines are evil :). They keep getting inserted in between headlines and I don't want to see them in collapsed (contents) views. When I use TAB to fold (cycle) tasks I don't want to see any blank lines between headings.
;;TODO: ;; The following setting hides blank lines between headings which keeps folded view nice and compact.
;;TODO: 
;;TODO:      (setq org-cycle-separator-lines 0)
;;TODO: 
;;TODO: ;; I find extra blank lines in lists and headings a bit of a nuisance. To get a body after a list you need to include a blank line between the list entry and the body &#x2013; and indent the body appropriately. Most of my lists have no body detail so I like the look of collapsed lists with no blank lines better.
;;TODO: ;; The following setting prevents creating blank lines before headings but allows list items to adapt to existing blank lines around the items:
;;TODO: 
;;TODO:      (setq org-blank-before-new-entry (quote ((heading)
;;TODO:                                               (plain-list-item . auto))))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.7.4 Adding new tasks quickly without disturbing the current task content
;;TODO: 
;;TODO: ;; To create new headings in a project file it is really convenient to use C-RET, C-S-RET, M-RET, and M-S-RET. This inserts a new headline possibly with a TODO keyword. With the following setting
;;TODO: 
;;TODO:      (setq org-insert-heading-respect-content nil)
;;TODO: 
;;TODO: ;; org inserts the heading at point for the M- versions and respects content for the C- versions. The respect content setting is temporarily turned on for the C- versions which adds the new heading after the content of the current item. This lets you hit C-S-RET in the middle of an entry and the new heading is added after the body of the current entry but still allow you to split an entry in the
;;TODO: ;; middle with M-S-RET.
;;TODO: 
;;TODO: ;; 18.7.5 Notes at the top
;;TODO: 
;;TODO: ;; I enter notes for tasks with C-c C-z (or just z in the agenda). Changing tasks states also sometimes prompt for a note (e.g. moving to WAITING prompts for a note and I enter a reason for why it is waiting). These notes are saved at the top of the task so unfolding the task shows the note first.
;;TODO: 
;;TODO:      (setq org-reverse-note-order nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.7.6 Searching and showing results
;;TODO: 
;;TODO: ;; Org-mode's searching capabilities are really effective at finding data in your org files. C-c / / does a regular expression search on the current file and shows matching results in a collapsed view of the org-file.
;;TODO: ;; I have org-mode show the hierarchy of tasks above the matched entries and also the immediately following sibling task (but not all siblings) with the following settings:
;;TODO: 
;;TODO:      (setq org-show-following-heading t)
;;TODO:      (setq org-show-hierarchy-above t)
;;TODO:      (setq org-show-siblings (quote ((default))))
;;TODO: 
;;TODO: ;; This keeps the results of the search relatively compact and mitigates accidental errors by cutting too much data from your org file with C-k. Cutting folded data (including the &#x2026;) can be really dangerous since it cuts text (including following subtrees) which you can't see. For this reason I always show the following headline when displaying search results.
;;TODO: 
;;TODO: ;; 18.7.7 Editing and Special key handling
;;TODO: 
;;TODO: ;; Org-mode allows special handling of the C-a, C-e, and C-k keys while editing headlines. I also use the setting that pastes (yanks) subtrees and adjusts the levels to match the task I am pasting to. See the docstring (C-h v org-yank-adjust-subtrees) for more details on each variable and what it does.
;;TODO: ;; I have org-special-ctrl-a/e set to enable easy access to the beginning and end of headlines. I use M-m or C-a C-a to get to the beginning of the line so the speed commands work and C-a to give easy access to the beginning of the heading text when I need that.
;;TODO: 
;;TODO:      (setq org-special-ctrl-a/e t)
;;TODO:      (setq org-special-ctrl-k t)
;;TODO:      (setq org-yank-adjusted-subtrees t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.8 Attachments
;;TODO: 
;;TODO: ;; Attachments are great for getting large amounts of data related to your project out of your org-mode files. Before attachments came along I was including huge blocks of SQL code in my org files to keep track of changes I made to project databases. This bloated my org file sizes badly.
;;TODO: ;; Now I can create the data in a separate file and attach it to my project task so it's easily located again in the future.
;;TODO: ;; I set up org-mode to generate unique attachment IDs with org-id-method as follows:
;;TODO: 
;;TODO:      (setq org-id-method (quote uuidgen))
;;TODO: 
;;TODO: ;; Say you want to attach a file x.sql to your current task. Create the file data in /tmp/x.sql and save it.
;;TODO: ;; Attach the file with C-c C-a a and enter the filename: x.sql. This generates a unique ID for the task and adds the file in the attachment directory.
;;TODO: ;; 
;;TODO: ;;      * Attachments                                                        :ATTACH:
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        Attachments: x.sql
;;TODO: ;;        ID:       f1d38e9a-ff70-4cc4-ab50-e8b58b2aaa7b
;;TODO: ;;        END:
;;TODO: 
;;TODO: ;; The attached file is saved in data/f1/d38e9a-ff70-4cc4-ab50-e8b58b2aaa7b/. Where it goes exactly isn't important for me &#x2013; as long as it is saved and retrievable easily. Org-mode copies the original file /tmp/x.sql into the appropriate attachment directory.
;;TODO: ;; Tasks with attachments automatically get an ATTACH tag so you can easily find tasks with attachments with a tag search.
;;TODO: ;; To open the attachment for a task use C-c C-a o. This prompts for the attachment to open and TAB completion works here.
;;TODO: ;; The ID changes for every task header when a new ID is generated.
;;TODO: ;; It's possible to use named directories for attachments but I haven't needed this functionality yet &#x2013; it's there if you need it.
;;TODO: ;; I store my org-mode attachments with my org files in a subdirectory data. These are automatically added to my git repository along with any other org-mode changes I've made.
;;TODO: 
;;TODO: ;; 18.9 Deadlines and Agenda Visibility
;;TODO: 
;;TODO: ;; Deadlines and due dates are a fact or life. By default I want to see deadlines in the agenda 30 days before the due date.
;;TODO: ;; The following setting accomplishes this:
;;TODO: 
;;TODO:      (setq org-deadline-warning-days 30)
;;TODO: 
;;TODO: ;; This gives me plenty of time to deal with the task so that it is completed on or before the due date.
;;TODO: ;; I also use deadlines for repeating tasks. If the task repeats more often than once per month it would be always bugging me on the agenda view. For these types of tasks I set an explicit deadline warning date as follows:
;;TODO: 
;;TODO:      * TODO Pay Wages
;;TODO:        DEADLINE: <2009-07-01 Wed +1m -0d>
;;TODO: 
;;TODO: ;; This example repeats monthly and shows up in the agenda on the day it is due (with no prior warning). You can set any number of lead days you want on DEADLINES using -Nd where N is the number of days in advance the task should show up in the agenda. If no value is specified the default org-deadline-warning-days is used.
;;TODO: 
;;TODO: ;; 18.10 Exporting Tables to CSV
;;TODO: 
;;TODO: ;; I generate org-mode tables with details of task specifications and record structures for some of my projects. My clients like to use spreadsheets for this type of detail.
;;TODO: ;; It's easy to share the details of the org-mode table by exporting in HTML but that isn't easy for anyone else to work with if they need to edit data.
;;TODO: ;; To solve this problem I export my table as comma delimited values (CSV) and then send that to the client (or read it into a spreadsheet and email the resulting spreadsheet file).
;;TODO: ;; Org-mode can export tables as TAB or comma delimited formats. I set the default format to CSV with:
;;TODO: 
;;TODO:      (setq org-table-export-default-format "orgtbl-to-csv")
;;TODO: 
;;TODO: ;; Exporting to CSV format is the only one I use and this provides the default so I can just hit RETURN when prompted for the format.
;;TODO: ;; To export the following table I put the cursor inside the table and hit M-x org-table-export which prompts for a filename and the format which defaults to orgtbl-to-csv from the setting above.
;;TODO: ;;  __________________
;;TODO: ;; |One__|Two___|Three|
;;TODO: ;; |1____|1_____|2____|
;;TODO: ;; |3____|6_____|5____|
;;TODO: ;; |fred_|kpe___|mary_|
;;TODO: ;; |234.5|432.12|324.3|
;;TODO: 
;;TODO: ;; This creates the file with the following data
;;TODO: ;; 
;;TODO: ;;      One,Two,Three
;;TODO: ;;      1,1,2
;;TODO: ;;      3,6,5
;;TODO: ;;      fred,kpe,mary
;;TODO: ;;      234.5,432.12,324.3
;;TODO: 
;;TODO: 
;;TODO: ;; 18.11 Minimize Emacs Frames
;;TODO: 
;;TODO: ;; Links to emails, web pages, and other files are sprinkled all over my org files. The following setting control how org-mode handles opening the link.
;;TODO: 
;;TODO:      (setq org-link-frame-setup (quote ((vm . vm-visit-folder)
;;TODO:                                         (gnus . org-gnus-no-new-news)
;;TODO:                                         (file . find-file))))
;;TODO: 
;;TODO:      ; Use the current window for C-c ' source editing
;;TODO:      (setq org-src-window-setup 'current-window)
;;TODO: 
;;TODO: ;; I like to keep links in the same window so that I don't end up with a ton of frames in my window manager. I normally work in a full-screen window and having links open in the same window just works better for me.
;;TODO: ;; If I need to work in multiple files I'll manually create the second frame with C-x 5 2 or split the window with C-x 4 2 or C-X 4 3. When I visit files in Emacs I normally want to replace the current window with the new content.
;;TODO: 
;;TODO: ;; 18.12 Logging stuff
;;TODO: 
;;TODO: ;; Most of my logging is controlled by the global org-todo-keywords
;;TODO: ;; My logging settings are set as follows:
;;TODO: 
;;TODO:      (setq org-log-done (quote time))
;;TODO:      (setq org-log-into-drawer t)
;;TODO:      (setq org-log-state-notes-insert-after-drawers nil)
;;TODO: 

;; My org-todo-keywords are set as follows:

;;      (setq org-todo-keywords
;;            (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
;;                    (sequence "WAITING(w@/@)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE"))))


;;TODO: ;; This adds a log entry whenever a task moves to any of the following states:
;;TODO: 
;;TODO: ;; * to or out of DONE status
;;TODO: ;; * to WAITING status (with a note) or out of WAITING status
;;TODO: ;; * to HOLD status
;;TODO: ;; * to CANCELLED status (with a note) or out of CANCELLED status
;;TODO: 
;;TODO: ;; I keep clock times and states in the LOGBOOK drawer to keep my tasks uncluttered. If a task is WAITING then the reason for why it is waiting is near the top of the LOGBOOK and unfolding the LOGBOOK drawer provides that information. From the agenda simply hitting SPC on the task will reveal the LOGBOOK drawer.
;;TODO: 
;;TODO: ;; 18.13 Limiting time spent on tasks
;;TODO: 
;;TODO: ;; Org-mode has this great new feature for signalling alarms when the estimated time for a task is reached. I use this to limit the amount of time I spend on a task during the day.
;;TODO: ;; As an example, I've been working on this document for over two months now. I want to get it finished but I can't just work on it solely until it's done because then nothing else gets done. I want to do a little bit every day but limit the total amount of time I spend documenting org-mode to an hour a day.
;;TODO: ;; To this end I have a task
;;TODO: ;; 
;;TODO: ;;      * NEXT Document my use of org-mode
;;TODO: ;;        LOGBOOK:...
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        CLOCK_MODELINE_TOTAL: today
;;TODO: ;;        Effort:   1:00
;;TODO: ;;        END:
;;TODO: 
;;TODO: ;; The task has an estimated effort of 1 hour and when I clock in the task it gives me a total in the mode-line like this
;;TODO: 
;;TODO: ;;     --:**  org-mode.org   91% (2348,73) Git:master  (Org Fly yas Font)-----[0:35/1:00 (Document my use of org-mode)]-------
;;TODO: 
;;TODO: ;; I've spent 35 minutes of my 1 hour so far today on this document and other help on IRC.
;;TODO: ;; I set up an alarm so the Star Trek door chime goes off when the total estimated time is hit. (Yes I'm a Trekkie :) )
;;TODO: 
;;TODO:      (setq org-clock-sound "/usr/local/lib/tngchime.wav")
;;TODO: 
;;TODO: ;; When the one hour time limit is hit the alarm sound goes off and a message states that I should be done working on this task. If I switch tasks and try to clock in this task again I get the sound each and every time I clock in the task. This nags me to go work on something else :)
;;TODO: ;; You can use similar setups for repeated tasks. By default the last repeat time is recorded as a property when a repeating task is marked done. For repeating tasks the mode-line clock total counts since the last repeat time by default. This lets you accumulate time over multiple days and counts towards your estimated effort limit.
;;TODO: 

;; 18.14 Habit Tracking

;; John Wiegley recently added support for Habit tracking to org-mode.
;; I have lots of habits (some bad) but I'd still like to improve and build new good habits. This is what habit tracking is for. It shows a graph on the agenda of how well you have been doing on developing your habits.
;; I have habits like:

;; * Hand wash the dishes
;; * 30 minute brisk walk
;; * Clean the house

;; etc. and most of these need a push to get done regularly. Logging of the done state needs to be enabled for habit tracking to work.
;; A habit is just like a regular task except it has a special PROPERTY value setting and a special SCHEDULED date entry like this:
;; 
;;      * TODO Update Org Mode Doc
;;        SCHEDULED: <2009-11-21 Sat .+7d/30d>
;;        [2009-11-14 Sat 11:45]
;;        PROPERTIES:
;;        STYLE: habit
;;        END:

;; This marks the task as a habit and separates it from the regular task display on the agenda. When you mark a habit done it shows up on your daily agenda the next time based on the first interval in the SCHEDULED entry (.+7d)
;; The special SCHEDULED entry states that I want to do this every day but at least every 2 days. If I go 3 days without marking it DONE it shows up RED on the agenda indicating that I have been neglecting this habit.
;; The world isn't going to end if you neglect your habits. You can hide and display habits quickly using the K key on the agenda.
;; These are my settings for habit tracking.

     ; Enable habit tracking (and a bunch of other modules)
     (setq org-modules (quote (org-bbdb
                               org-bibtex
                               org-crypt
                               org-gnus
                               org-id
                               org-info
                               org-jsinfo
                               org-habit
                               org-inlinetask
                               org-irc
                               org-mew
                               org-mhe
                               org-protocol
                               org-rmail
                               org-vm
                               org-wl
                               org-w3m)))

     ; position the habit graph on the agenda to the right of the default
     (setq org-habit-graph-column 50)

;;TODO: ;; During the day I'll turn off the habit display in the agenda with K. This is a persistent setting and since I leave my Emacs running for days at a time my habit display doesn't come back. To make sure I look at the habits daily I have the following settings to redisplay the habits in the agenda each day. This turns the habit display on again at 6AM each morning.
;;TODO: 
;;TODO:      (run-at-time "06:00" 86400 '(lambda () (setq org-habit-show-habits t)))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.15 Habits only log DONE state changes
;;TODO: 
;;TODO: ;; I tend to keep habits under a level 1 task * Habits with a special logging property that only logs changes to the DONE state. This allows me to cancel a habit and not record a timestamp for it since that messes up the habit graph. Cancelling a habit just to get it off my agenda because it's undoable (like get up before 6AM) should not mark the habit as done today. I only cancel habits that repeat
;;TODO: ;; every day.
;;TODO: ;; My habit tasks look as follows - and I tend to have one in every org file that can have habits defined
;;TODO: ;; 
;;TODO: ;;      * Habits
;;TODO: ;;        PROPERTIES:
;;TODO: ;;        LOGGING:  DONE(!)
;;TODO: ;;        ARCHIVE:  %s_archive::* Habits
;;TODO: ;;        END:
;;TODO: 
;;TODO: 
;;TODO: ;; 18.16 Auto revert mode
;;TODO: 
;;TODO: ;; I use git to synchronize my org-mode files between my laptop and my workstation. This normally requires saving all the current changes, pushing to a bare repo, and fetching on the other system. After that I need to revert all of my org-mode files to get the updated information.
;;TODO: ;; I used to use org-revert-all-org-buffers but have since discovered global-auto-revert-mode. With this setting any files that change on disk where there are no changes in the buffer automatically revert to the on-disk version.
;;TODO: ;; This is perfect for synchronizing my org-mode files between systems.
;;TODO: 
;;TODO:      (global-auto-revert-mode t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.17 Handling Encryption
;;TODO: 
;;TODO: ;; I used to keep my encrypted data like account passwords in a separate GPG encrypted file. Now I keep them in my org-mode files with a special tag instead. Encrypted data is kept in the org-mode file that it is associated with.
;;TODO: ;; org-crypt allows you to tag headings with a special tag crypt and org-mode can keep data in these headings encrypted when saved to disk. You decrypt the heading temporarily when you need access to the data and org-mode re-encrypts the heading as soon as you save the file.
;;TODO: ;; I use the following setup for encryption:
;;TODO: 
;;TODO:      (require 'org-crypt)
;;TODO:      ; Encrypt all entries before saving
;;TODO:      (org-crypt-use-before-save-magic)
;;TODO:      (setq org-tags-exclude-from-inheritance (quote ("crypt")))
;;TODO:      ; GPG key to use for encryption
;;TODO:      (setq org-crypt-key "F0B66B40")
;;TODO: 
;;TODO: ;; M-x org-decrypt-entry will prompt for the passphrase associated with your encryption key and replace the encrypted data where the point is with the plaintext details for your encrypted entry. As soon as you save the file the data is re-encrypted for your key. Encrypting does not require prompting for the passphrase - that's only for looking at the plain text version of the data.
;;TODO: ;; I tend to have a single level 1 encrypted entry per file (like * Passwords). I prevent the crypt tag from using inheritance so that I don't have encrypted data inside encrypted data. I found M-x org-decrypt-entries prompting for the passphrase to decrypt data over and over again (once per entry to decrypt) too inconvenient.
;;TODO: ;; I leave my entries encrypted unless I have to look up data - I decrypt on demand and then save the file again to re-encrypt the data. This keeps the data in plain text as short as possible.
;;TODO: 
;;TODO: ;; 18.17.1 Auto Save Files
;;TODO: 
;;TODO: ;; Emacs temporarily saves your buffer in an autosave file while you are editing your org buffer and a sufficient number of changes have accumulated. If you have decrypted subtrees in your buffer these will be written to disk in plain text which possibly leaks sensitive information. To combat this org-mode now asks if you want to disable the autosave functionality in this buffer.
;;TODO: ;; Personally I really like the autosave feature. 99% of the time my encrypted entries are perfectly safe to write to the autosave file since they are still encrypted. I tend to decrypt an entry, read the details for what I need to look up and then immediately save the file again with C-x C-s which re-encrypts the entry immediately. This pretty much guarantees that my autosave files never have
;;TODO: ;; decrypted data stored in them.
;;TODO: ;; I disable the default org crypt auto-save setting as follows:
;;TODO: 
;;TODO:      (setq org-crypt-disable-auto-save nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.18 Speed Commands
;;TODO: 
;;TODO: ;; There's an exciting feature called org-speed-commands in the org-mode.
;;TODO: ;; Speed commands allow access to frequently used commands when on the beginning of a headline - similar to one-key agenda commands. Speed commands are user configurable and org-mode provides a good set of default commands.
;;TODO: ;; I have the following speed commands set up in addition to the defaults. I don't use priorities so I override the default settings for the 1, 2, and 3 keys. I also disable cycling with 'c' and add 'q' as a quick way to get back to the agenda and update the current view.
;;TODO: 
;;TODO:      (setq org-use-speed-commands t)
;;TODO:      (setq org-speed-commands-user (quote (("0" . ignore)
;;TODO:                                            ("1" . ignore)
;;TODO:                                            ("2" . ignore)
;;TODO:                                            ("3" . ignore)
;;TODO:                                            ("4" . ignore)
;;TODO:                                            ("5" . ignore)
;;TODO:                                            ("6" . ignore)
;;TODO:                                            ("7" . ignore)
;;TODO:                                            ("8" . ignore)
;;TODO:                                            ("9" . ignore)
;;TODO: 
;;TODO:                                            ("a" . ignore)
;;TODO:                                            ("d" . ignore)
;;TODO:                                            ("h" . bh/hide-other)
;;TODO:                                            ("i" progn
;;TODO:                                             (forward-char 1)
;;TODO:                                             (call-interactively 'org-insert-heading-respect-content))
;;TODO:                                            ("k" . org-kill-note-or-show-branches)
;;TODO:                                            ("l" . ignore)
;;TODO:                                            ("m" . ignore)
;;TODO:                                            ("q" . bh/show-org-agenda)
;;TODO:                                            ("r" . ignore)
;;TODO:                                            ("s" . org-save-all-org-buffers)
;;TODO:                                            ("w" . org-refile)
;;TODO:                                            ("x" . ignore)
;;TODO:                                            ("y" . ignore)
;;TODO:                                            ("z" . org-add-note)
;;TODO: 
;;TODO:                                            ("A" . ignore)
;;TODO:                                            ("B" . ignore)
;;TODO:                                            ("E" . ignore)
;;TODO:                                            ("F" . bh/restrict-to-file-or-follow)
;;TODO:                                            ("G" . ignore)
;;TODO:                                            ("H" . ignore)
;;TODO:                                            ("J" . org-clock-goto)
;;TODO:                                            ("K" . ignore)
;;TODO:                                            ("L" . ignore)
;;TODO:                                            ("M" . ignore)
;;TODO:                                            ("N" . bh/narrow-to-org-subtree)
;;TODO:                                            ("P" . bh/narrow-to-org-project)
;;TODO:                                            ("Q" . ignore)
;;TODO:                                            ("R" . ignore)
;;TODO:                                            ("S" . ignore)
;;TODO:                                            ("T" . bh/org-todo)
;;TODO:                                            ("U" . bh/narrow-up-one-org-level)
;;TODO:                                            ("V" . ignore)
;;TODO:                                            ("W" . bh/widen)
;;TODO:                                            ("X" . ignore)
;;TODO:                                            ("Y" . ignore)
;;TODO:                                            ("Z" . ignore))))
;;TODO: 
;;TODO:      (defun bh/show-org-agenda ()
;;TODO:        (interactive)
;;TODO:        (switch-to-buffer "*Org Agenda*")
;;TODO:        (delete-other-windows))
;;TODO: 
;;TODO: ;; The variable org-speed-commands-default sets a lot of useful defaults for speed command keys. The default keys I use the most are I and O for clocking in and out and t to change todo state.
;;TODO: ;; J jumps to the current or last clocking task.
;;TODO: ;; c and C are disabled so they self insert. I use TAB and S-TAB for cycling - I don't need c and C as well. TAB works everywhere while c and C only works on the headline and sometimes I accidentally cycle when I don't intend to.
;;TODO: 
;;TODO: ;; 18.19 Org Protocol
;;TODO: 
;;TODO: ;; Org_protocol is a great way to create capture notes in org-mode from other applications. I use this to create tasks to review interesting web pages I visit in Firefox.
;;TODO: ;; I have a special capture template set up for org-protocol to use (set up with the w key).
;;TODO: ;; My org-mode setup for org-protocol is really simple. It enables org-protocol and creates a single org-protocol capture template as described in 6.1.
;;TODO: 
;;TODO:      (require 'org-protocol)
;;TODO: 
;;TODO: ;; The bulk of the setup is in the Firefox application so that C-M-r on a page in Firefox will trigger the org-protocol capture template with details of the page I'm currently viewing in firefox.
;;TODO: ;; I set up org-protocol in firefox as described in Keybindings_for_Firefox.
;;TODO: 
;;TODO: ;; 18.20 Require a final newline when saving files
;;TODO: 
;;TODO: ;; The following setting was mainly for editing yasnippets where I want to be able to expand a snippet but stay on the same line. I used this mainly for replacing short strings or initials with full names for people during meeting notes. I now use abbrev-mode- for this and no longer need this setting.
;;TODO: 
;;TODO:      (setq require-final-newline nil)
;;TODO: 
;;TODO: ;; When I save a file in Emacs I want a final newline - this fits better with the source code projects I work on. This is the setting I use now:
;;TODO: 
;;TODO:      (setq require-final-newline t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.21 Insert inactive timestamps and exclude from export
;;TODO: 
;;TODO: ;; I insert inactive timestamps when working on org-mode files.
;;TODO: ;; For remember tasks the timestamp is in the remember template but for regular structure editing I want the timestamp automatically added when I create the headline.
;;TODO: ;; I have a function that is run by an org-mode hook to automatically insert the inactive timestamp whenever a headline is created.
;;TODO: 
;;TODO:      (defun bh/insert-inactive-timestamp ()
;;TODO:        (interactive)
;;TODO:        (org-insert-time-stamp nil t t nil nil nil))
;;TODO: 
;;TODO:      (defun bh/insert-heading-inactive-timestamp ()
;;TODO:        (save-excursion
;;TODO:          (org-return)
;;TODO:          (org-cycle)
;;TODO:          (bh/insert-inactive-timestamp)))
;;TODO: 
;;TODO:      (add-hook 'org-insert-heading-hook 'bh/insert-heading-inactive-timestamp 'append)
;;TODO: 
;;TODO: ;; Everytime I create a heading with M-RET or M-S-RET the hook invokes the function and it inserts an inactive timestamp like this
;;TODO: ;; 
;;TODO: ;;      * <point here>
;;TODO: ;;        [2009-11-22 Sun 18:45]
;;TODO: 
;;TODO: ;; This keeps an automatic record of when tasks are created which I find very useful.
;;TODO: ;; I also have a short cut key defined to invoke this function on demand so that I can insert the inactive timestamp anywhere on demand.
;;TODO: 
;;TODO:      (global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
;;TODO: 
;;TODO: ;; To prevent the timestamps from being exported in documents I use the following setting
;;TODO: 
;;TODO:      (setq org-export-with-timestamps nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.22 Return follows links
;;TODO: 
;;TODO: ;; The following setting make RET insert a new line instead of opening links. This setting is a love-hate relationship for me. When it first came out I immediately turned it off because I wanted to insert new lines in front of my links and RET would open the link instead which at the time I found extremely annoying. Since then I've retrained my fingers to hit RET at the end of the previous line.
;;TODO: 
;;TODO:      (setq org-return-follows-link t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.23 Highlight clock when running overtime
;;TODO: 
;;TODO: ;; The current clocking task is displayed on the modeline. If this has an estimated time and we run over the limit I make this stand out on the modeline by changing the background to red as follows
;;TODO: 
;;TODO:      (custom-set-faces
;;TODO:        ;; custom-set-faces was added by Custom.
;;TODO:        ;; If you edit it by hand, you could mess it up, so be careful.
;;TODO:        ;; Your init file should contain only one such instance.
;;TODO:        ;; If there is more than one, they won't work right.
;;TODO:       '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button)))) t))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.24 Meeting Notes
;;TODO: 
;;TODO: ;; I take meeting notes with org-mode. I record meeting conversations in point-form using org-mode lists. If action items are decided on in the meeting I'll denote them with a bullet and a TODO: or DONE: flag.
;;TODO: ;; A meeting is a task and it is complete when the meeting is over. The body of the task records all of the interesting meeting details. If TODO items are created in the meeting I make separate TODO tasks from those.
;;TODO: ;; I use the function bh/prepare-meeting-notes to prepare the meeting notes for emailing to the participants (in a fixed-width font like "Courier New"). As soon as the meeting is over the notes are basically ready for distribution &#x2013; there's not need to waste lots of time rewriting the minutes before they go out. I haven't bothered with fancy HTML output &#x2013; the content is more important
;;TODO: ;; than the style.
;;TODO: ;; 
;;TODO: ;;      * TODO Sample Meeting
;;TODO: ;;        - Attendees
;;TODO: ;;          - [ ] Joe
;;TODO: ;;          - [X] Larry
;;TODO: ;;          - [X] Mary
;;TODO: ;;          - [X] Fred
;;TODO: ;;        - Joe is on vacation this week
;;TODO: ;;        - Status Updates
;;TODO: ;;          + Larry
;;TODO: ;;            - did this
;;TODO: ;;            - and that
;;TODO: ;;            - TODO: Needs to follow up on this
;;TODO: ;;          + Mary
;;TODO: ;;            - got a promotion for her recent efforts
;;TODO: ;;          + Fred
;;TODO: ;;            - completed all his tasks 2 days early
;;TODO: ;;            - needs more work
;;TODO: ;;            - DONE: everything
;;TODO: ;; 
;;TODO: ;; 
;;TODO: ;;      * TODO Sample Meeting
;;TODO: ;;         - Attendees
;;TODO: ;;           - [ ] Joe
;;TODO: ;;           - [X] Larry
;;TODO: ;;           - [X] Mary
;;TODO: ;;           - [X] Fred
;;TODO: ;;         - Joe is on vacation this week
;;TODO: ;;         - Status Updates
;;TODO: ;;           + Larry
;;TODO: ;;             - did this
;;TODO: ;;             - and that
;;TODO: ;;      >>>>>>>> TODO: Needs to follow up on this
;;TODO: ;;           + Mary
;;TODO: ;;             - got a promotion for her recent efforts
;;TODO: ;;           + Fred
;;TODO: ;;             - completed all his tasks 2 days early
;;TODO: ;;             - needs more work
;;TODO: ;;      >>>>>>>> DONE: everything
;;TODO: 
;;TODO: ;; Here is the formatting function. Just highlight the region for the notes and it turns tabs into spaces, and highlights todo items. The resulting notes are in the kill buffer ready to paste to another application.
;;TODO: 
;;TODO:      (defun bh/prepare-meeting-notes ()
;;TODO:        "Prepare meeting notes for email
;;TODO:         Take selected region and convert tabs to spaces, mark TODOs with leading >>>, and copy to kill ring for pasting"
;;TODO:        (interactive)
;;TODO:        (let (prefix)
;;TODO:          (save-excursion
;;TODO:            (save-restriction
;;TODO:              (narrow-to-region (region-beginning) (region-end))
;;TODO:              (untabify (point-min) (point-max))
;;TODO:              (goto-char (point-min))
;;TODO:              (while (re-search-forward "^\\( *-\\\) \\(TODO\\|DONE\\): " (point-max) t)
;;TODO:                (replace-match (concat (make-string (length (match-string 1)) ?>) " " (match-string 2) ": ")))
;;TODO:              (goto-char (point-min))
;;TODO:              (kill-ring-save (point-min) (point-max))))))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.25 Highlights persist after changes
;;TODO: 
;;TODO: ;; I'm finding I use org-occur C-c / / a lot when trying to find details in my org-files. The following setting keeps the highlighted results of the search even after modifying the text. This allows me to edit the file without having to reissue the org-occur command to find the other matches in my file. C-c C-c removes the highlights.
;;TODO: 
;;TODO:      (setq org-remove-highlights-with-change nil)
;;TODO: 
;;TODO: ;; Setting this variable to t will automatically remove the yellow highlights as soon as the buffer is modified.
;;TODO: 
;;TODO: ;; 18.26 Getting up to date org-mode info documentation
;;TODO: 
;;TODO: ;; I use the org-mode info documentation from the git repository so I set up emacs to find the info files from git before the regular (out of date) system versions.
;;TODO: 
;;TODO:      (add-to-list 'Info-default-directory-list "~/git/org-mode/doc")
;;TODO: 
;;TODO: 
;;TODO: ;; 18.27 Prefer future dates or not?
;;TODO: 
;;TODO: ;; By default org-mode prefers dates in the future. This means that if today's date is May 2 and you enter a date for April 30th (2 days ago) org-mode will jump to April 30th of next year. I used to find this annoying when I wanted to look at what happened last Friday since I have to specify the year. Now I've trained my fingers to go back relatively in the agenda with b so this isn't really an issue
;;TODO: ;; for me anymore.
;;TODO: ;; To make org-mode prefer the current year when entering dates set the following variable:
;;TODO: 
;;TODO:      (setq org-read-date-prefer-future nil)
;;TODO: 
;;TODO: ;; I now have this variable set to ='time= so times before now (with no date specified) will default to tomorrow..
;;TODO: 
;;TODO:      (setq org-read-date-prefer-future 'time)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.28 Automatically change list bullets
;;TODO: 
;;TODO: ;; I take point-form notes during meetings. Having the same list bullet for every list level makes it hard to read the details when lists are indented more than 3 levels.
;;TODO: ;; Org-mode has a way to automatically change the list bullets when you change list levels.
;;TODO: ;;  _____________________________________________
;;TODO: ;; |Current_List_Bullet|Next_indented_list_bullet|
;;TODO: ;; |+__________________|-________________________|
;;TODO: ;; |*__________________|-________________________|
;;TODO: ;; |1._________________|-________________________|
;;TODO: ;; |1)_________________|-________________________|
;;TODO: 
;;TODO: 
;;TODO:      (setq org-list-demote-modify-bullet (quote (("+" . "-")
;;TODO:                                                  ("*" . "-")
;;TODO:                                                  ("1." . "-")
;;TODO:                                                  ("1)" . "-"))))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.29 Remove indentation on agenda tags view
;;TODO: 
;;TODO: ;; I don't like the indented view for sublevels on a tags match in the agenda but I want to see all matching tasks (including sublevels) when I do a agenda tag search (F12 m).
;;TODO: ;; To make all of the matched headings for a tag show at the same level in the agenda set the following variable:
;;TODO: 
;;TODO:      (setq org-tags-match-list-sublevels t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.30 Fontify source blocks natively
;;TODO: 
;;TODO: ;; I use babel for including source blocks in my documents with
;;TODO: ;; 
;;TODO: ;;      #+begin_src LANG
;;TODO: ;;      ,  ...
;;TODO: ;;      #+end_src
;;TODO: 
;;TODO: ;; where LANG specifies the language to use (ditaa, dot, sh, emacs-lisp, etc) This displays the language contents fontified in both the org-mode source buffer and the exported document.
;;TODO: ;; See this 20.3 in this document for an example..
;;TODO: 
;;TODO: ;; 18.31 Agenda persistent filters
;;TODO: 
;;TODO: ;; This is a great feature! Persistent agenda filters means if you limit a search with / TAB SomeTag the agenda remembers this filter until you change it.
;;TODO: ;; Enable persistent filters with the following variable
;;TODO: 
;;TODO:      (setq org-agenda-persistent-filter t)
;;TODO: 
;;TODO: ;; The current filter is displayed in the modeline as {+SomeTag} so you can easily see what filter currently applies to your agenda view.
;;TODO: ;; I use this with FILETAGS to limit the displayed results to a single client or context.
;;TODO: 
;;TODO: ;; 18.32 Add tags for flagged entries
;;TODO: 
;;TODO: ;; Everyone so often something will come along that is really important and you know you want to be able to find it back fast sometime in the future.
;;TODO: ;; For these types of notes and tasks I add a special :FLAGGED: tag. This tag gets a special fast-key ? which matches the search key in the agenda for flagged items. See 11.1 for the setup of org-tag-alist for the FLAGGED entry.
;;TODO: ;; Finding flagged entries is then simple - just F12 ? and you get them all.
;;TODO: 
;;TODO: ;; 18.33 Mail links open compose-mail
;;TODO: 
;;TODO: ;; The following setting makes org-mode open mailto: links using compose-mail.
;;TODO: 
;;TODO:      (setq org-link-mailto-program (quote (compose-mail "%a" "%s")))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.34 Composing mail from org mode subtrees
;;TODO: 
;;TODO: ;; It's possible to create mail from an org-mode subtree. I use C-c M-o to start an email message with the details filled in from the current subtree. I use this for repeating reminder tasks where I need to send an email to someone else. The email contents are already contained in the org-mode subtree and all I need to do is C-c M-o and any minor edits before sending it off.
;;TODO: 
;;TODO: ;; 18.35 Use smex for M-x ido-completion
;;TODO: 
;;TODO: ;; I discovered smex for IDO-completion for M-x commands after reading a post of the org-mode mailing list. I actually use M-x a lot now because IDO completion is so easy.
;;TODO: ;; Here's the smex setup I use
;;TODO: 
;;TODO:      (add-to-list 'load-path (expand-file-name "~/.emacs.d"))
;;TODO:      (require 'smex)
;;TODO:      (smex-initialize)
;;TODO: 
;;TODO:      (global-set-key (kbd "M-x") 'smex)
;;TODO:      (global-set-key (kbd "C-x x") 'smex)
;;TODO:      (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.36 Use Emacs bookmarks for fast navigation
;;TODO: 
;;TODO: ;; I've started using emacs bookmarks to save a location and return to it easily. Normally I want to get back to my currently clocking task and that's easy - just hit F11. When I'm working down a long checklist I find it convenient to set a bookmark on the next item to check, then go away and work on it, and return to the checkbox to mark it done.
;;TODO: ;; I use Emacs bookmarks for this setup as follows:
;;TODO: 
;;TODO:      ;; Bookmark handling
;;TODO:      ;;
;;TODO:      (global-set-key (kbd "<C-f6>") '(lambda () (interactive) (bookmark-set "SAVED")))
;;TODO:      (global-set-key (kbd "<f6>") '(lambda () (interactive) (bookmark-jump "SAVED")))
;;TODO: 
;;TODO: ;; When I want to save the current location I just hit C-f6 and then I can return to it with f6 anytime. I overwrite the same bookmark each time I set a new position.
;;TODO: 
;;TODO: ;; 18.37 Using org-mime to email
;;TODO: 
;;TODO: ;; I'm experimenting with sending mime mail from org. I've added C-c M=o key bindings in the org-mode-hook to generate mail from an org-mode subtree.
;;TODO: 
;;TODO:      (require 'org-mime)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.38 Remove multiple state change log details from the agenda
;;TODO: 
;;TODO: ;; I skip multiple timestamps for the same entry in the agenda view with the following setting.
;;TODO: 
;;TODO:      (setq org-agenda-skip-additional-timestamps-same-entry t)
;;TODO: 
;;TODO: ;; This removes the clutter of extra state change log details when multiple timestamps exist in a single entry.
;;TODO: 
;;TODO: ;; 18.39 Drop old style references in tables
;;TODO: 
;;TODO: ;; I drop the old A3/B4 style references from tables when editing with the following setting.
;;TODO: 
;;TODO:      (setq org-table-use-standard-references (quote from))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.40 Use system settings for file-application selection
;;TODO: 
;;TODO: ;; To get consistent applications for opening tasks I set the org-file-apps variable as follows:
;;TODO: 
;;TODO:      (setq org-file-apps (quote ((auto-mode . emacs)
;;TODO:                                  ("\\.mm\\'" . system)
;;TODO:                                  ("\\.x?html?\\'" . system)
;;TODO:                                  ("\\.pdf\\'" . system))))
;;TODO: 
;;TODO: ;; This uses the entries defined in my system mailcap settings when opening file extensions. This gives me consistent behaviour when opening an link to some HTML file with C-c C-o or when previewing an export.
;;TODO: 
;;TODO: ;; 18.41 Use the current window for the agenda
;;TODO: 
;;TODO: 
;;TODO:      ; Overwrite the current window with the agenda
;;TODO:      (setq org-agenda-window-setup 'current-window)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.42 Delete IDs when cloning
;;TODO: 
;;TODO: 
;;TODO:      (setq org-clone-delete-id t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.43 Cycling plain lists
;;TODO: 
;;TODO: ;; Org mode can fold (cycle) plain lists.
;;TODO: 
;;TODO:      (setq org-cycle-include-plain-lists t)
;;TODO: 
;;TODO: ;; I find this setting useful when I have repeating tasks with lots of sublists with checkboxes. I can fold the completed list entries and focus on what is remaining easily.
;;TODO: 
;;TODO: ;; 18.44 Showing source block syntax highlighting
;;TODO: 
;;TODO: ;; It is possible to display org-mode source blocks fontified in their native mode. This allows colourization of keywords for C and shell script source etc. If I edit the source I use =C-c '= (control-c single quote) to bring up the source window which is then rendered with syntax highlighting in the native mode. This setting also shows the syntax highlighting when viewing in the org-mode buffer.
;;TODO: 
;;TODO:      (setq org-src-fontify-natively t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.45 Inserting Structure Template Blocks
;;TODO: 
;;TODO: ;; There is a shortcut key sequence in org-mode to insert structure templates quickly into your org files.
;;TODO: ;; I use example and source blocks often in my org files.
;;TODO: ;;  ___________________________________________________
;;TODO: ;; |Key_Sequence|Expands_to____________________________|
;;TODO: ;; |<_s_TAB_____|#+begin_src_&#x2026;_#+end_src________|
;;TODO: ;; |<_e_TAB_____|#+begin_example_&#x2026;_#+end_example|
;;TODO: 
;;TODO: ;; I've added a block for saving email text which I copy from MS Outlook at work so I have context associated with my org-mode tasks.
;;TODO: ;; The following lisp makes the blocks lowercase instead of the default upper case in org-mode.
;;TODO: 
;;TODO:      (setq org-structure-template-alist
;;TODO:            (quote (("s" "#+begin_src ?\n\n#+end_src" "<src lang=\"?\">\n\n</src>")
;;TODO:                    ("e" "#+begin_example\n?\n#+end_example" "<example>\n?\n</example>")
;;TODO:                    ("q" "#+begin_quote\n?\n#+end_quote" "<quote>\n?\n</quote>")
;;TODO:                    ("v" "#+begin_verse\n?\n#+end_verse" "<verse>\n?\n</verse>")
;;TODO:                    ("c" "#+begin_center\n?\n#+end_center" "<center>\n?\n</center>")
;;TODO:                    ("l" "#+begin_latex\n?\n#+end_latex" "<literal style=\"latex\">\n?\n</literal>")
;;TODO:                    ("L" "#+latex: " "<literal style=\"latex\">?</literal>")
;;TODO:                    ("h" "#+begin_html\n?\n#+end_html" "<literal style=\"html\">\n?\n</literal>")
;;TODO:                    ("H" "#+html: " "<literal style=\"html\">?</literal>")
;;TODO:                    ("a" "#+begin_ascii\n?\n#+end_ascii")
;;TODO:                    ("A" "#+ascii: ")
;;TODO:                    ("i" "#+index: ?" "#+index: ?")
;;TODO:                    ("I" "#+include %file ?" "<include file=%file markup=\"?\">"))))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.46 NEXT is for tasks
;;TODO: 
;;TODO: ;; NEXT keywords are for tasks and not projects. I've added a function to the todo state change hook and clock in hook so that any parent tasks marked NEXT automagically change from NEXT to TODO since they are now projects and not tasks.
;;TODO: 
;;TODO:      (defun bh/mark-next-parent-tasks-todo ()
;;TODO:        "Visit each parent task and change NEXT states to TODO"
;;TODO:        (let ((mystate (or (and (fboundp 'org-state)
;;TODO:                                state)
;;TODO:                           (nth 2 (org-heading-components)))))
;;TODO:          (when mystate
;;TODO:            (save-excursion
;;TODO:              (while (org-up-heading-safe)
;;TODO:                (when (member (nth 2 (org-heading-components)) (list "NEXT"))
;;TODO:                  (org-todo "TODO")))))))
;;TODO: 
;;TODO:      (add-hook 'org-after-todo-state-change-hook 'bh/mark-next-parent-tasks-todo 'append)
;;TODO:      (add-hook 'org-clock-in-hook 'bh/mark-next-parent-tasks-todo 'append)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.47 Startup in folded view
;;TODO: 
;;TODO: ;; Startup in folded view.
;;TODO: 
;;TODO:      (setq org-startup-folded t)
;;TODO: 
;;TODO: ;; I used to use content view by default so I could review org subtrees before archiving but my archiving workflow has changed so I no longer need this manual step.
;;TODO: 
;;TODO: ;; 18.48 Allow alphabetical list entries
;;TODO: 
;;TODO: ;; The following setting adds alphabetical lists like
;;TODO: ;; 
;;TODO: ;;      a. item one
;;TODO: ;;      b. item two
;;TODO: 
;;TODO: 
;;TODO:      (setq org-alphabetical-lists t)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.49 Using orgstruct mode for mail
;;TODO: 
;;TODO: ;; orgstruct++-mode is enabled in Gnus message buffers to aid in creating structured email messages.
;;TODO: 
;;TODO:      (add-hook 'message-mode-hook 'orgstruct++-mode 'append)
;;TODO:      (add-hook 'message-mode-hook 'turn-on-auto-fill 'append)
;;TODO:      (add-hook 'message-mode-hook 'bbdb-define-all-aliases 'append)
;;TODO:      (add-hook 'message-mode-hook 'orgtbl-mode 'append)
;;TODO:      (add-hook 'message-mode-hook 'turn-on-flyspell 'append)
;;TODO:      (add-hook 'message-mode-hook
;;TODO:                '(lambda () (setq fill-column 72))
;;TODO:                'append)
;;TODO:      (add-hook 'message-mode-hook
;;TODO:                '(lambda () (local-set-key (kbd "C-c M-o") 'org-mime-htmlize))
;;TODO:                'append)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.50 Using flyspell mode to reduce spelling errors
;;TODO: 
;;TODO: ;; flyspell-mode is enabled for almost everything to help prevent creating documents with spelling errors.
;;TODO: 
;;TODO:      ;; flyspell mode for spell checking everywhere
;;TODO:      (add-hook 'org-mode-hook 'turn-on-flyspell 'append)
;;TODO: 
;;TODO:      ;; Disable C-c [ and C-c ] and C-c ; in org-mode
;;TODO:      (add-hook 'org-mode-hook
;;TODO:                '(lambda ()
;;TODO:                   ;; Undefine C-c [ and C-c ] since this breaks my
;;TODO:                   ;; org-agenda files when directories are include It
;;TODO:                   ;; expands the files in the directories individually
;;TODO:                   (org-defkey org-mode-map "\C-c["    'undefined)
;;TODO:                   (org-defkey org-mode-map "\C-c]"    'undefined)
;;TODO:                   (org-defkey org-mode-map "\C-c;"    'undefined))
;;TODO:                'append)
;;TODO: 
;;TODO:      (add-hook 'org-mode-hook
;;TODO:                (lambda ()
;;TODO:                  (local-set-key (kbd "C-c M-o") 'bh/mail-subtree))
;;TODO:                'append)
;;TODO: 
;;TODO:      (defun bh/mail-subtree ()
;;TODO:        (interactive)
;;TODO:        (org-mark-subtree)
;;TODO:        (org-mime-subtree))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.51 Task Priorities
;;TODO: 
;;TODO: ;; I use the agenda to figure out what to do work on next. I don't use priorities at all normally but at work I occasionally get priorities from my manager. In this case I mark my tasks with the priorities from the external source just to track the values and force the agenda to display tasks in the priority order.
;;TODO: ;; I use priorities A-E where tasks without a specific priority are lowest priority E.
;;TODO: 
;;TODO:      (setq org-enable-priority-commands t)
;;TODO:      (setq org-default-priority ?E)
;;TODO:      (setq org-lowest-priority ?E)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.52 New Exporter
;;TODO: 
;;TODO: ;; The current export engine invoked with C-c C-e is going to be replaced with a new system soon. I have the following settings so I can invoke the new exporter to see how it behaves compared to the existing one.
;;TODO: 
;;TODO:      (setq org-e-html-inline-images t)
;;TODO:      (setq org-export-html-style-extra "<link rel=\"stylesheet\" href=\"http://doc.norang.ca/org.css\" type=\"text/css\" />")
;;TODO:      (setq org-e-html-style-extra "<link rel=\"stylesheet\" href=\"http://doc.norang.ca/org.css\" type=\"text/css\" />")
;;TODO:      (setq org-e-html-style-include-default nil)
;;TODO:      (setq org-e-html-xml-declaration
;;TODO:            (quote
;;TODO:             (("was-html" . "")
;;TODO:              ("html" . "<?xml version=\"1.0\" encoding=\"%s\"?>")
;;TODO:              ("php" . "<?php echo \"<?xml version=\\\"1.0\\\" encoding=\\\"%s\\\" ?>\"; ?>"))))
;;TODO:      (setq org-e-latex-listings t)
;;TODO:      (setq org-e-html-style-include-scripts nil)
;;TODO:      (setq org-e-html-validation-link nil)
;;TODO: 
;;TODO:      (setq org-export-coding-system 'utf-8)
;;TODO: 
;;TODO:      (require 'org-export)
;;TODO: 
;;TODO: ;; To invoke the new exporter use M-x org-export-dispatch.
;;TODO: 
;;TODO: ;; 18.53 Preserving source block indentation
;;TODO: 
;;TODO: ;; I do not preserve indentation for source blocks mainly because this doesn't look nice with indented org-files. The only reason I've found to preserve indentation is when TABs in files need to be preserved (e.g. Makefiles). I don't normally edit these files in org-mode so I leave this setting turned off.
;;TODO: ;; I've changed the default block indentation so that it is not indented from the text in the org file. This allows editing source blocks in place without requiring use of =C-c '= so that code lines up correctly.
;;TODO: 
;;TODO:      (setq org-src-preserve-indentation nil)
;;TODO:      (setq org-edit-src-content-indentation 0)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.54 Prevent editing invisible text
;;TODO: 
;;TODO: ;; The following setting prevents accidentally editing hidden text when the point is inside a folded region. This can happen if you are in the body of a heading and globally fold the org-file with S-TAB
;;TODO: ;; I find invisible edits (and undo's) hard to deal with so now I can't edit invisible text. C-c C-r (org-reveal) will display where the point is if it is buried in invisible text to allow editing again.
;;TODO: 
;;TODO:      (setq org-catch-invisible-edits 'error)
;;TODO: 
;;TODO: 
;;TODO: ;; 18.55 Use utf-8 as default coding system
;;TODO: 
;;TODO: ;; I use utf-8 as the default coding system for all of my org files.
;;TODO: 
;;TODO:      (prefer-coding-system 'utf-8)
;;TODO:      (set-charset-priority 'unicode)
;;TODO:      (setq default-process-coding-system '(utf-8-unix . utf-8-unix))
;;TODO: 
;;TODO: 
;;TODO: ;; 18.56 Keep clock durations in hours
;;TODO: 
;;TODO: ;; The default for clock durations has changed to include days which is 24 hours. At work I like to think of a day as 6 hours of work (the rest of the time is lost in meetings and other overhead on average) so displaying clock durations in days doesn't make sense to me.
;;TODO: ;; The following setting displays clock durations (from C-c C-x C-d in hours and minutes.
;;TODO: 
;;TODO:      (setq org-time-clocksum-format
;;TODO:            '(:hours "%d" :require-hours t :minutes ":%02d" :require-minutes t))
;;TODO: 
;;TODO: 
;;TODO: ;; 19 Things I Don't Use (Anymore)
;;TODO: 
;;TODO: ;; This is a partial list of things I know about but do not use. org-mode is huge with tons of features. There are features out there that I don't know about yet or haven't explored so this list is not going to be complete.
;;TODO: 
;;TODO: ;; 19.1 Archive Sibling
;;TODO: 
;;TODO: ;; This was a cute idea but I find archiving entire complete subtrees better. I don't mind having a bunch of tasks marked DONE (but not archived)
;;TODO: 
;;TODO: ;; 19.2 Strike-through emphasis
;;TODO: 
;;TODO: ;; Strike-through emphasis is just unreadable and tends to only show up when pasting data from other files into org-mode. This just removes the strike-through completely which I find a lot nicer.
;;TODO: 
;;TODO:      (setq org-emphasis-alist (quote (("*" bold "<b>" "</b>")
;;TODO:                                       ("/" italic "<i>" "</i>")
;;TODO:                                       ("_" underline "<span style=\"text-decoration:underline;\">" "</span>")
;;TODO:                                       ("=" org-code "<code>" "</code>" verbatim)
;;TODO:                                       ("~" org-verbatim "<code>" "</code>" verbatim))))
;;TODO: 
;;TODO: 
;;TODO: ;; 19.3 Subscripts and Superscripts
;;TODO: 
;;TODO: ;; I don't currently write documents that need subscripts and superscript support. I disable handling of _ and ^ for subscript and superscripts with
;;TODO: 
;;TODO:      (setq org-use-sub-superscripts nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 19.4 Yasnippet
;;TODO: 
;;TODO: ;; Yasnippet is cool but I don't use this anymore. I've replaced yasnippet with a combination of abbrev-mode and skeletons which are available by default in Emacs.
;;TODO: ;; The following description applies to yasnippet version 0.5.10. The setup requirements may have changed with newer versions.
;;TODO: ;; You type the snippet name and TAB and yasnippet expands the name with the contents of the snippet text - substituting snippet variables as appropriate.
;;TODO: ;; Yasnippet comes with lots of snippets for programming languages. I used a few babel related snippets with org-mode.
;;TODO: ;; I downloaded and installed the unbundled version of yasnippet so that I can edit the predefined snippets. I unpacked the yasnippet software in my ~/.emacs.d/plugins directory, renamed yasnippet0.5.10 to yasnippet and added the following setup in my .emacs:
;;TODO: 
;;TODO:      (add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins"))
;;TODO: 
;;TODO:      (require 'yasnippet)
;;TODO:      (yas/initialize)
;;TODO:      (yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")
;;TODO: 
;;TODO:      ;; Make TAB the yas trigger key in the org-mode-hook and enable flyspell mode and autofill
;;TODO:      (add-hook 'org-mode-hook
;;TODO:                (lambda ()
;;TODO:                  ;; yasnippet
;;TODO:                  (make-variable-buffer-local 'yas/trigger-key)
;;TODO:                  (org-set-local 'yas/trigger-key [tab])
;;TODO:                  (define-key yas/keymap [tab] 'yas/next-field-group)
;;TODO:                  ;; flyspell mode for spell checking everywhere
;;TODO:                  (flyspell-mode 1)
;;TODO:                  ;; auto-fill mode on
;;TODO:                  (auto-fill-mode 1)))
;;TODO: 
;;TODO: ;; I used snippets for the following:
;;TODO: 
;;TODO: ;; * begin for generic #+begin_ blocks
;;TODO: ;; * dot for graphviz
;;TODO: ;; * uml for PlantUML graphics
;;TODO: ;; * sh for bash shell scripts
;;TODO: ;; * elisp for emacs lisp code
;;TODO: ;; * initials of a person converts to their full name I used this while taking meeting notes
;;TODO: 
;;TODO: ;; Here is the definition for the begin snippet:
;;TODO: ;; org-mode Yasnippet: ~/.emacs.d/plugins/yasnippet/snippets/text-mode/org-mode/begin
;;TODO: ;; 
;;TODO: ;;      #name : #+begin_...#+end_
;;TODO: ;;      # --
;;TODO: ;;      #+begin_$1 $2
;;TODO: ;;      $0
;;TODO: ;;      #+end_$1
;;TODO: 
;;TODO: ;; I used this to create #+begin_* blocks like
;;TODO: 
;;TODO: ;; * #+begin_example
;;TODO: ;; * #+begin_src
;;TODO: ;; * etc.
;;TODO: 
;;TODO: ;; Simply type begin and then TAB it replaces the begin text with the snippet contents. Then type src TAB emacs-lisp TAB and your snippet block is done. I've shortened this specific sequence to just elisp TAB since I use it fairly often.
;;TODO: ;; Hit C-c SingeQuote(') and insert whatever emacs-lisp code you need. While in this block you're in a mode that knows how to format and colourize emacs lisp code as you enter it which is really nice. C-c SingleQuote(') exits back to org-mode. This recognizes any emacs editing mode so all you have to do is enter the appropriate mode name for the block.
;;TODO: ;; dot
;;TODO: ;; 
;;TODO: ;;      #dot : #+begin_src dot ... #+end_src
;;TODO: ;;      # --
;;TODO: ;;      #+begin_src dot :file $1 :cmdline -Kdot -Tpng
;;TODO: ;;      $0
;;TODO: ;;      #+end_src
;;TODO: 
;;TODO: ;; uml
;;TODO: ;; 
;;TODO: ;;      #uml : #+begin_src plantuml ... #+end_src
;;TODO: ;;      # --
;;TODO: ;;      #+begin_src plantuml :file $1
;;TODO: ;;      $0
;;TODO: ;;      #+end_src
;;TODO: 
;;TODO: ;; sh
;;TODO: ;; 
;;TODO: ;;      #sh: #+begin_src sh ... #+end_src
;;TODO: ;;      # --
;;TODO: ;;      #+begin_src sh :results output
;;TODO: ;;      $0
;;TODO: ;;      #+end_src
;;TODO: 
;;TODO: ;; elisp
;;TODO: ;; 
;;TODO: ;;      #elisp : #+begin_src emacs-lisp ...#+end_src emacs-lisp
;;TODO: ;;      # --
;;TODO: ;;      #+begin_src emacs-lisp
;;TODO: ;;      $0
;;TODO: ;;      #+end_src
;;TODO: ;; 
;;TODO: ;; This is a great time saver.
;;TODO: 
;;TODO: ;; 19.5 Show headings at odd levels only or odd-even levels
;;TODO: 
;;TODO: ;; This has been replaced by org-indent-mode
;;TODO: ;; I've converted my files between odd-levels-only and odd-even using the functions org-convert-to-odd-levels and org-convert-to-oddeven-levels functions a number of times. I ended up going back to odd-even levels to reduce the amount of leading whitespace on tasks. I didn't find that lining up the headlines and tasks in odd-levels-only to be all that helpful.
;;TODO: 
;;TODO:      (setq org-odd-levels-only nil)
;;TODO: 
;;TODO: 
;;TODO: ;; 19.6 Propagate STARTED to parent tasks
;;TODO: 
;;TODO: ;; I used to have a STARTED and NEXT task state. These were basically the same except STARTED indicated that I've clocked some time on the task. Since then I've just moved to using NEXT for this.
;;TODO: ;; The following code used to propagate the STARTED task up the project tree but I don't use this anymore.
;;TODO: ;; When a task is marked STARTED (either manually or by clocking it in) the STARTED state propagates up the tree to any parent tasks of this task that are TODO or NEXT. As soon as I work on the first NEXT task in a tree the project is also marked STARTED. This helps me keep track of things that are in progress.
;;TODO: ;; Here's the setup I use to propagate STARTED to parent tasks:
;;TODO: 
;;TODO:      ;; Mark parent tasks as started
;;TODO:      (defvar bh/mark-parent-tasks-started nil)
;;TODO: 
;;TODO:      (defun bh/mark-parent-tasks-started ()
;;TODO:        "Visit each parent task and change TODO states to STARTED"
;;TODO:        (unless bh/mark-parent-tasks-started
;;TODO:          (when (equal org-state "STARTED")
;;TODO:            (let ((bh/mark-parent-tasks-started t))
;;TODO:              (save-excursion
;;TODO:                (while (org-up-heading-safe)
;;TODO:                  (when (member (nth 2 (org-heading-components)) (list "TODO" "NEXT"))
;;TODO:                    (org-todo "STARTED"))))))))
;;TODO: 
;;TODO:      (add-hook 'org-after-todo-state-change-hook 'bh/mark-parent-tasks-started 'append)
;;TODO: 
;;TODO: 
;;TODO: ;; 19.7 Automatically clocking tasks
;;TODO: 
;;TODO: ;; I used to spend time on an open source project called BZFlag. During work for releases I want to clock the time I spend testing the new BZFlag client. I have a key binding in my window manager that runs a script which starts the clock on my testing task, runs the BZFlag client, and on exit resumes the clock on the previous clocking task.
;;TODO: ;; The testing task has an ID property of dcf55180-2a18-460e-8abb-a9f02f0893be and the following elisp code starts the clock on this task.
;;TODO: 
;;TODO:      (defun bh/clock-in-bzflagt-task ()
;;TODO:        (interactive)
;;TODO:        (bh/clock-in-task-by-id "dcf55180-2a18-460e-8abb-a9f02f0893be"))
;;TODO: 
;;TODO: ;; This is invoked by a bash shell script as follows:
;;TODO: 
;;TODO:      #!/bin/sh
;;TODO:      emacsclient -e '(bh/clock-in-bzflagt-task)'
;;TODO:      ~/git/bzflag/trunk/bzflag/src/bzflag/bzflag -directory ~/git/bzflag/trunk/bzflag/data $*
;;TODO:      emacsclient -e '(bh/resume-clock)'
;;TODO: 
;;TODO: ;; The resume clock function just returns the clock to the previous clocking task
;;TODO: 
;;TODO:      (defun bh/resume-clock ()
;;TODO:        (interactive)
;;TODO:        (if (marker-buffer org-clock-interrupted-task)
;;TODO:            (org-with-point-at org-clock-interrupted-task
;;TODO:              (org-clock-in))
;;TODO:          (org-clock-out)))
;;TODO: 
;;TODO: ;; If no task was clocking bh/resume-clock just stops the clock.
;;TODO: 
;;TODO: ;; 20 Using Git for Automatic History, Backups, and Synchronization
;;TODO: 
;;TODO: ;; Editing folded regions of your org-mode file can be hazardous to your data. My method for dealing with this is to put my org files in a Git source repository.
;;TODO: ;; My setup saves all of my org-files every hour and creates a commit with my changes automatically. This lets me go back in time and view the state of my org files for any given hour over the lifetime of the document. I've used this once or twice to recover data I accidentally removed while editing folded regions.
;;TODO: 
;;TODO: ;; 20.1 Automatic Hourly Commits
;;TODO: 
;;TODO: ;; My Emacs setup saves all org buffers at 1 minute before the hour using the following code in my .emacs
;;TODO: 
;;TODO:      (run-at-time "00:59" 3600 'org-save-all-org-buffers)
;;TODO: 
;;TODO: ;; A cron job runs at the top of the hour to commit any changes just saved by the call to org-save-all-org-buffers above. I use a script to create the commits so that I can run it on demand to easily commit all modified work when moving from one machine to another.
;;TODO: ;; crontab details:
;;TODO: 
;;TODO: ;;     0 * * * * ~/bin/org-git-sync.sh >/dev/null
;;TODO: 
;;TODO: 
;;TODO: ;; 20.1.1 ~/bin/org-git-sync.sh
;;TODO: 
;;TODO: ;; Here is the shell script I use to create a git commit for each of my org-repositories. This loops through multiple repositories and commits any modified files. I have the following org-mode repositories:
;;TODO: 
;;TODO: ;; * org
;;TODO: ;;     for all of my organization project files and todo lists
;;TODO: ;; * doc-norang.ca
;;TODO: ;;     for any changes to documents under http://doc.norang.ca/
;;TODO: ;; * www.norang.ca
;;TODO: ;;     for any changes to my other website http://www.norang.ca/
;;TODO: 
;;TODO: ;; This script does not create empty commits - git only creates a commit if something was modified.
;;TODO: ;; 
;;TODO: ;;      #!/bin/sh
;;TODO: ;;      # Add org file changes to the repository
;;TODO: ;;      REPOS="org doc.norang.ca www.norang.ca"
;;TODO: ;; 
;;TODO: ;;      for REPO in $REPOS
;;TODO: ;;      do
;;TODO: ;;          echo "Repository: $REPO"
;;TODO: ;;          cd ~/git/$REPO
;;TODO: ;;          # Remove deleted files
;;TODO: ;;          git ls-files --deleted -z | xargs -0 git rm >/dev/null 2>&amp;1
;;TODO: ;;          # Add new files
;;TODO: ;;          git add . >/dev/null 2>&amp;1
;;TODO: ;;          git commit -m "$(date)"
;;TODO: ;;      done
;;TODO: 
;;TODO: ;; I use the following .gitignore file in my org-mode git repositories to keep export generated files out of my git repositories. If I include a graphic from some other source than ditaa or graphviz then I'll add it to the repository manually. By default all PNG graphic files are ignored (since I assume they are produced by ditaa during export)
;;TODO: 
;;TODO: ;;      core
;;TODO: ;;      core.*
;;TODO: ;;      *.html
;;TODO: ;;      *~
;;TODO: ;;      .#*
;;TODO: ;;      \#*\#
;;TODO: ;;      *.txt
;;TODO: ;;      *.tex
;;TODO: ;;      *.aux
;;TODO: ;;      *.dvi
;;TODO: ;;      *.log
;;TODO: ;;      *.out
;;TODO: ;;      *.ics
;;TODO: ;;      *.pdf
;;TODO: ;;      *.xml
;;TODO: ;;      *.org-source
;;TODO: ;;      *.png
;;TODO: ;;      *.toc
;;TODO: 
;;TODO: 
;;TODO: ;; 20.2 Git - Edit files with confidence
;;TODO: 
;;TODO: ;; I use git in all of my directories where editing a file should be tracked.
;;TODO: ;; This means I can edit files with confidence. I'm free to change stuff and break things because it won't matter. It's easy to go back to a previous working version or to see exactly what changed since the last commit. This is great when editing configuration files (such as apache webserver, bind9 DNS configurations, etc.)
;;TODO: ;; I find this extremely useful where your edits might break things and having git tracking the changes means if you break it you can just go back to the previous working version easily. This is also true for package upgrades for software where the upgrade modifies the configuration files.
;;TODO: ;; I have every version of my edits in a local git repository.
;;TODO: 
;;TODO: ;; 20.3 Git Repository synchronization
;;TODO: 
;;TODO: ;; I acquired a Eee PC 1000 HE which now serves as my main road-warrior laptop replacing my 6 year old Toshiba Tecra S1.
;;TODO: ;; I have a server on my LAN that hosts bare git repositories for all of my projects. The problem I was facing is I have to leave in 5 minutes and want to make sure I have up-to-date copies of everything I work on when I take it on the road (without Internet access).
;;TODO: ;; To solve this I use a server with bare git repositories on it. This includes my org-mode repositories as well as any other git repositories I'm interested in.
;;TODO: ;; Just before I leave I run the git-sync script on my workstation to update the bare git repositories and then I run it again on my Eee PC to update all my local repositories on the laptop. For any repositories that give errors due to non-fast-forward merges I manually merge as required and rerun git-sync until it reports no errors. This normally takes a minute to two to do. Then I grab my Eee PC
;;TODO: ;; and leave. When I'm on the road I have full up-to-date history of all my git repositories.
;;TODO: ;; The git-sync script replaces my previous scripts with an all-in-one tool that basically does this:
;;TODO: 
;;TODO: ;; * for each repository on the current system
;;TODO: ;; 
;;TODO: ;;      o fetch objects from the remote
;;TODO: ;;      o for each branch that tracks a remote branch
;;TODO: ;; 
;;TODO: ;;        # Check if the ref can be moved
;;TODO: ;; 
;;TODO: ;;          # fast-forwards if behind the remote repository and is fast-forwardable
;;TODO: ;;          # Does nothing if ref is up to date
;;TODO: ;;          # Pushes ref to remote repository if ref is ahead of remote repository and fast-forwardable
;;TODO: ;;          # Fails if ref and remote have diverged
;;TODO: 
;;TODO: 
;;TODO: 
;;TODO: 
;;TODO: ;; This automatically advances changes on my 35+ git repositories with minimal manual intervention. The only time I need to manually do something in a repository is when I make changes on my Eee PC and my workstation at the same time - so that a merge is required.
;;TODO: ;; Here is the git-sync script
;;TODO: ;; 
;;TODO: ;;      #!/bin/sh
;;TODO: ;;      #
;;TODO: ;; 
;;TODO: ;;      # Local bare repository name
;;TODO: ;;      syncrepo=norang
;;TODO: ;;      reporoot=~/git
;;TODO: ;; 
;;TODO: ;;      # Display repository name only once
;;TODO: ;;      log_repo() {
;;TODO: ;;        [ "x$lastrepo" == "x$repo" ] || {
;;TODO: ;;          printf "\nREPO: ${repo}\n"
;;TODO: ;;          lastrepo="$repo"
;;TODO: ;;        }
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # Log a message for a repository
;;TODO: ;;      log_msg() {
;;TODO: ;;        log_repo
;;TODO: ;;        printf "  $1\n"
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # fast-forward reference $1 to $syncrepo/$1
;;TODO: ;;      fast_forward_ref() {
;;TODO: ;;        log_msg "fast-forwarding ref $1"
;;TODO: ;;        current_ref=$(cat .git/HEAD)
;;TODO: ;;        if [ "x$current_ref" = "xref: refs/heads/$1" ]
;;TODO: ;;        then
;;TODO: ;;          # Check for dirty index
;;TODO: ;;          files=$(git diff-index --name-only HEAD --)
;;TODO: ;;          git merge refs/remotes/$syncrepo/$1
;;TODO: ;;        else
;;TODO: ;;          git branch -f $1 refs/remotes/$syncrepo/$1
;;TODO: ;;        fi
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # Push reference $1 to $syncrepo
;;TODO: ;;      push_ref() {
;;TODO: ;;        log_msg "Pushing ref $1"
;;TODO: ;;        if ! git push --tags $syncrepo $1
;;TODO: ;;        then
;;TODO: ;;          exit 1
;;TODO: ;;        fi
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # Check if a ref can be moved
;;TODO: ;;      #   - fast-forwards if behind the sync repo and is fast-forwardable
;;TODO: ;;      #   - Does nothing if ref is up to date
;;TODO: ;;      #   - Pushes ref to $syncrepo if ref is ahead of syncrepo and fastforwardable
;;TODO: ;;      #   - Fails if ref and $syncrop/ref have diverged
;;TODO: ;;      check_ref() {
;;TODO: ;;        revlist1=$(git rev-list refs/remotes/$syncrepo/$1..$1)
;;TODO: ;;        revlist2=$(git rev-list $1..refs/remotes/$syncrepo/$1)
;;TODO: ;;        if [ "x$revlist1" = "x" -a "x$revlist2" = "x" ]
;;TODO: ;;        then
;;TODO: ;;          # Ref $1 is up to date.
;;TODO: ;;          :
;;TODO: ;;        elif [ "x$revlist1" = "x" ]
;;TODO: ;;        then
;;TODO: ;;          # Ref $1 is behind $syncrepo/$1 and can be fast-forwarded.
;;TODO: ;;          fast_forward_ref $1 || exit 1
;;TODO: ;;        elif [ "x$revlist2" = "x" ]
;;TODO: ;;        then
;;TODO: ;;          # Ref $1 is ahead of $syncrepo/$1 and can be pushed.
;;TODO: ;;          push_ref $1 || exit 1
;;TODO: ;;        else
;;TODO: ;;          log_msg "Ref $1 and $syncrepo/$1 have diverged."
;;TODO: ;;          exit 1
;;TODO: ;;        fi
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # Check all local refs with matching refs in the $syncrepo
;;TODO: ;;      check_refs () {
;;TODO: ;;        git for-each-ref refs/heads/* | while read sha1 commit ref
;;TODO: ;;        do
;;TODO: ;;          ref=${ref/refs\/heads\//}
;;TODO: ;;          git for-each-ref refs/remotes/$syncrepo/$ref | while read sha2 commit ref2
;;TODO: ;;          do
;;TODO: ;;            if [ "x$sha2" != "x" -a "x$sha2" != "x" ]
;;TODO: ;;            then
;;TODO: ;;              check_ref $ref || exit 1
;;TODO: ;;            fi
;;TODO: ;;          done
;;TODO: ;;        done
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;;      # For all repositories under $reporoot
;;TODO: ;;      #   Check all refs matching $syncrepo and fast-forward, or push as necessary
;;TODO: ;;      #   to synchronize the ref with $syncrepo
;;TODO: ;;      #   Bail out if ref is not fastforwardable so user can fix and rerun
;;TODO: ;;      time {
;;TODO: ;;        retval=0
;;TODO: ;;        if find $reporoot -type d -name '*.git' | {
;;TODO: ;;            while read repo
;;TODO: ;;            do
;;TODO: ;;              repo=${repo/\/.git/}
;;TODO: ;;              cd ${repo}
;;TODO: ;;              upd=$(git remote update $syncrepo 2>&amp;1 || retval=1)
;;TODO: ;;              [ "x$upd" = "xFetching $syncrepo" ] || {
;;TODO: ;;                log_repo
;;TODO: ;;                printf "$upd\n"
;;TODO: ;;              }
;;TODO: ;;              check_refs || retval=1
;;TODO: ;;            done
;;TODO: ;;            exit $retval
;;TODO: ;;          }
;;TODO: ;;        then
;;TODO: ;;          printf "\nAll done.\n"
;;TODO: ;;        else
;;TODO: ;;          printf "\nFix and redo.\n"
;;TODO: ;;        fi
;;TODO: ;;      }
;;TODO: ;; 
;;TODO: ;; 
;;TODO: ;;      exit $retval
;;TODO: 
