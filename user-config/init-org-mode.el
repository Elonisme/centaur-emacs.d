(setq org-format-latex-options
      '(:foreground default
        :background default
        :scale 1.8
        :html-foreground "Black"
        :html-background "Transparent"
        :html-scale 1.0
        :matchers ("begin" "$1" "$" "$$" "\\(" "\\["))
      )
(add-hook 'org-mode-hook #'org-cdlatex-mode)

;; (Setq org-latex-pdf-process
;;       '("xelatex -interaction nonstopmode -output-directory %o %f"
;;         "xelatex -interaction nonstopmode -output-directory %o %f"
;;         "xelatex -interaction nonstopmode -output-directory %o %f")
;;       )

(setq org-highlight-latex-and-related '(native latex entities))
(setq org-pretty-entities t)
(setq org-pretty-entities-include-sub-superscripts nil)

(setq  org-latex-pdf-process '("tectonic -Z shell-escape %f"))
(add-to-list 'org-latex-packages-alist '("" "ctex"))
(add-to-list 'org-latex-packages-alist '("" "seqsplit"))
(setq org-latex-listings 'minted)
(add-to-list 'org-latex-packages-alist '("" "minted"))

(provide 'init-org-mode)
;;; init-org-mode.el ends here
