(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1)
  :config
  (doom-modeline-def-modeline 'minimal
    '(buffer-info)
    '(buffer-position modals))
  (doom-modeline-set-modeline 'minimal t)
  (setq doom-modeline-position-column-line-format
    '("%l:%c "
      (:eval
	(when doom-modeline-percent-position
	  (concat " " doom-modeline-percent-position)))))
  (setq doom-modeline-modal-icon nil)
  (setq doom-modeline-buffer-file-name-style 'file-name))
