;; Auto byte compile
(add-hook 'after-save-hook
	  (lambda ()
	    (let ((file (buffer-file-name)))
	      (when (string-match ".*\\.el$" file)
		(save-excursion (byte-compile-file file))))))

;; Emphasis parensis
(show-paren-mode 1)

;; Do not make backup
(setq backup-inhibited t)
(setq make-backup-files nil)

;; Delete auto save files when exit
(setq delete-auto-save-files t)

;; Do not blink cursor
(blink-cursor-mode 0)

;; Show current line number on status bar
(column-number-mode t)

;;; Edit compressed file
(auto-compression-mode t)

;;; mark region
(transient-mark-mode 1)

;;; Hide startup message
(setq inhibit-startup-message t) 

;(setq-default indent-tabs-mode nil)

(setq line-move-visual nil)

(setq view-read-only t)

; show line number
(global-linum-mode t)

; Add /usr/local/bin
(push "/usr/local/bin" exec-path)
