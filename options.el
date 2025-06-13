(setq-default auto-save-default nil)
(setq-default make-backup-files nil)
(setq-default create-lockfiles nil)

(menu-bar-mode 0)
(column-number-mode 1)
(global-hl-line-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(setq org-startup-indented t)
(setq org-adapt-indentation t)
(require 'ox-md)

(setq org-directory "~/Documents/Notes")
(setq org-mobile-inbox-for-pull "~/Documents/Notes/@inbox.org")
(setq org-mobile-directory "~/Library/Mobile Documents/iCloud~com~mobileorg~mobileorg/Documents")

(defun change-window-divider ()
  (let ((display-table (or buffer-display-table
                          standard-display-table
                          (make-display-table))))
    (set-display-table-slot display-table 5 ?│)
    (set-window-display-table (selected-window) display-table)))

(add-hook 'window-configuration-change-hook 'change-window-divider)

(defun change-cursor-shape ()
  (send-string-to-terminal "\e[5 q"))

(add-hook 'emacs-startup-hook 'change-cursor-shape)
