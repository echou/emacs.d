;; This is the Aquamacs Preferences file.
;; Add Emacs-Lisp code here that should be executed whenever
;; you start Aquamacs Emacs. If errors occur, Aquamacs will stop
;; evaluating this file and print errors in the *Messags* buffer.
;; Use this file in place of ~/.emacs (which is loaded as well.)
(load-file "~/.emacs.d/init.el")

;(create-fontset-from-fontset-spec "-apple-Consolas-normal-normal-normal-*-13-*-*-*-m-0-fontset-mac")
;(add-to-list 'default-frame-alist '(font . "fontset-mac"))
;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;  (set-fontset-font "fontset-default" 'han "PingFang SC")
;  (set-fontset-font "fontset-default" 'cjk-misc "PingFang SC")
;  )
;
;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;  (set-fontset-font "fontset-mac" 'han "Kaiti SC"))
;
;(setq face-font-rescale-alist
;	  '(
;		(".*Kaiti SC.*" . 1.2)
;		(".*PingFang SC.*" . 1.2)
;     	(".*Heiti SC.*" . 1.1)))

(setq org-src-fontify-natively t)
(setq org-plantuml-jar-path "~/.emacs.d/scripts/plantuml.jar")

(setq my-org-directory "~/Library/Mobile Documents/com~apple~CloudDocs/org-files/")

