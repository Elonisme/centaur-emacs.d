(use-package org-noter
  :ensure t
  :custom
  (org-noter-notes-search-path '("~/Documents/Notes")) ;; 默认笔记路径
  (org-noter-auto-save-last-location t) ;; 自动保存上次阅读位置
  (org-noter-highlight-selected-text t)
  (org-noter-max-short-selected-text-length 20) ;; 默认为 80
  (org-noter-default-heading-title "第 $p$ 页的笔记") ;; 默认短标题格式
  :bind
  (("C-c n n" . org-noter) ;; 与 org-roam 配合
   :map org-noter-doc-mode-map ;; 加入左手键位
   ("e" . org-noter-insert-note)
   ("M-e" . org-noter-insert-precise-note)))

(provide 'init-org-noter)
