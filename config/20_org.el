(use-package org :ensure t
  :config
  (defun gtd()
    (interactive)
    (define-key global-map "\C-cl" 'org-store-link)
    (define-key global-map "\C-ca" 'org-agenda)
    (add-hook 'org-mode-hook 'turn-on-font-lock)
    (find-file "~/Dropbox/org/mygtd.org")))
