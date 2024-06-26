;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'moe-light)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "/home/Yunoxa/drives/main/Other_Programs/emacs/org")
(setq org-startup-with-inline-images t)
(after! org
  (setq org-agenda-files '("~/drives/main/Other_Programs/emacs/org/agenda")))
  (setq org-todo-keywords
    '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))
  (setq org-log-into-drawer t)

(after! org-download
      (setq org-download-method 'directory)
      (setq org-download-image-dir (concat (file-name-sans-extension (buffer-file-name)) "-img"))
      (setq org-download-image-org-width 400)
      (setq org-download-link-format "[[file:%s]]\n"
        org-download-abbreviate-filename-function #'file-relative-name)
      (setq org-download-link-format-function #'org-download-link-format-function-default))

(setq org-roam-directory (file-truename "/home/Yunoxa/drives/main/Other_Programs/emacs/org/notes"))

(setq org-roam-capture-templates
     '(("p" "projects" plain "%?"
        :target (file+head "projects/%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n")
        :immediate-finish t
        :jump-to-captured t
        :unarrowed t)
       ("n" "notes" plain "%?"
        :target (file+head "notes/%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n")
        :immediate-finish t
        :jump-to-captured t
        :unarrowed t)
       ("g" "guitar song" plain (file "~/drives/main/Other_Programs/emacs/org/notes/templates/guitarsong.org")
        :target (file+head "projects/guitar/%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n")
        :immediate-finish t
        :jump-to-captured t
        :unarrowed t)
       ("m" "module" plain (file "~/drives/main/Other_Programs/emacs/org/notes/templates/module.org")
        :target (file+head "projects/university/modules/%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n")
        :immediate-finish t
        :jump-to-captured t
        :unarrowed t)
       ("o" "osu tournament match" plain (file "~/drives/main/Other_Programs/emacs/org/notes/templates/osu-match.org")
        :target (file+head "projects/osu/matches/i%<%Y%m%d%H%M%S>-${slug}.org"
                            "#+title: ${title}\n")
        :immediate-finish t
        :jump-to-captured t
        :unarrowed t)
       ))

(after! org-contrib
  (require 'org-checklist))

;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKA
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(use-package! tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))
  ;;(add-hook 'astro-mode-local-vars-hook #'lsp!))

(require 'lsp-mode)

;; Keybinds
(define-key evil-normal-state-map (kbd "SPC l f") 'lsp-format-buffer)

;; (setq elcord-mode t)

(add-hook 'vue-mode-hook #'lsp!)
(moe-dark)
