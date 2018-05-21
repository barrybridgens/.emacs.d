;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init.el
;;
;; Barry Bridgens
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; emacs setup


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(set-scroll-bar-mode 'right)
(ido-mode t)

;; Color Theme



;; Org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-variables
 '(org-directory "~/Dropbox/Documents/org")
 '(org-agenda-files (list org-directory)))

(setq org-agenda-dim-blocked-tasks 'invisible)
(setq org-agenda-todo-ignore-deadlines (quote far))
(setq org-deadline-warning-days 2)
(setq org-enforce-todo-checkbox-dependencies t)
(setq org-enforce-todo-dependencies t)
(setq org-hide-leading-stars t)
(setq org-startup-indented t)
(global-set-key "\C-ca" 'org-agenda)


;;; Programming

(setq default-tab-width 4)

;; lisp
(global-set-key "\C-cs" 'slime-selector)

;; clojure



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
