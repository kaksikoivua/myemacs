;;; init.el --- Personal configuration file

;;; Commentary:

;;; Code:

(eval-and-compile
  (defvar my/config (locate-user-emacs-file "config")))
(eval-when-compile
  (let* ((config-org (concat my/config ".org"))
         (config-el (concat my/config ".el")))
    (when (and (file-exists-p config-org)
               (file-newer-than-file-p config-org config-el))
      (require 'ob-tangle)
      (org-babel-tangle-file config-org
                             config-el
                             (rx string-start
                                 (or "emacs-lisp" "elisp")
                                 string-end))
      (byte-compile-file config-el))))
(load my/config t)

(provide 'init)

;;; init.el ends here
