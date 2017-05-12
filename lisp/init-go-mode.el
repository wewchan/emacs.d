;; Set GO environment variable, add below sentences to .profile
;; export GOROOT=/usr/local/go
;; export GOPATH=$HOME/GOWS
;; export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
;; 3rd party extensions
;; Auto completion
;; gocode
;; go get -u github.com/nsf/gocode
;; godef
;; go get -u github.com/rogpeppe/godef
;; errcheck
;; go get -u github.com/kisielk/errcheck

(add-hook 'before-save-hook' gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c i") 'go-goto-imports)))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd  "M-.") 'godef-jump)))
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'init-go-mode)