; Section 0: settings
;; Disable splash screen
(setq inhibit-splash-screen t)
;; Show tab bar
(setq tab-bar-mode t)
;; Hide scroll bar
(setq scroll-bar-mode nil)
;; Show matching parenthesis
(setq show-paren-mode t)
;; Smooth scrolling (one line at a time)
(setq scroll-step 1)
;; Disable blinking cursor
(setq blink-cursor-mode nil)
;; Tab settings: 4 spaces
(setq indent-tabs-mode nil)
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
;; Always truncate lines
(setq truncate-lines t)
;; End sentences with a single space
(setq sentence-end-double-space nil)
;; Show unfinished commands immediately
(setq echo-keystrokes 0.01)

; Section 1: autos
;; S-1 -> new-line-above
(fset 'new-line-above
   (kmacro-lambda-form [?\C-p ?\C-e return] 0 "%d"))
(global-set-key [8388657] 'new-line-above)
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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
