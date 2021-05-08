(setq user-full-name "Jacob Hilker"
      user-mail-address "jacob.hilker2@gmail.com")

(setq doom-theme 'doom-gruvbox)

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "Alegreya" :size 14))

(after! doom-themes
  (setq
   doom-themes-enable-bold t
   doom-themes-enable-italic t))

(custom-set-faces!
  '(font-lock-comment-face :slant italic))

(after! org
  (set-face-attribute 'org-level-1 nil :foreground "#83a598")
  (set-face-attribute 'org-level-2 nil :foreground "#d3869b")
  (set-face-attribute 'org-level-3 nil :foreground "#fabd2f")
  (set-face-attribute 'org-level-4 nil :foreground "#fb4934")
  (set-face-attribute 'org-level-5 nil :foreground "#83a598")
  (set-face-attribute 'org-level-6 nil :foreground "#d3869b")
  (set-face-attribute 'org-level-7 nil :foreground "#fabd2f")
  (set-face-attribute 'org-level-8 nil :foreground "#fb4934"))

(after! org
(setq

 org-directory "~/Dropbox/org/"
 org-agenda-files '("~/Dropbox/org/agenda.org")
 org-ellipsis " ▼ "
 org-deadline-warning-days 0
 org-todo-keywords '(
      (sequence "TODO(t)" "INPR(i)" "NEXT(n)" "MEET(m)" "|" "DONE(d)" "CANCELED(c)")
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

(use-package! org-super-agenda
  :after org-agenda
  :init
  (require 'evil-org-agenda)
  :config
  (org-super-agenda-mode))

(after! org-super-agenda
  (add-to-list 'org-agenda-custom-commands
    '("p" "Planner"
      (
        (agenda "" ((org-agenda-span 'day)
                    (org-agenda-use-time-grid t)
                    (org-agenda-time-grid '((daily today weekly require-timed)()() "" nil))
		              (org-agenda-show-all-dates t)
			          (org-agenda-compact-blocks nil)
			          (org-agenda-overriding-header "")
			          (org-agenda-start-day nil)
                    (org-super-agenda-groups
                    '((:name "Habits"
                       :habit t
                       :category "HABIT"
                       :order 1)

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
                                (org-agenda-time-grid '((daily today weekly require-timed)()() "" nil))
                                (org-agenda-format-date "\n%d %b (%a.)")
                                (org-agenda-start-day "+1d")
                                (org-agenda-span 2)
                                (org-super-agenda-groups
                                 '((:name "Classwork and Meetings"
                                    :category ("CPSC430" "DGST101" "CPSC414" "CPSC444" "MEETING")
                                    :order 1)

                                   (:name "Personal"
                                    :category ("WRITING" "CAMPAIGN" "PERSONAL" "NANO" "UMWCLUB")
                                    :order 2)

                                   (:name "Overdue"
                                    :deadline past
                                    :scheduled past
                                    :face '(:foreground "red")
                                    :order 3)

                                   (:name "Projects"
                                    :todo "PROJECT"
                                    :category "PROJECT"
                                    :order 4)))))

                                (alltodo "" ((org-agenda-overriding-header "To Do")
                                             (org-agenda-skip-function '(org-agenda-skip-entry-if 'timestamp))
                                             (org-agenda-sorting-strategy '(todo-state-up category-up ))
                                             (org-super-agenda-groups
                                              '(
                                                (:name "Classwork and Meetings"
                                                 :category ("CLAS204" "CPSC405" "CPSC419" "CPSC445" "MEETING" "CLASSES")
                                                 :order 1)

                                                (:name "Personal"
                                                 :category ("WRITING" "CAMPAIGN" "PERSONAL" "NANO" "UMWCLUB")
                                                 :order 2)

                                                (:name "Projects"
                                                 :category "PROJECT"
                                                 :order 3)


                                                (:discard (:category "HABIT"))
                                                (:discard (:category "CHORE"))))))))))

(defun jh/open-planner ()
  (interactive)
  (org-agenda nil "p"))

(add-to-list 'load-path "/usr/local/share/emacs/site-lisp/mu4e") ;; On Ubuntu
  (require 'mu4e);; on Ubuntu

  (require 'org-mu4e) ;; On Ubuntu
(setq mu4e-maildir "~/.local/share/mail")
(setq mu4e-contexts
	(list
	 ;; Primary personal account
	 (make-mu4e-context
	  :name "jhilker2"
	  :match-func
	    (lambda (msg)
	      (when msg
		(string-prefix-p "/jacob.hilker2" (mu4e-message-field msg :maildir))))
	  :vars '((user-mail-address . "jacob.hilker2@gmail.com")
		  (user-full-name    . "Jacob Hilker")
		  (smtpmail-smtp-server  . "smtp.gmail.com")
        (mu4e-get-mail-func "mbsync jacob.hilker2@gmail.com")
		  (smtpmail-smtp-service . 465)
		  (smtpmail-stream-type  . ssl)
		  (mu4e-drafts-folder  . "/jacob.hilker2@gmail.com/[Gmail]/Drafts")
		  (mu4e-sent-folder  . "/jacob.hilker2@gmail.com/[Gmail]/Sent Mail")
		  (mu4e-refile-folder  . "/jacob.hilker2@gmail.com/[Gmail]/All Mail")
		  (mu4e-trash-folder  . "/jacob.hilker2@gmail.com/[Gmail]/Trash")))))

(after! elfeed
(elfeed-goodies/setup)
(setq elfeed-search-filter "@1-week-ago +unread"
      elfeed-goodies/feed-source-column-width 30
      elfeed-goodies/tag-column-width 16)
)

(setq display-line-numbers-type 'relative)

(map! :leader
      :desc "Org babel tangle" "m B" #'org-babel-tangle)

(map! :leader
      (:prefix ("o" . "open")
       :desc "org agenda" "a" #'jh/open-planner
       :desc "News reader" "n" #'elfeed))
