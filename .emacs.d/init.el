(require 'cl)
;;(fset 'yes-or-no-p 'y-or-n-p)
(setq inhibit-startup-screen t)

(when (> emacs-major-version 23)
  (defvar user-emacs-directory "~/.emacs.d"))

;; add to load-path
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

;;
(add-to-load-path "elisp" "conf" "public_repos")

;; http://coderepos.org/share/browser/lang/elisp/init-loader/init-loader.el
(require 'init-loader')
(init-loader-load "~/.emacs.d/conf")

(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0))

(unless (eq window-system 'ns)
  (menu-bar-mode 0))