;; Lancer le man
(defun vectra-man-on-word ()
  "Appelle le man sur le mot pointe par le curseur"
  (interactive)
  (manual-entry (current-word)))
 
;; Suppression des espaces en fin de ligne a l'enregistrement
(add-hook 'c++-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook   'c-mode-hook '(lambda ()
  (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
 
;; Laisser le curseur en place lors d'un defilement par pages.
;; Par defaut, Emacs place le curseur en debut ou fin d'ecran
;; selon le sens du defilement.
(setq scroll-preserve-screen-position t)
 
;; Complette automatiquement ce que vous tapez dans le mini-buffer
(icomplete-mode 1)
 

 
;; parenthese em couleur
(custom-set-variables
 '(show-paren-mode t))
(custom-set-faces)
 
;; yes > y | no > n
(fset 'yes-or-no-p 'y-or-n-p)
 
;; Affiche le numero de ligne et de colonne
(column-number-mode t)
(line-number-mode t)
 
;; Enlever le message au demarrage
(setq inhibit-startup-message t)
  
;; Affiche l'heure au format 24h
(setq display-time-24hr-format t)
(setq displat-time-day-and-date t)
 
;; Sauvegarder la session
(desktop-load-default)
(desktop-read)
 
;; ido mode
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
