(defun open-custom-post-file()
  (interactive)
  (find-file "~/.emacs.d/custom-post.el"))

(global-set-key (kbd "<f5>") 'open-custom-post-file)
(global-set-key (kbd "C-c SPC") 'org-mark-ring-goto)
(global-set-key (kbd "C-c C-a r") 'restart-emacs)

(provide 'init-find)
