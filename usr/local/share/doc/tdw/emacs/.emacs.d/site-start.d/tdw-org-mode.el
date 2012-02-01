(setq load-path (cons (expand-file-name "~/elisp/org-mode") load-path))
(require 'org-install)
;;; http://orgmode.org/worg/org-tutorials/orgtutorial_dto.html
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
