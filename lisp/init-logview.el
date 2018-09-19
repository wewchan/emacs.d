;;; package --- Summary
;;; Commentary:
;;; Code:
(autoload 'logview-mode "logview-mode" "Major mode for viewing log files." t)
(add-to-list 'auto-mode-alist '("\\.log\\'" . logview-mode))

;(use-package log4j-mode
;             :ensure t
;             :disabled t
;             :init
;             (add-hook #'log4j-mode-hook #'view-mode)
;             (add-hook #'log4j-mode-hook #'read-only-mode)
;             ;(add-hook #'log4j-mode-hook 'eos/turn-on-hl-line)
;             )
(provide 'init-logview)
;;; init-logview.el ends here
