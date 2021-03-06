;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "WEI, Jiahan"
      user-mail-address "weijiahan@gmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "IBM Plex Mono SemiBold" :size 20))
(unless (find-font doom-font)
  (setq doom-font (font-spec :family "Ubuntu Mono" :size 20)))

(setq doom-unicode-font (font-spec :name "DejaVu Sans Mono" :size 20))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-solarized-dark)
;; (setq doom-themes-padded-modeline t)
;; (setq doom-solarized-dark-brighter-comments t)
;; (setq doom-solarized-dark-brighter-modeline t)
;; (setq doom-solarized-dark-brighter-text t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/Documents/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type `nil)

(setq scroll-margin 7)

;; (setq dash-docs-docsets-path (expand-file-name "/home/weijh/.local/share/Zeal/Zeal/docsets"))

(setq +lookup-open-url-fn #'eww)

;; ---------highlight-thing------------
(setq highlight-thing-what-thing 'symbol)
(setq highlight-thing-delay-seconds 0.5)
(setq highlight-thing-limit-to-defun t)
(setq highlight-thing-case-sensitive-p t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.

(load! "lisp/chinese.el")
