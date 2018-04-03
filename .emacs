;;
;; dot.emacs for skel in /afs/.epitech.net/users/skel
;; 
;; Made by rocky luke
;; Login   <root@epitech.eu>
;; 
;; Started on  Thu Aug 28 09:39:55 2008 rocky luke
;; Last update Tue Apr  3 18:46:56 2018 
;;

;; Si Makefile vide, creer une makefile
(add-hook 'find-file-hook
          (lambda()
            (if (and
                 (string-match "\\Makefile$" (buffer-file-name))
                 (= (buffer-size) 0))
                (create-makefile))))

;; Si header vide, creer un header protege
(add-hook 'find-file-hook
          (lambda()
            (if (and
                 (string-match "\\.h$" (buffer-file-name))
                 (= (buffer-size) 0))
                (insert-protect-header
                 (goto-line 13)))))


(load "~/.emacs.d/std.el")
(load "~/.emacs.d/std_comment.el")
(load "~/.emacs.d/skeleton.el")
(load "~/.emacs.d/raccourcis.el")
(load "~/.emacs.d/utils.el")
(load "~/.emacs.d/yaml-mode.el")
(load "~/.emacs.d/yaml-mode.elc")
(load "~/.emacs.d/my.el")


(load "~/.emacs.d/puppet-mode-init.el")
(load "~/.emacs.d/puppet-mode.el")

(if (file-exists-p "~/.myemacs")
    (load-file "~/.myemacs"))
; EOF
