(use-package awesome-tray
  :straight (awesome-tray :type git :host github :repo "manateelazycat/awesome-tray")
  :config
  (setq awesome-tray-hide-mode-line t)
  (setq awesome-tray-minibuffer t)
  (setq awesome-tray-active-modules '("location" "circle" "buffer-name" "file-path" "git" "evil"))
  (awesome-tray-mode 1))
