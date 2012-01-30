;; EMMS
(add-to-list 'load-path "~/elisp/emms/")
(condition-case nil
    (require 'emms-setup)
  (error nil))
(condition-case nil
    (emms-standard)
  (error nil))
(condition-case nil
    (emms-default-players)
  (error nil))
