(setq inhibit-startup-message t)

(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

(setq split-width-threshold nil)

(setq-default tab-width 2)
(setq-default c-basic-offset 2)

;; LINE NUMBERS - relative
(column-number-mode 1)
(global-display-line-numbers-mode)

;; disable graphical timeout
(global-unset-key (kbd "C-z"))

(ido-mode 1) ; IDO
(ido-everywhere 1)

;; Move Backups in different folder
(setq backup-directory-alist '(("." . "~/.emacs_saves")))

;; FONT
(set-face-attribute 'default nil :font "Fira Code Retina" :height 130)

;; MELPA CONFIG -- must be before every package configuration!
(require 'package)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
			 ("elpa" . "https://elpa.gnu.org/packages/")))

;; THEME
(require 'package)
(add-to-list 'package-archives
			 '("marmalade" . "http://marmalade-repo.org/packages/") t)
(load-theme 'gruber-darker t)

; SMEX
(require 'smex)
(global-set-key (kbd "M-x") 'smex)

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

;; MULTIPLE CURSORS
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(require 'package)
(add-to-list 'package-archives
						 '("melpa" . "http://melpa.org/packages/") t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
	 '(rust-mode magit use-package smex multiple-cursors highlight-parentheses gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
