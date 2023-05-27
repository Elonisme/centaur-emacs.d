;;; init-find --- provide find custom-post-file.
;;; Commentary:
;;;

;;; Code:

(defun open-custom-post-file()
  "This functions dose finde custom-post.el."
  (interactive)
  (find-file "~/.emacs.d/custom-post.el"))
(global-set-key (kbd "<f5>") 'open-custom-post-file)

(provide 'init-find)
;;; init-find.el ends here
