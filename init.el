(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; Fixes known issue with Emacs 26.1

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa"
. "https://melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/myinit.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (elpy jedi flycheck htmlize ox-reveal magit which-key use-package undo-tree try org-bullets gruvbox-theme counsel auto-complete ace-window))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
