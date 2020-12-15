(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(beacon-color "#d33682")
 '(centaur-tabs-hide-tabs-hooks
   '(magit-status-mode-hook magit-popup-mode-hook reb-mode-hook completion-list-mode-hook dashboard-mode-hook))
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("5d09b4ad5649fea40249dd937eaaa8f8a229db1cec9a1a0ef0de3ccf63523014" "9e39a8334e0e476157bfdb8e42e1cea43fad02c9ec7c0dbd5498cf02b9adeaf1" "8d7684de9abb5a770fbfd72a14506d6b4add9a7d30942c6285f020d41d76e0fa" "939ea070fb0141cd035608b2baabc4bd50d8ecc86af8528df9d41f4d83664c6a" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "7aaee3a00f6eb16836f5b28bdccde9e1079654060d26ce4b8f49b56689c51904" "47ec21abaa6642fefec1b7ace282221574c2dd7ef7715c099af5629926eb4fd7" "4cf9ed30ea575fb0ca3cff6ef34b1b87192965245776afa9e9e20c17d115f3fb" "aded61687237d1dff6325edb492bde536f40b048eab7246c61d5c6643c696b7f" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "e1ef2d5b8091f4953fe17b4ca3dd143d476c106e221d92ded38614266cea3c8b" "1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "d5f8099d98174116cba9912fe2a0c3196a7cd405d12fa6b9375c55fc510988b5" "845103fcb9b091b0958171653a4413ccfad35552bc39697d448941bcbe5a660d" "777a3a89c0b7436e37f6fa8f350cbbff80bcc1255f0c16ab7c1e82041b06fccd" "1c8171893a9a0ce55cb7706766e57707787962e43330d7b0b6b0754ed5283cda" "669e02142a56f63861288cc585bee81643ded48a19e36bfdf02b66d745bcc626" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "285efd6352377e0e3b68c71ab12c43d2b72072f64d436584f9159a58c4ff545a" "229c5cf9c9bd4012be621d271320036c69a14758f70e60385e87880b46d60780" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "c74e83f8aa4c78a121b52146eadb792c9facc5b1f02c917e3dbb454fca931223" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" default))
 '(evil-undo-system 'undo-tree)
 '(exec-path
   '("/home/jhilker/.local/bin" "/home/jhilker/.bin" "/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/sbin" "/bin" "/usr/games" "/usr/local/games" "/snap/bin
" "/usr/lib/x86_64-linux-gnu/emacs/26.3/x86_64-linux-gnu" "/home/jhilker/anaconda3/bin/"))
 '(flycheck-color-mode-line-face-to-color 'mode-line-buffer-id)
 '(frame-background-mode 'dark)
 '(helm-minibuffer-history-key "M-p")
 '(imenu-list-position 'right)
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#073642" "#268bd2"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#073642" "#859900"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#073642" "#56697A"))
 '(jedi:complete-on-dot t)
 '(line-spacing 0.1)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(objed-cursor-color "#dc322f")
 '(org-agenda-files
   '("~/Dropbox/org/agenda.org" "~/Dropbox/notes/fall2020/notes.org"))
 '(org-agenda-time-leading-zero t)
 '(org-export-backends '(ascii html icalendar latex md odt rss))
 '(org-html-head-include-default-style nil)
 '(org-journal-dir "~/Dropbox/org/journal/")
 '(org-journal-file-type 'monthly)
 '(org-journal-time-format "%a, %d %b %Y")
 '(org-journal-timestamp-format "%a, %d %b %Y" t)
 '(org-log-into-drawer t)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail org-tempo ol-w3m))
 '(org-static-blog-drafts-directory "~/Projects/jhilker.gitlab.io/drafts/")
 '(org-static-blog-posts-directory "~/Projects/jhilker.gitlab.io/posts/")
 '(org-structure-template-alist
   '(("a" . "export ascii")
     ("c" . "center")
     ("C" . "comment")
     ("e" . "example")
     ("E" . "export")
     ("h" . "export html")
     ("l" . "export latex")
     ("q" . "quote")
     ("s" . "src")
     ("v" . "verse")
     ("w" . "wrapper")
     ("d" . "date")))
 '(package-selected-packages
   '(mu4e-overview idle-org-agenda bm emms org-sidebar helm-org org-chef tomatinho org-journal ox-rst ox-mediawiki yaml-mode tagedit web-mode lorem-ipsum flycheck xref-js2 js2-refactor js2-mode company mediawiki golden-ratio atom-one-dark-theme color-theme-sanityinc-solarized linum-relative treemacs-magit treemacs-projectile treemacs-evil treemacs evil-smartparens smartparens csv-mode yasnippet-snippets xresources-theme xresurces-theme zenburn-theme gruber-darker-theme gruvbox-theme ewal org-ql vimrc-mode wordgen smart-mode-line csv org-make-toc nav neotree slack toc-org org-super-agenda org-bullets bbcode-mode elpy auto-complete counsel ivy decide wordsmith-mode writeroom-mode writegood-mode wc-mode doom-modeline solarized-theme color-theme-solarized restart-emacs yasnippet unfill general dashboard projectile all-the-icons magit which-key imenu-list evil-collection evil undo-tree use-package))
 '(pdf-view-midnight-colors (cons "#839496" "#002b36"))
 '(rustic-ansi-faces
   ["#002b36" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#839496"])
 '(solarized-underline nil)
 '(spotify-use-system-bus-p t)
 '(tab-width 4)
 '(temporary-file-directory "/tmp/")
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#cb4b16")
     (60 . "#b58900")
     (80 . "#859900")
     (100 . "#2aa198")
     (120 . "#268bd2")
     (140 . "#d33682")
     (160 . "#6c71c4")
     (180 . "#dc322f")
     (200 . "#cb4b16")
     (220 . "#b58900")
     (240 . "#859900")
     (260 . "#2aa198")
     (280 . "#268bd2")
     (300 . "#d33682")
     (320 . "#6c71c4")
     (340 . "#dc322f")
     (360 . "#cb4b16")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(italic ((t (:underline nil :slant italic))))
 '(org-agenda-date ((t (:foreground "#d3869b" :underline nil :weight normal))))
 '(org-agenda-date-today ((t (:foreground "#83a598" :slant normal :weight bold))))
 '(org-agenda-date-weekend ((t (:foreground "#fabd2f" :underline nil :slant italic :weight light))))
 '(org-agenda-property-face ((t nil)))
 '(org-agenda-structure ((t (:foreground "#ebdbb2" :weight ultra-bold))))
 '(org-hide ((t (:foreground "#282828"))))
 '(org-super-agenda-header ((t (:inherit org-agenda-structure :underline t)))))
