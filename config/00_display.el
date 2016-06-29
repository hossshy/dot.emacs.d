(when window-system
  (menu-bar-mode 0)
  (tool-bar-mode 0)
  (scroll-bar-mode nil)
  (setq default-frame-alist
	(append(list
		'(foreground-color . "black")
		'(background-color . "#f5f5d7")
		'(border-color . "black")
		'(mouse-color . "black")
		'(cursor-color . "pink")
					;'(width . 60)
					;'(height . 42))
		)
	       default-frame-alist)))

(setq display-time-string-forms
	  '((let ((system-time-locale "C"))
		  (format-time-string "%m/%d(%a)%H:%M"))))
(display-time)
