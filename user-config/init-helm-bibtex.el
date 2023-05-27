(setq zot_bib '("~/Nutstore Files/zotero-lib/zotero-bib/reference.bib") ; Zotero 用 Better BibTeX 导出的 .bib 文件. 可以是多个文件
      zot_pdf "~/Nutstore Files/zotero-lib" ; Zotero 的 ZotFile 同步文件夹
      org_refs "~/org-roam" ) ; 自定义的 org-roam 文献笔记目录. 我的 org-roam 根目录是 ~/repos/notes

(use-package helm-bibtex ; 这里也可以用 ivy-bibtex 替换 helm-bibtex
  :ensure t
  :custom
  (bibtex-completion-notes-path org_refs)
  (bibtex-completion-bibliography zot_bib)
  (bibtex-completion-library-path zot_pdf))

(provide 'init-helm-bibtex)
