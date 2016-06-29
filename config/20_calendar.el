(use-package japanese-holidays
  :config
  (setq calendar-holidays (append japanese-holidays)))
(use-package calendar
  :config
  (setq calendar-mark-holidays-flag t)
  (setq calendar-weekend-marker 'diary)
  (add-hook 'today-visible-calendar-hook 'calendar-mark-weekend)
  (add-hook 'today-invisible-calendar-hook 'calendar-mark-weekend))
