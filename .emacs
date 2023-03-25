;; Line numbers
(setq linum-format "%3d ")
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

; Section 1: autos
;; New line above
(fset 'new-line-above
   (kmacro-lambda-form [?\C-p ?\C-e return] 0 "%d"))
(global-set-key "\C-co" 'new-line-above)
;; Local buffer list
(global-set-key "\C-cb" 'buffer-menu)
;; Backtab
(fset 'backtab
   (kmacro-lambda-form [backspace backspace backspace backspace] 0 "%d"))
(global-set-key [backtab] 'backtab)

;; http://www.wjhsh.net/penggy-p-7475831.html
(defun set-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
                      (format   "%s:pixelsize=%d"  english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family chinese :size chinese-size))))
(if (display-graphic-p)
  (progn
    (set-font "WenQuanYi Zen Hei Mono" "WenQuanYi Zen Hei Mono" 24 24)
  ))

; Section 2: packages
;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Org
(require 'org)
(defun remove-electric-indent-mode ()
  "Used in custom's org mode hook"
  (electric-indent-local-mode -1))
(defun checkbox ()
  "Checks box and moves to next line."
  (interactive)
  (org-ctrl-c-ctrl-c)
  (next-line))

;; PDFs
(setq doc-view-resolution 144)
(pdf-tools-install)

;; EMMS
(require 'emms-setup)
(emms-all)
(emms-default-players)
(setq emms-source-file-default-directory "~/Music/")

;; pyim
(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)
(setq default-input-method "pyim")

;; Section 3: themes
; Spacemacs
(setq spacemacs-theme-org-height nil)

;; Section 4: custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(blink-matching-paren t)
 '(c-basic-offset 4)
 '(case-fold-search nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(wombat))
 '(dired-mode-hook '(pdf-occur-dired-minor-mode dired-hide-details-mode))
 '(indent-tabs-mode nil)
 '(org-agenda-files '("~/Documents/org"))
 '(org-agenda-span 'fortnight)
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-mode-hook '(remove-electric-indent-mode))
 '(package-selected-packages
   '(vterm pdf-tools markdown-mode solarized-theme zenburn-theme use-package tablist spacemacs-theme pyim-basedict pyim monokai-theme magit-section goto-chg git-commit emms csharp-mode))
 '(pdf-view-midnight-colors '("#655370" . "#fbf8ef"))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 100)
 '(sentence-end-double-space nil)
 '(sgml-basic-offset 4)
 '(show-paren-mode t)
 '(tab-bar-mode t)
 '(tab-stop-list '(0 4))
 '(truncate-lines t)
 '(verilog-auto-endcomments nil)
 '(verilog-auto-lineup 'ignore)
 '(verilog-auto-newline nil)
 '(verilog-case-indent 4)
 '(verilog-cexp-indent 4)
 '(verilog-highlight-grouping-keywords t)
 '(verilog-indent-level 4)
 '(verilog-indent-level-behavioral 4)
 '(verilog-indent-level-declaration 4)
 '(verilog-indent-level-module 4)
 '(verilog-indent-lists nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Allow disabled commands
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
