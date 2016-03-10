;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)

;(create-fontset-from-fontset-spec "-apple-Consolas-normal-normal-normal-*-13-*-*-*-m-0-fontset-mac")
;(add-to-list 'default-frame-alist '(font . "fontset-mac"))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font "fontset-default" 'han "PingFang SC")
  (set-fontset-font "fontset-default" 'cjk-misc "PingFang SC")
  
  )
;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;  (set-fontset-font "fontset-mac" 'han "Kaiti SC"))
;
(setq face-font-rescale-alist
	  '(
		(".*Kaiti SC.*" . 1.2)
		(".*PingFang SC.*" . 1.2)
     	(".*Heiti SC.*" . 1.1)))

(org-babel-do-load-languages
   'org-babel-load-languages
    '((ditaa . t)
	  (dot . t)
	  (plantuml . t)))

(setq org-src-fontify-natively t)
(setq org-plantuml-jar-path "~/.emacs.d/scripts/plantuml.jar")

;(org-display-inline-images t t)

(setq my-org-directory "~/Library/Mobile Documents/com~apple~CloudDocs/org-files/")

(setq org-default-notes-file (concat my-org-directory "notes/notes.org"))
(define-key global-map "\C-cc" 'org-capture)

(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat my-org-directory "notes/gtd.org") "Tasks")
             "* TODO %?\n  %i\n  %a")
        ("j" "Journal" entry (file+datetree (concat my-org-directory "notes/journal.org"))
             "* %?\nEntered on %U\n  %i\n  %a")))


;(require 'cal-china-x)
;(setq mark-holidays-in-calendar t)
;(setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
;(setq calendar-holidays cal-china-x-important-holidays)

;(require 'chinese-fonts-setup)
