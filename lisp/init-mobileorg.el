;; This is for setup mobileOrg.
;; Using Jianguo yun as backend of sync

(setq org-directory "/home/velly/jgyun/Org/sync")
(setq org-mobile-directory "/home/velly/jgyun/Org")
(setq org-mobile-inbox-for-pull "/home/velly/jgyun/Org/index.org")
(setq org-mobile-files (list "/home/velly/jgyun/Org/sync/study.org"))
(defcustom org-mobile-checksum-binary (or (executable-find "/usr/bin/md5sum"))
  "Executable used for computing checksums of agenda files."
  :group 'org-mode'
  :type 'string)

(provide 'init-mobileorg)



