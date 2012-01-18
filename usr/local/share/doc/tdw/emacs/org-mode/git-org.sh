#!/bin/bash
BUILD_DIR="${HOME}/Build/Emacs"
mkdir --parent --verbose ${BUILD_DIR}
cd ${BUILD_DIR}
git clone git://orgmode.org/org-mode.git
cd org-mode && make && make doc
exit

      #+END_SRC

   4. Add to your Emacs-init file:
     #+BEGIN_SRC Emacs-lisp
       (setq load-path (cons "~/Build/Emacs/org-mode/lisp" load-path))
       (setq load-path (cons "~/Build/Emacs/org-mode/contrib/lisp"
       load-path))

       (require 'org-install)
    #+END_SRC
    *Important!* If you run the regular version of org-mode, you have
    :(require 'org) 
    in your config-file. This line *must* be removed, if you use
    :(require 'org-install)

   5. To keep up-to-date with org-mode in the future do:
      #+BEGIN_SRC bash
       cd ~/Build/Emacs/org-mode
       git pull && make clean && make && make doc
      #+END_SRC

   6. Reload org mode, using: *M-x org-reload*, or restart Emacs.
   
   To see what version of org-mode you are running: *M-x org-version*
