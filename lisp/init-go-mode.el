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
;; goguru
;; go get golang.org/x/tools/cmd/guru
;; go build golang.org/x/tools/cmd/guru
;; mv guru $(go env GOROOT)/bin ​(for example)
;; guru -help
(defun set-go-environment-variable ()
  "Set go workspace directory"
  (interactive)
  (message
   (shell-command-to-string "mkdir -p $GOPATH")
   )
  )

(defun set-go-toolchain ()
  "Set go toolchains"
  (interactive)
  (message
   (shell-command-to-string "go get -u github.com/nsf/gocode")
   (shell-command-to-string "go get -u github.com/rogpeppe/godef")
   (shell-command-to-string "go get -u github.com/kisielk/errcheck")
   (shell-command-to-string "go get golang.org/x/tools/cmd/guru")
   (shell-command-to-string "go build golang.org/x/tools/cmd/guru")
   (shell-command-to-string "mv guru $GOROOT/bin")
   (shell-command-to-string "guru --help")
   )
  )

(add-hook 'before-save-hook' gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "C-c i") 'go-goto-imports)))

(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd  "M-.") 'godef-jump)))
(add-hook 'go-mode-hook 'go-eldoc-setup)
(add-hook 'go-mode-hook #'go-guru-hl-identifier-mode)
(provide 'init-go-mode)