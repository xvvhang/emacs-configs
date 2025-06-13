(defun load-config-file (relative-path)
  "Load a configuration file from a RELATIVE-PATH based on the Emacs configuration directory.
If the file exists, it is loaded; otherwise, a message is displayed."
  (let ((config-file (expand-file-name relative-path user-emacs-directory)))
    (if (file-exists-p config-file)
	(load-file config-file)
      (message "File does not exist: %s" config-file))))

(load-config-file "options.el")
(load-config-file "plugins.el")
(load-config-file "keymaps.el")
