(org-babel-do-load-languages
 'org-babel-load-languages
 '((ditaa . t) ; this line activates ditaa
   (plantuml . t) ; this line activates plantuml
   (python . t)
   (perl . t)
   (ruby . t)
   (R . t)
   (sh . t)
   (gnuplot . t)
   (org . t)
   (latex . t)
   (java . t)
   (emacs-lisp . t)
   (calc . t)
   (sql . t)
   (dot . t) ; this line activates graphviz(dot)
   ))
;; org mode do not prompt me
(setq org-confirm-babel-evaluate nil)
(setq org-src-fontify-natively t)

;; for preview images
(add-hook 'org-babel-after-execute-hook 'bh/display-inline-images 'append)
;; Make babel results blocks lowercase
(setq org-babel-results-keyword "results")
(defun bh/display-inline-images ()
  (condition-case nil
      (org-display-inline-images)
    (error nil)))

(provide 'init-babel)