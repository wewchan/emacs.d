;;; package --- Summary
;;; Commentary:
;;; Code:
(autoload 'log4j-mode "log4j-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . log4j-mode))

;(use-package log4j-mode
;             :ensure t
;             :disabled t
;             :init
;             (add-hook #'log4j-mode-hook #'view-mode)
;             (add-hook #'log4j-mode-hook #'read-only-mode)
;             ;(add-hook #'log4j-mode-hook 'eos/turn-on-hl-line)
;             )
(provide 'init-log4j-mode)
;;; init-log4j-mode.el ends here
