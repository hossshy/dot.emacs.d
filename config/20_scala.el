;; Prevent "check that sbt is on your PATH"
(use-package exec-path-from-shell
  :config (exec-path-from-shell-initialize))

(use-package scala-mode)

(use-package ensime
  :config
  (add-hook 'scala-mode-hook 'ensime-scala-mode-hook))
