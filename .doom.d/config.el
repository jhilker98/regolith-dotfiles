(setq user-full-name "Jacob Hilker"
      user-mail-address "jacob.hilker2@gmail.com")

(setq org-hide-emphasis-markers t)

(after! org
  (custom-set-faces!
    '(org-level-1  :inherit outline-1 :foreground "#83a598")
    '(org-level-2  :inherit outline-3 :foreground "#d3869b")
    '(org-level-3  :inherit outline-2 :foreground "#fabd2f")
    '(org-level-4  :inherit outline-4 :foreground "#fb4934")
    '(org-level-5  :inherit outline-5 :foreground "#83a598" :weight regular)
    '(org-level-6  :inherit outline-6 :foreground "#d3869b" :weight regular)
    '(org-level-7  :inherit outline-7 :foreground "#fabd2f" :weight regular)
    '(org-level-8  :inherit outline-8 :foreground "#fb4934" :weight regular)))

(setq org-ellipsis "⤵")

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "Roboto" :size 14)
)

(after! doom-themes
  (setq
        doom-themes-enable-bold t
        doom-themes-enable-italic t))

(after! org
(setq
 org-directory "~/Dropbox/org/"
 org-agenda-files '("~/Dropbox/org/agenda.org" "~/Dropbox/notes/spring2021.org")
 org-deadline-warning-days 0
 org-todo-keywords '(
      (sequence "TODO(t)" "INPR(i)" "NEXT(n)" "MEET(m)" "|" "SOMEDAY(s)"   "DONE(d)" "CANCELED(c)")
      (type "PROJ(p)")
      (type "BLOG(b)"))
 org-todo-keyword-faces
    '(("TODO" . (:foreground "#cc241d" :weight black :underline t))

   ("INPR" . (:foreground "#fe8019" :weight bold))
    ("NEXT" . (:foreground "#fabd2f" :weight black))
    ("MEET" . (:foreground "#b8bb26" :weight bold))
   ("PROJ" . (:foreground "#458588" :slant italic :weight bold))
   ("BLOG" . (:foreground "#83a598"))
   ("SOMEDAY" . (:foreground "#d3869b" :slant italic))
   ("DONE" . (:foreground "#83a598" :strike-through t))
   ("CANCELED" . (:foreground "cc241d" :strike-through t)))
 )
)

(setq display-line-numbers-type 'relative)

(after! org-super-agenda
(org-super-agenda-mode))

(setq org-agenda-custom-commands
              '(("p" "Planner"
                    (
                      (agenda "" ((org-agenda-span 'day)
                      (org-agenda-use-time-grid t)
                      (org-agenda-time-grid '((daily today weekly require-timed)()() "" nil))
                      (org-agenda-show-all-dates t)
                      (org-agenda-compact-blocks nil)
                      (org-agenda-overriding-header "")
                      (org-agenda-start-day "+0d")
                      (org-super-agenda-groups
                       '(
                           (:name "Habits"
                            :habit t
                            :category "HABIT"
                            :order 2)

                            (:name "Chores"
                            :habit t
                            :category "CHORE"
                            :order 2)



                               (:name none
                                :discard (:todo "DONE")
                                :time-grid t
                                :date today
                                :scheduled today
                                :deadline today
                                :order 1)))))

          (agenda "" ((org-agenda-overriding-header "Coming Up Soon")
	                ;
                      ; (org-agenda-use-time-grid nil)
                      (org-agenda-time-grid '((daily today weekly require-timed)()() "----------------------" nil))
		               (org-agenda-start-day "+1d")
     ;                   (org-agenda-todo-ignore-with-date t)
                      ; (org-agenda-format-date "\n%d %b (%a.)\n")

                       (org-agenda-format-date "\n%d %b (%a.)")
			;		   (concat (make-string (window-width) 9472) "\n")
             ;         (org-agenda-compact-blocks t)
                       (org-agenda-span 2)
                      ;(org-agenda-format-date "%d %b")
                       (org-super-agenda-groups
                         '(

                         (:name "Habits"
                         :habit t
                         :category "HABIT"
                         :order 6)

                         (:name "Chores"
                         :habit t
                         :category "CHORE"
                         :order 6)


     ;                 (:name "Projects"
     ;                 :category "PROJECT"
     ;                 :order 5)


    (:name "Personal"
    :category ("WRITING" "CAMPAIGN" "PERSONAL" "NANO" "UMWCLUB")
    :order 4)

;
;    (:name "Someday"
;     :and (:not (:category ("WRITING" "CAMPAIGN" "PERSONAL" "NANO")) :todo "SOMEDAY")
;     :order 5)

    (:name "Overdue"
      :deadline past
      :scheduled past
      :face '(:foreground "red")
      :order 3)
;
;
    (:name "Classwork and Meetings"
     :category ("CLAS204" "CPSC405" "CPSC419" "CPSC445" "MEETING")
     :order 1)))))

     (alltodo "" ((org-agenda-overriding-header "To Do")
                  (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp))
                  (org-agenda-sorting-strategy '(todo-state-up category-up ))
                  (org-super-agenda-groups '(
                  (:name "Classwork and Meetings"
                  :category ("CLAS204" "CPSC405" "CPSC419" "CPSC445" "MEETING" "CLASSES")
                  :order 1)

                  (:name "Personal"
                  :category ("WRITING" "CAMPAIGN" "PERSONAL" "NANO" "UMWCLUB")
                  :order 2)

                  (:name "Projects"
                   :todo "PROJECT"
                   :category "PROJECT"
                   :order 3)


                 (:discard (:category "HABIT"))
                 (:discard (:category "CHORE"))

))))))))


;
 ;  (:name "Coming Up Soon"
 ;   :scheduled future
 ;   :deadline future
 ;   :date t))))

;
;    (org-agenda-max-todos 11)
;    ;(org-agenda-sorting-strategy '( ts-up category-up todo-state-up))

(add-to-list 'org-agenda-custom-commands
'("w" "Week Ahead" (
                 (agenda "" ((org-agenda-span 'week)
                             (org-agenda-start-day "+1d")
                             (org-agenda-overriding-header "The Week Ahead"))))))

(add-to-list 'org-agenda-custom-commands
'("n" "All Agendas and TODOs"
  (
   (agenda "")
   (alltodo "")
    )
))

(defun jh/open-agenda ()
(interactive)
 (org-agenda nil "p")
)

(defun jh/open-week-agenda ()
 (interactive)
 (org-agenda nil "w")
)

(after! elfeed-org)
(elfeed-org)
(setq
 elfeed-db-directory "~/.elfeed/"
 rmh-elfeed-org-files (list "~/Dropbox/elfeed/elfeed.org")
 elfeed-search-title-min-width 80
 elfeed-search-print-entry-function '+jh/elfeed-search-print-entry
 elfeed-search-filter "@1-week-ago +unread")
 ;elfeed-show-mode-hook
 ;(lambda ()
 ;           (set-face-attribute 'variable-pitch (selected-frame) :font (font-spec :family "Iosevka" :size 16))))
 (use-package! elfeed-goodies)
;(elfeed-goodies/setup)
;(setq
; elfeed-goodies/tag-column-width 0
; elfeed-goodies/feed-source-column-width 30)

(defun elfeed-mark-all-as-read ()
           (interactive)
           (mark-whole-buffer)
           (elfeed-search-untag-all-unread))

;(defface jh/reddit-elfeed-face
;'((t :foreground "#98971a"))
;  "Marks an Elfeed entry from reddit.")
;
;(push '(reddit jh/reddit-elfeed-face)
;      elfeed-search-face-alist)

;(defface jh/campaign-elfeed-face
;'((t :foreground "#458588"))
;  "Marks an Elfeed entry from a campaign I'm in.")
;
;(push '(campaigns jh/campaign-elfeed-face)
;      elfeed-search-face-alist)

(defun +jh/elfeed-search-print-entry (entry)
    "Print ENTRY to the buffer."
 (let* ((elfeed-goodies/tag-column-width 40)
           (elfeed-goodies/feed-source-column-width 30)
           (title (or (elfeed-meta entry :title) (elfeed-entry-title entry) ""))
           (title-faces (elfeed-search--faces (elfeed-entry-tags entry)))
           (feed (elfeed-entry-feed entry))
           (feed-title
            (when feed
              (or (elfeed-meta feed :title) (elfeed-feed-title feed))))
           (tags (mapcar #'symbol-name (elfeed-entry-tags entry)))
           (tags-str (concat (mapconcat 'identity tags ",")))

           (title-width (- (window-width) 10 elfeed-search-trailing-width))
           (title-column (elfeed-format-column
                        title (elfeed-clamp
                               elfeed-search-title-min-width
                               title-width
                               elfeed-search-title-max-width)
                        :left))

           (tag-column (elfeed-format-column
                        tags-str (elfeed-clamp (length tags-str)
                                               elfeed-goodies/tag-column-width
                                               elfeed-goodies/tag-column-width)
                        :left))

           (feed-column (elfeed-format-column
                         feed-title (elfeed-clamp elfeed-goodies/feed-source-column-width
                                                  elfeed-goodies/feed-source-column-width
                                                  elfeed-goodies/feed-source-column-width)
                         :left)))


        (insert (propertize title-column 'face title-faces 'kbd-help title) " ")
        (insert (propertize feed-column 'face 'elfeed-search-feed-face) " ")
        (insert (propertize tag-column 'face 'elfeed-search-tag-face) " ")
      (setq-local line-spacing 0.2)))



(map! :leader
      :desc "Open like spacemacs" "SPC" #'counsel-M-x)

;(map! :leader
;      :desc "Org babel tangle" "m B" #'org-babel-tangle)

(map! :map elfeed-search-mode-map
      :after elfeed-search
      :n "A" #'elfeed-mark-all-as-read)

(map! :leader
      (:prefix-map ("n" . "newsreader")
        :desc "Check news" "n" #'elfeed ))



(add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
;; I have my mbsyncrc in a different folder on my system, to keep it separate from the
;; mbsyncrc available publicly in my dotfiles. You MUST edit the following line.
;; Be sure that the following command is: "mbsync -c ~/.config/mu4e/mbsyncrc -a"
(setq mu4e-maildir "~/.local/share/mail"
      mu4e-get-mail-command "mbsync -a"
      mu4e-update-interval  300
      mu4e-main-buffer-hide-personal-addresses t
      message-send-mail-function 'smtpmail-send-it
      starttls-use-gnutls t)



(setq doom-theme 'doom-gruvbox)

(map! :leader
      (:prefix-map ("a" . "Org Agenda")
       :desc "Open planner" "p" #'jh/open-agenda
       :desc "Open weekly agenda" "w" #'jh/open-week-agenda))
