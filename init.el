;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; init.el
;;
;; Barry Bridgens
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; emacs setup


(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))


(org-babel-load-file (expand-file-name "~/.emacs.d/my-init.org"))
