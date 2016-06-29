 ;; C-h as Backspace
(keyboard-translate ?\C-h ?\C-?)

(global-set-key "\M-h" 'backward-kill-word)

;; Move previous window
(global-set-key "\C-xp" (lambda () (interactive) (other-window -1)))

;; Open browser
(global-set-key "\C-co" 'browse-url-at-point)

(global-set-key "\C-x\C-b" 'buffer-menu)

;; Join lines
(global-set-key "\M-j" (lambda () (interactive) (join-line t)))

;; Disable to minimize window
(global-set-key "\C-z" nil)

;; Delete line without putting it in clipboard
(defun only-kill-line (&optional arg)
  (interactive "P")
  (let (kill-ring kill-ring-yank-pointer)
    (kill-line arg)))
(global-set-key "\C-k" 'only-kill-line)

(global-set-key (kbd "C-S-k") 'kill-line)

(add-hook 'view-mode-hook
          '(lambda ()
            (define-key view-mode-map "h" 'backward-char)
            (define-key view-mode-map "j" 'next-line)
            (define-key view-mode-map "k" 'previous-line)
            (define-key view-mode-map "l" 'forward-char)))

;; Share clipboard with X applications
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-w" 'clipboard-kill-region)

(global-set-key (kbd "C-M-=") 'text-scale-increase) 
(global-set-key (kbd "C-M--") 'text-scale-decrease)
