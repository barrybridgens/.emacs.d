;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init.el
;;
;; Barry Bridgens
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; emacs setup

(cd "/home/barry/Dropbox/Documents/org")

(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

(use-package counsel
  :ensure t
)

(use-package swiper
  :ensure try
  :config
  (progn
	(ivy-mode 1)
	(setq ivy-use-virtual-buffers t)
	(global-set-key "\C-s" 'swiper)
	(global-set-key (kbd "C-c C-r") 'ivy-resume)
	(global-set-key (kbd "<f6>") 'ivy-resume)
	(global-set-key (kbd "M-x") 'counsel-M-x)
	(global-set-key (kbd "C-x C-f") 'counsel-find-file)
	(global-set-key (kbd "<f1> f") 'counsel-describe-function)
	(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
	(global-set-key (kbd "<f1> l") 'counsel-load-library)
	(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
	(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
	(global-set-key (kbd "C-c g") 'counsel-git)
	(global-set-key (kbd "C-c j") 'counsel-git-grep)
	(global-set-key (kbd "C-c k") 'counsel-ag)
	(global-set-key (kbd "C-x l") 'counsel-locate)
	(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
	(define-key read-expression-map (kbd "C-r") 'counsel-expression-history)
	))

(use-package avy
  :ensure t
  :bind ("M-s" . avy-goto-char))

(use-package auto-complete
  :ensure t
  :init
  (progn
	(ac-config-default)
	(global-auto-complete-mode t)
	))

(set-scroll-bar-mode 'right)

;(setq ido-enable-flex-matching t)
;(setq ido-everywhere t)
;(ido-mode t)

(defalias 'list-buffers 'ibuffer)

;; Theme
(use-package zenburn-theme
  :ensure t
  :config (load-theme 'zenburn t))

;;; Evil mode
;; goto-chg
;(add-to-list 'load-path "~/.emacs.d/goto-chg")
;(require 'goto-chg)

;; Evil mode
;(add-to-list 'load-path "~/.emacs.d/evil")
;(require 'evil)
;(evil-mode 1)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; Clojure
(use-package cider
  :ensure t)


;; Org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-directory "~/Dropbox/Documents/org")
 '(org-agenda-files (list org-directory))
 '(package-selected-packages
   (quote
	(go-playground go-mode cider zenburn-theme auto-complete avy try use-package slime)))
 '(tool-bar-mode nil))

(setq org-agenda-dim-blocked-tasks 'invisible)
(setq org-agenda-todo-ignore-deadlines (quote far))
(setq org-deadline-warning-days 2)
(setq org-enforce-todo-checkbox-dependencies t)
(setq org-enforce-todo-dependencies t)
(setq org-hide-leading-stars t)
(setq org-startup-indented t)
(setq org-agenda-todo-ignore-scheduled t)
(setq org-agenda-todo-ignore-deadlines t)
(global-set-key "\C-ca" 'org-agenda)


;;; Programming

(setq default-tab-width 4)

;; lisp
(global-set-key "\C-cs" 'slime-selector)

;; clojure


;; golang
(use-package go-mode
  :ensure t)
(use-package go-playground
  :ensure t)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
