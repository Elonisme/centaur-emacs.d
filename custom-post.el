;;; custom-post.el --- my owe file
;;; Commentary:
;;; Add my want code in here

;;; Code:

(defun open-custom-post-file()
  (interactive)
  (find-file "~/.emacs.d/custom-post.el"))

(global-set-key (kbd "<f5>") 'open-custom-post-file)

(use-package rime
  :custom
  (default-input-method "rime"))

(use-package org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode) ; enable org-ai in org-mode
  (org-ai-global-mode) ; installs global keybindings on C-c M-a
  :config
  (org-ai-install-yasnippets)) ; if you are using yasnippet and want `ai` snippets

;; (use-package whisper
;;   :load-path "./whisper/whisper.el"
;;   :bind ("M-s-r" . whisper-run))

;; (use-package greader :ensure)
;; (require 'whisper)
;; (require 'org-ai-talk)

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  ;; If you're using a vertical completion framework, you might want a more informative completion interface
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  ;; If using org-roam-protocol
  (require 'org-roam-protocol))

(setq org-ai-openai-api-token "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")


;;; custom-post.el ends here
