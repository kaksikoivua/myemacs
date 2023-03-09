;;; early-init.el --- Personal configuration file

;;; Commentary:

;;; Code:

(defvar my/default-file-name-handler-alist file-name-handler-alist)
(defvar my/default-gc-cons-threshold gc-cons-threshold)
(setq file-name-handler-alist nil
      gc-cons-threshold most-positive-fixnum
      inhibit-message t)
(add-hook 'emacs-startup-hook (lambda ()
                                (setq file-name-handler-alist
                                      my/default-file-name-handler-alist
                                      gc-cons-threshold
                                      my/default-gc-cons-threshold
                                      inhibit-message nil)))

(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(provide 'early-init)

;;; early-init.el ends here
