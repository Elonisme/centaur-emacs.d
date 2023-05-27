(use-package org-ai
  :ensure t
  :commands (org-ai-mode
             org-ai-global-mode)
  :init
  (add-hook 'org-mode-hook #'org-ai-mode) ; enable org-ai in org-mode
  (org-ai-global-mode) ; installs global keybindings on C-c M-a
  :config
  (org-ai-install-yasnippets)) ; if you are using yasnippet and want `ai` snippets

(load-file "~/.emacs.d/keys/chatai-key.el")
(require 'chatai-key)

(provide 'init-org-ai)
