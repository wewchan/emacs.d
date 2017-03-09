(add-hook 'before-save-hook' gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                         local-set-key (kbd "C-cC-r")'go-remove-unused-imports))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c i") 'go-goto-imports)))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd \"M-.\") 'godef-jump)))
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'init-go-mode)