(setq user-full-name "Jacob Hilker"
      user-mail-address "jacob.hilker2@gmail.com")

(setq doom-theme 'doom-gruvbox)

(setq doom-font (font-spec :family "Iosevka Nerd Font" :size 14)
      doom-variable-pitch-font (font-spec :family "Iosevka Aile" :size 14))

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
      org-directory "~/Dropbox/org"
      org-agenda-files '("~/Dropbox/org/agenda.org" "~/Dropbox/org/projects.org" "~/Dropbox/org/contacts.org" "~/Dropbox/org/todo.org")
      org-todo-keywords '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
                          (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))
      org-todo-keyword-faces '(
                               ("TODO" . (:foreground "#cc241d" :weight bold :underline t))
                               ("NEXT" . (:foreground "#fe8019" :weight bold))
                               ("DONE" . (:foreground "#83a598" :weight bold :strike-through t))
                               ("WAITING" . (:foreground "#d3869b" :weight bold :slant italic))
                               ("CANCELLED" . (:foreground "#83a598" :weight bold :strike-through t))
                               ))
)

(use-package! org-super-agenda
  :after org-agenda
  :init
  (require 'evil-org-agenda)
  :config
  (org-super-agenda-mode))

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
      :desc "Open like spacemacs" "SPC" #'counsel-M-x)

(map! :leader
      :desc "Org babel tangle" "m B" #'org-babel-tangle)

(map! :leader
      (:prefix ("o" . "open")
       :desc "News reader" "n" #'elfeed))
