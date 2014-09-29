;; Colorise en Rouge les espace
(setq show-trailing-whitespace t)
(setq-default show-trailing-whitespace t)

; Affiche l'heure au format 24h
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

; surlignage d'une région sélectionnée
(transient-mark-mode t)

; Activer la coloration syntaxique
(global-font-lock-mode t)

; Supprime tous les espaces en fin de ligne
(autoload 'nuke-trailing-whitespace "whitespace" nil t)

;; Affiche le numéro de ligne et de colonne
(column-number-mode t)
(line-number-mode t)