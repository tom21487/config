;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Enable Org mode
(require 'org)

;; Set Org agenda
(setq org-agenda-files '("~/Documents/org_files/tasks"))

;; Toggle the menu bar (t -> on, -1 -> off)
(menu-bar-mode t)

;; <TAB> character width
(setq-default tab-width 4)

;; <TAB> keyboard width
(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60
                          64 68 72 76 80 84 88 92 96 100 104 108 112
                          116 120))

;; Use spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; Enable Zenburn theme
;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'zenburn t)

;; Set title
(setq-default frame-title-format '("%b [%m]"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(wombat))
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
