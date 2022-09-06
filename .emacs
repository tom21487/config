; Section 0: settings
;; Disable splash screen
(setq inhibit-splash-screen t)
;; Hide scroll bar
(scroll-bar-mode -1)
;; Hide tool bar
(tool-bar-mode -1)
;; Show tab bar
(tab-bar-mode t)
;; Show matching parenthesis
(setq show-paren-mode t)
;; Smooth scrolling (one line at a time)
(setq scroll-step 1)
;; Disable blinking cursor
(setq blink-cursor-mode nil)
;; Tab settings: 4 spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq c-basic-offset tab-width)
(setq python-offset tab-width)
;; Show line numbers
(setq column-number-mode t)
(setq linum-format "%3d ")
(add-hook 'prog-mode-hook 'display-line-numbers-mode)
;; Verilog smart semicolons
(setq verilog-auto-newline nil)
;; Blink cursor
(setq blink-cursor-mode nil)
;; Case-sensitive search
(setq case-fold-search nil)
;; Always truncate lines (if setq-default doesn't work try language-specific settings)
(setq-default truncate-lines t)
;; End sentences with a single space
(setq sentence-end-double-space nil)
;; Show unfinished commands immediately
(setq echo-keystrokes 0.01)

; Section 1: autos
;; New line above
(fset 'new-line-above
   (kmacro-lambda-form [?\C-p ?\C-e return] 0 "%d"))
(global-set-key "\C-co" 'new-line-above)
;; Local buffer list
(global-set-key "\C-cb" 'buffer-menu)
;; http://www.wjhsh.net/penggy-p-7475831.html
(defun set-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
                      (format   "%s:pixelsize=%d"  english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family chinese :size chinese-size))))
(set-font "WenQuanYi Zen Hei Mono" "WenQuanYi Zen Hei Mono" 22 22)

; Section 2: packages
;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; Dired
(add-hook 'dired-mode-hook 'dired-hide-details-mode)
;; Org
(require 'org)
;; Set Org agenda
(setq org-agenda-files '("~/Documents/org"))
;; Wrapping and indenting
(with-eval-after-load 'org       
  (add-hook 'org-mode-hook (lambda() (visual-line-mode 1)))
  (add-hook 'org-mode-hook (lambda() (electric-indent-local-mode -1)))
)
;; Docview
(setq doc-view-resolution 144)
;; EMMS (GNU ELPA)
(require 'emms-setup)
(emms-all)
(emms-default-players)
(setq emms-source-file-default-directory "~/Music/")
;; pyim (GNU ELPA)
(require 'pyim)
(require 'pyim-basedict)
(pyim-basedict-enable)
(setq default-input-method "pyim")

;; Section 3: custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(spacemacs-light))
 '(custom-safe-themes
   '("4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(emms-setup-default-player-list '(emms-player-mpv))
 '(package-selected-packages
   '(solarized-theme zenburn-theme use-package tablist spacemacs-theme pyim-basedict pyim monokai-theme magit-section goto-chg git-commit emms csharp-mode))
 '(sgml-basic-offset 4)
 '(tab-stop-list '(0 4 8)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
