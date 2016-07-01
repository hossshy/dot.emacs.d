(use-package japanese-holidays)
(use-package calendar
  :defer t
  :config
  (setq calendar-holidays (append japanese-holidays))
  (setq calendar-mark-holidays-flag t)
  (setq calendar-weekend-marker 'diary)
  (add-hook 'today-visible-calendar-hook 'calendar-mark-holidays)
  (add-hook 'today-invisible-calendar-hook 'calendar-mark-holidays))
