(require 'org-crypt)
; Encrypt all entries before saving
(org-crypt-use-before-save-magic)
(setq org-tags-exclude-from-inheritance (quote ("crypt")))
; GPG key to use for encryption
(setq org-crypt-key "F0B66B40")
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
(setq org-startup-truncated nil)
(set-default 'toggle-truncate-lines t)

;; Define location for storage of org capture notes
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)


;; Load color themes and set to Charcoal Black
(add-to-list 'load-path "~/.emacs.d/lisp/")
(add-to-list 'load-path "~/.emacs.d/lisp/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-charcoal-black)))

;; Enable Powershell in Windows
(require 'powershell)

;; Enable magit -- not going to work on Windows I think
(require 'package)
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(setq url-http-attempt-keepalives nil)

;;(add-to-list 'load-path "~/.emacs.d/lisp/magit")
;;(eval-after-load 'info
;;  '(progn (info-initialize)
;;          (add-to-list 'Info-directory-list "~/.emacs.d/lisp/magit/")))
;;(require 'magit)

(global-set-key [M-left] 'windmove-left)          ; move to left windnow
(global-set-key [M-right] 'windmove-right)        ; move to right window
(global-set-key [M-up] 'windmove-up)              ; move to upper window
(global-set-key [M-down] 'windmove-down)          ; move to downer window

;; Set hotkey for opening the init.el (this file)
(defun initfile ()
    (interactive)
    (find-file "~/.emacs.d/init.el")
)
(global-set-key (kbd "C-c e") 'initfile)

;; Set hotkey for opening the journal
(defun journalfile ()
    (interactive)
    (find-file "~/jrn/journal.org")
)
(global-set-key (kbd "C-c j") 'journalfile)

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
