(if (equal custom-enabled-themes '(solarized-dark))
    ;; Solarized dark
    (progn
      (require 'dired+)
      ;; Solarized palette
      (let ((s-base03    "#002b36")
            (s-base02    "#073642")
            ;; emphasized content
            (s-base01    "#586e75")
            ;; primary content
            (s-base00    "#657b83")
            (s-base0     "#839496")
            ;; comments
            (s-base1     "#93a1a1")
            ;; background highlight light
            (s-base2     "#eee8d5")
            ;; background light
            (s-base3     "#fdf6e3")
            
            ;; Solarized accented colors
            (yellow    "#b58900")
            (orange    "#cb4b16")
            (red       "#dc322f")
            (magenta   "#d33682")
            (violet    "#6c71c4")
            (blue      "#268bd2")
            (cyan      "#2aa198")
            (green     "#859900")
            
            ;; Darker and lighter accented colors
            ;; Only use these in exceptional circumstances!
            (yellow-d  "#7B6000")
            (yellow-l  "#DEB542")
            (orange-d  "#8B2C02")
            (orange-l  "#F2804F")
            (red-d     "#990A1B")
            (red-l     "#FF6E64")
            (magenta-d "#93115C")
            (magenta-l "#F771AC")
            (violet-d  "#3F4D91")
            (violet-l  "#9EA0E5")
            (blue-d    "#00629D")
            (blue-l    "#69B7F0")
            (cyan-d    "#00736F")
            (cyan-l    "#69CABF")
            (green-d   "#546E00")
            (green-l   "#B4C342"))
        
        ;;; dired+
        ;; General
        (set-face-attribute 'diredp-dir-heading nil :background nil :foreground yellow)
        (set-face-attribute 'diredp-dir-priv nil :background nil :foreground yellow)
        (set-face-foreground 'diredp-file-name green-l)
        (set-face-foreground 'diredp-file-suffix cyan)
        (set-face-foreground 'diredp-date-time blue)
        (set-face-foreground 'diredp-number blue)
        ;; Privileges
        (set-face-background 'diredp-read-priv nil)
        (set-face-background 'diredp-write-priv nil)
        (set-face-background 'diredp-exec-priv nil)
        (set-face-background 'diredp-other-priv nil)
        (set-face-background 'diredp-no-priv nil)
        (set-face-background 'diredp-rare-priv nil)
        (set-face-background 'diredp-link-priv nil)
        ;; Marks
        (set-face-attribute 'diredp-deletion nil :background red :foreground green-l)
        (set-face-foreground 'diredp-deletion-file-name red)
        (set-face-foreground 'diredp-mode-line-flagged red)
        (set-face-attribute 'diredp-flag-mark nil :background green-l :foreground s-base03)
        (set-face-attribute 'diredp-flag-mark-line nil :background s-base01 :foreground s-base03)
        (set-face-foreground 'diredp-mode-line-marked green-l)
        
;;   `diredp-compressed-file-suffix'
;;   `diredp-display-msg',
;;   `diredp-executable-tag'
;;   `diredp-get-file-or-dir-name',
;;   `diredp-ignored-file-name'
;;   `diredp-symlink',
        
        ;;; ace-window
        (set-face-foreground 'aw-leading-char-face red)
        (set-face-background 'aw-background-face s-base03)
        (set-face-foreground 'aw-background-face s-base01))))


;(setq solarized-distinct-fringe-background t)
;(setq solarized-high-contrast-mode-line t)
;(setq x-underline-at-descent-line t)


(provide 'init-solarized-theme)
