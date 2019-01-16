
(defun publish-and-count-word-for-easychair ()
  (interactive)
  (let ((filename
         (cond
           ((functionp 'org-export-as-ascii)
            (org-export-as-ascii 0))
           ((functionp 'org-ascii-export-to-ascii)
            (org-ascii-export-to-ascii)))))
    (shell-command (format "./count-word-easychair.sh %s" filename)))
  t)

(defun publish-and-count-word-for-cmt ()
  (interactive)
  (let ((filename
         (cond
           ((functionp 'org-export-as-ascii)
            (org-export-as-ascii 0))
           ((functionp 'org-ascii-export-to-ascii)
            (org-ascii-export-to-ascii)))))
    (shell-command (format "./count-word-cmt.sh %s" filename)))
  t)

(add-hook 'after-save-hook 'publish-and-count-word-for-easychair nil t)


  
