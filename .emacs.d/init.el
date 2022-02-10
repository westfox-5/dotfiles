(setq inhibit-startup-message t)

(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

(setq split-width-threshold nil)

(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;; LINE NUMBERS - relative
(column-number-mode 1)
(global-display-line-numbers-mode)

;; disable graphical timeout
(global-unset-key (kbd "C-z"))

(ido-mode 1) ; IDO
(ido-everywhere 1)

(require 'smex)
(global-set-key (kbd "M-x") 'smex)

;; Move Backups in different folder
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

;; FONT
(set-face-attribute 'default nil :font "Fira Code Retina" :height 150)

;; THEME
(load-theme 'gruber-darker t)

;; MELPA CONFIG
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)

;; HIGHLIGHT PARENTHESES
(require 'highlight-parentheses)
(global-highlight-parentheses-mode)

;; DIRED
(require 'dired-x)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")

;; WORD-WRAP
(defun rc/enable-word-wrap ()
  (interactive)
  (toggle-word-wrap 1))

;; DIRED
(require 'dired-x)
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))
(setq-default dired-dwim-target t)
(setq dired-listing-switches "-alh")

;; WORD-WRAP
(defun rc/enable-word-wrap ()
  (interactive)
  (toggle-word-wrap 1))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3d2e532b010eeb2f5e09c79f0b3a277bfc268ca91a59cdda7ffd056b868a03bc" default))
 '(display-line-numbers-type 'relative)
 '(package-selected-packages
   '(highlight-parentheses use-package smex gruber-darker-theme))
 '(split-width-threshold nil)
 '(whitespace-style
   '(face tabs spaces trailing space-before-tab newline indentation empty space-after-tab space-mark tab-mark)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
