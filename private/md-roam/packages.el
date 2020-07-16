;; Based partly on: https://org-roam.readthedocs.io/en/master/installation/
(defconst md-roam-packages
  '(
    (md-roam :location local)
    )
  )

(defun md-roam/init-md-roam ()
  (use-package md-roam
    :custom
    ;; The default
    (md-roam-file-extension-single "md") 
    :init
    ;; you need the following as of commit `5f24103`.
    (setq org-roam-title-sources '((mdtitle title mdheadline headline) (mdalias alias)))
    )
  )

