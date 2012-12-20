;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init.el
;;
;; Barry Bridgens
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; emacs setup

(set-scroll-bar-mode 'right)
(ido-mode t)

;; Color Theme
(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")

(require 'color-theme)
(color-theme-initialize)
(color-theme-tango)


;; package manager

(add-to-list 'load-path "~/.emacs.d/package-el/")

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; Org mode
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock) ; not needed when global-font-lock-mode is on
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;;; Programming

;; lisp
(global-set-key "\C-cs" 'slime-selector)

;; clojure

(defvar my-packages '(clojure-mode
               nrepl))
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "Ubuntu Mono")))))
