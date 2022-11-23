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
;; 中文字体对齐
;; 来源：http://www.wjhsh.net/penggy-p-7475831.html
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
(with-eval-after-load 'dired
  (add-hook 'dired-mode-hook 'dired-hide-details-mode)
)
;; Org
(require 'org)
;; Set Org agenda
(setq org-agenda-files '("~/Documents/org"))
;; Wrapping and indenting
(with-eval-after-load 'org       
  (add-hook 'org-mode-hook (lambda() (visual-line-mode 1)))
 )
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
 '(case-fold-search nil)
 '(column-number-mode t)
 '(custom-enabled-themes '(spacemacs-light))
 '(custom-safe-themes
   '("fa2b58bb98b62c3b8cf3b6f02f058ef7827a8e497125de0254f56e373abee088" default))
 '(package-selected-packages
   '(pdf-tools markdown-mode solarized-theme zenburn-theme use-package tablist spacemacs-theme pyim-basedict pyim monokai-theme magit-section goto-chg git-commit emms csharp-mode))
 '(sentence-end-double-space nil)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
