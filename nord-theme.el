;;; nord-theme.el --- An arctic, north-bluish clean and elegant Emacs theme.

;; title      Nord Emacs
;; project    nord-emacs
;; version
;; repository https://github.com/arcticicestudio/nord-emacs
;; author     Arctic Ice Studio
;; email      development@arcticicestudio.com
;; copyright  Copyright (C) 2017
;;
;; [References]
;; Awesome Emacs
;;   https://github.com/emacs-tw/awesome-emacs
;; GNU ELPA
;;   http://elpa.gnu.org
;; GNU Emacs
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Creating-Custom-Themes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Standard-Faces.html
;;   https://www.gnu.org/software/emacs/manual/html_node/emacs/Face-Customization.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Face-Attributes.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Faces-for-Font-Lock.html
;;   https://www.gnu.org/software/emacs/manual/html_node/elisp/Display-Feature-Testing.html
;; marmelade repo
;;   https://marmalade-repo.org
;; MELPA
;;   https://melpa.milkbox.net
(unless (>= emacs-major-version 24)
  (error "Nord Emacs theme requires Emacs 24 or later!"))

(deftheme nord "An arctic, north-bluish clean and elegant Emacs theme")

;;;; Color Constants
(let ((class '((class color) (min-colors 89)))
  (nord0 (if (display-graphic-p) "#2E3440" nil))
  (nord1 (if (display-graphic-p) "#3B4252" "black"))
  (nord2 (if (display-graphic-p) "#434C5E" "#434C5E"))
  (nord3 (if (display-graphic-p) "#4C566A" "brightblack"))
  (nord4 (if (display-graphic-p) "#D8DEE9" "#D8DEE9"))
  (nord5 (if (display-graphic-p) "#E5E9F0" "white"))
  (nord6 (if (display-graphic-p) "#ECEFF4" "brightwhite"))
  (nord7 (if (display-graphic-p) "#8FBCBB" "cyan"))
  (nord8 (if (display-graphic-p) "#88C0D0" "brightcyan"))
  (nord9 (if (display-graphic-p) "#81A1C1" "blue"))
  (nord10 (if (display-graphic-p) "#5E81AC" "brightblue"))
  (nord11 (if (display-graphic-p) "#BF616A" "red"))
  (nord12 (if (display-graphic-p) "#D08770" "brightyellow"))
  (nord13 (if (display-graphic-p) "#EBCB8B" "yellow"))
  (nord14 (if (display-graphic-p) "#A3BE8C" "green"))
  (nord15 (if (display-graphic-p) "#B48EAD" "magenta"))
  (nord-annotation (if (display-graphic-p) "#D08770" "brightyellow"))
  (nord-attribute (if (display-graphic-p) "#8FBCBB" "cyan"))
  (nord-class (if (display-graphic-p) "#8FBCBB" "cyan"))
  (nord-comment (if (display-graphic-p) "#4C566A" "brightblack"))
  (nord-escape (if (display-graphic-p) "#D08770" "brightyellow"))
  (nord-method (if (display-graphic-p) "#88C0D0" "brightcyan"))
  (nord-keyword (if (display-graphic-p) "#81A1C1" "blue"))
  (nord-numeric (if (display-graphic-p) "#B48EAD" "magenta"))
  (nord-operator (if (display-graphic-p) "#81A1C1" "blue"))
  (nord-preprocessor (if (display-graphic-p) "#5E81AC" "brightblue"))
  (nord-punctuation (if (display-graphic-p) "#D8DEE9" "#D8DEE9"))
  (nord-regexp (if (display-graphic-p) "#EBCB8B" "yellow"))
  (nord-string (if (display-graphic-p) "#A3BE8C" "green"))
  (nord-tag (if (display-graphic-p) "#81A1C1" "blue"))
  (nord-variable (if (display-graphic-p) "#D8DEE9" "#D8DEE9")))

;;;; +------------+
;;;; + Core Faces +
;;;; +------------+
  (custom-theme-set-faces
    'nord
    ;; +--- Base ---+
    `(bold ((,class (:weight bold))))
    `(bold-italic ((,class (:weight bold :slant italic))))
    `(default ((,class (:foreground ,nord4 :background ,nord0))))
    `(error ((,class (:foreground ,nord11 :weight bold))))
    `(escape-glyph ((,class (:foreground ,nord12))))
    `(font-lock-builtin-face ((,class (:foreground ,nord9))))
    `(font-lock-comment-face ((,class (:foreground ,nord3))))
    `(font-lock-comment-delimiter-face ((,class (:foreground ,nord3))))
    `(font-lock-constant-face ((,class (:foreground ,nord9))))
    `(font-lock-doc-face ((,class (:foreground ,nord3))))
    `(font-lock-function-name-face ((,class (:foreground ,nord8))))
    `(font-lock-keyword-face ((,class (:foreground ,nord9))))
    `(font-lock-negation-char-face ((,class (:foreground ,nord9))))
    `(font-lock-preprocessor-face ((,class (:foreground ,nord10 :weight bold))))
    `(font-lock-reference-face ((,class (:foreground ,nord9))))
    `(font-lock-regexp-grouping-backslash ((,class (:foreground ,nord13))))
    `(font-lock-regexp-grouping-construct ((,class (:foreground ,nord13))))
    `(font-lock-string-face ((,class (:foreground ,nord14))))
    `(font-lock-type-face ((,class (:foreground ,nord7))))
    `(font-lock-variable-name-face ((,class (:foreground ,nord4))))
    `(font-lock-warning-face ((,class (:foreground ,nord13))))
    `(italic ((,class (:slant italic))))
    `(shadow ((,class (:foreground ,nord3))))
    `(underline ((,class (:underline t))))
    `(warning ((,class (:foreground ,nord13 :weight bold))))

    ;; +--- Syntax ---+
    ;; > C
    `(c-annotation-face ((,class (:foreground ,nord-annotation))))

    ;; > diff
    `(diff-added ((,class (:foreground ,nord14))))
    `(diff-changed ((,class (:foreground ,nord13))))
    `(diff-context ((,class (:inherit default))))
    `(diff-file-header ((,class (:foreground ,nord8))))
    `(diff-function ((,class (:foreground ,nord7))))
    `(diff-header ((,class (:foreground ,nord9 :weight bold))))
    `(diff-hunk-header ((,class (:foreground ,nord9 :background ,nord0))))
    `(diff-indicator-added ((,class (:foreground ,nord14))))
    `(diff-indicator-changed ((,class (:foreground ,nord13))))
    `(diff-indicator-removed ((,class (:foreground ,nord11))))
    `(diff-nonexistent ((,class (:foreground ,nord11))))
    `(diff-refine-added ((,class (:foreground ,nord14))))
    `(diff-refine-changed ((,class (:foreground ,nord13))))
    `(diff-refine-removed ((,class (:foreground ,nord11))))
    `(diff-removed ((,class (:foreground ,nord11))))

    ;; +--- UI ---+
    `(border ((,class (:foreground ,nord4))))
    `(buffer-menu-buffer ((,class (:foreground ,nord4 :weight bold))))
    `(button ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(completions-annotations ((,class (:foreground ,nord9))))
    `(completions-common-part ((,class (:foreground ,nord8 :weight bold))))
    `(completions-first-difference ((,class (:foreground ,nord11))))
    `(custom-button ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-mouse ((,class (:background ,nord4 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-pressed ((,class (:background ,nord6 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-pressed-unraised ((,class (:background ,nord4 :foreground ,nord0 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-button-unraised ((,class (:background ,nord0 :foreground ,nord8 :box (:line-width 2 :color ,nord4 :style sunken-button)))))
    `(custom-changed ((,class (:foreground ,nord13))))
    `(custom-comment ((,class (:foreground ,nord3))))
    `(custom-comment-tag ((,class (:foreground ,nord7))))
    `(custom-documentation ((,class (:foreground ,nord4))))
    `(custom-group-tag ((,class (:foreground ,nord8 :weight bold))))
    `(custom-group-tag-1 ((,class (:foreground ,nord8 :weight bold))))
    `(custom-invalid ((,class (:foreground ,nord11))))
    `(custom-modified ((,class (:foreground ,nord13))))
    `(custom-rogue ((,class (:foreground ,nord12 :background ,nord2))))
    `(custom-saved ((,class (:foreground ,nord14))))
    `(custom-set ((,class (:foreground ,nord8))))
    `(custom-state ((,class (:foreground ,nord14))))
    `(custom-themed ((,class (:foreground ,nord8 :background ,nord2))))
    `(cursor ((,class (:foreground ,nord4))))
    `(fringe ((,class (:foreground ,nord4 :background ,nord0))))
    `(file-name-shadow ((,class (:inherit shadow))))
    `(header-line ((,class (:foreground ,nord4 :background ,nord2))))
    `(help-argument-name ((,class (:foreground ,nord8))))
    `(highlight ((,class (:foreground ,nord8 :background ,nord2))))
    `(hl-line ((,class (:background ,nord1))))
    `(info-menu-star ((,class (:foreground ,nord9))))
    `(isearch ((,class (:foreground ,nord0 :background ,nord8))))
    `(isearch-fail ((,class (:foreground ,nord11))))
    `(link ((,class (:underline t))))
    `(link-visited ((,class (:underline t))))
    `(linum ((,class (:foreground ,nord3 :background ,nord0))))
    `(linum-relative-current-face ((,class (:foreground ,nord3 :background ,nord0))))
    `(match ((,class (:inherit isearch))))
    `(message-cited-text ((,class (:foreground ,nord4))))
    `(message-header-cc ((,class (:foreground ,nord9))))
    `(message-header-name ((,class (:foreground ,nord7))))
    `(message-header-newsgroup ((,class (:foreground ,nord14))))
    `(message-header-other ((,class (:foreground ,nord4))))
    `(message-header-subject ((,class (:foreground ,nord8))))
    `(message-header-to ((,class (:foreground ,nord9))))
    `(message-header-xheader ((,class (:foreground ,nord13))))
    `(message-mml ((,class (:foreground ,nord10))))
    `(message-separator ((,class (:inherit shadow))))
    `(minibuffer-prompt ((,class (:foreground ,nord8 :weight bold))))
    `(mm-command-output ((,class (:foreground ,nord8))))
    `(mode-line ((,class (:foreground ,nord4 :background ,nord2))))
    `(mode-line-buffer-id ((,class (:weight bold))))
    `(mode-line-highlight ((,class (:inherit highlight))))
    `(mode-line-inactive ((,class (:foreground ,nord3 :background ,nord1))))
    `(next-error ((,class (:inherit error))))
    `(nobreak-space ((,class (:foreground ,nord3))))
    `(outline-1 ((,class (:foreground ,nord8 :weight bold))))
    `(outline-2 ((,class (:inherit outline-1))))
    `(outline-3 ((,class (:inherit outline-1))))
    `(outline-4 ((,class (:inherit outline-1))))
    `(outline-5 ((,class (:inherit outline-1))))
    `(outline-6 ((,class (:inherit outline-1))))
    `(outline-7 ((,class (:inherit outline-1))))
    `(outline-8 ((,class (:inherit outline-1))))
    `(package-description ((,class (:foreground ,nord4))))
    `(package-help-section-name ((,class (:foreground ,nord8 :weight bold))))
    `(package-name ((,class (:foreground ,nord8))))
    `(package-status-available ((,class (:foreground ,nord7))))
    `(package-status-avail-obso ((,class (:foreground ,nord7 :slant italic))))
    `(package-status-built-in ((,class (:foreground ,nord9))))
    `(package-status-dependency ((,class (:foreground ,nord8 :slant italic))))
    `(package-status-disabled ((,class (:foreground ,nord3))))
    `(package-status-external ((,class (:foreground ,nord12 :slant italic))))
    `(package-status-held ((,class (:foreground ,nord4 :weight bold))))
    `(package-status-new ((,class (:foreground ,nord14))))
    `(package-status-incompat ((,class (:foreground ,nord11))))
    `(package-status-installed ((,class (:foreground ,nord7 :weight bold))))
    `(package-status-unsigned ((,class (:underline ,nord13))))
    `(query-replace ((,class (:foreground ,nord8 :background ,nord2))))
    `(region ((,class (:background ,nord2))))
    `(scroll-bar ((,class (:background ,nord3))))
    `(secondary-selection ((,class (:background ,nord2))))
    `(show-paren-match-face ((,class (:foreground ,nord0 :background ,nord8))))
    `(show-paren-mismatch-face ((,class (:background ,nord11))))
    `(success ((,class (:foreground ,nord14))))
    `(term ((,class (:foreground ,nord4 :background ,nord0))))
    `(term-color-black ((,class (:foreground ,nord1 :background ,nord1))))
    `(term-color-white ((,class (:foreground ,nord5 :background ,nord5))))
    `(term-color-cyan ((,class (:foreground ,nord7 :background ,nord7))))
    `(term-color-blue ((,class (:foreground ,nord8 :background ,nord8))))
    `(term-color-red ((,class (:foreground ,nord11 :background ,nord11))))
    `(term-color-yellow ((,class (:foreground ,nord13 :background ,nord13))))
    `(term-color-green ((,class (:foreground ,nord14 :background ,nord14))))
    `(term-color-magenta ((,class (:foreground ,nord15 :background ,nord15))))
    `(tool-bar ((,class (:foreground ,nord4 :background ,nord3))))
    `(tooltip ((,class (:foreground ,nord0 :background ,nord4))))
    `(trailing-whitespace ((,class (:foreground ,nord3))))
    `(tty-menu-disabled-face ((,class (:foreground ,nord1))))
    `(tty-menu-enabled-face ((,class (:background ,nord2 foreground ,nord4))))
    `(tty-menu-selected-face ((,class (:foreground ,nord8 :underline t))))
    `(undo-tree-visualizer-current-face ((,class (:foreground ,nord8))))
    `(undo-tree-visualizer-default-face ((,class (:foreground ,nord4))))
    `(undo-tree-visualizer-unmodified-face ((,class (:foreground ,nord4))))
    `(undo-tree-visualizer-register-face ((,class (:foreground ,nord9))))
    `(vc-conflict-state ((,class (:foreground ,nord12))))
    `(vc-edited-state ((,class (:foreground ,nord13))))
    `(vc-locally-added-state ((,class (:underline ,nord14))))
    `(vc-locked-state ((,class (:foreground ,nord10))))
    `(vc-missing-state ((,class (:foreground ,nord11))))
    `(vc-needs-update-state ((,class (:foreground ,nord12))))
    `(vc-removed-state ((,class (:foreground ,nord11))))
    `(vc-state-base ((,class (:foreground ,nord4))))
    `(vc-up-to-date-state ((,class (:foreground ,nord8))))
    `(vertical-border ((,class (:foreground ,nord2))))
    `(widget-button-pressed ((,class (:foreground ,nord9 :background ,nord1))))
    `(widget-documentation ((,class (:foreground ,nord4))))
    `(widget-field ((,class (:background ,nord2 :foreground ,nord4))))
    `(widget-single-line-field ((,class (:background ,nord2 :foreground ,nord4))))
    `(whitespace-big-indent ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-empty ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-hspace ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-indentation ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-line ((,class (:background ,nord0))))
    `(whitespace-newline ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space-after-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-space-before-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-tab ((,class (:foreground ,nord3 :background ,nord0))))
    `(whitespace-trailing ((,class (:inherit trailing-whitespace))))
    `(window-divider ((,class (:background ,nord3))))
    `(window-divider-first-pixel ((,class (:background ,nord3))))
    `(window-divider-last-pixel ((,class (:background ,nord3))))

    ;;;; +-----------------+
    ;;;; + Package Support +
    ;;;; +-----------------+
    ;; +--- Syntax ---+
    ;; > Elixir
    `(elixir-attribute-face ((,class (:foreground ,nord-annotation))))
    `(elixir-atom-face ((,class (:foreground ,nord4 :weight bold))))

    ;; > Enhanced Ruby
    `(enh-ruby-heredoc-delimiter-face ((,class (:foreground ,nord14))))
    `(enh-ruby-op-face ((,class (:foreground ,nord9))))
    `(enh-ruby-regexp-delimiter-face ((,class (:foreground ,nord13))))
    `(enh-ruby-regexp-face ((,class (:foreground ,nord13))))
    `(enh-ruby-string-delimiter-face ((,class (:foreground ,nord14))))
    `(erm-syn-errline ((,class (:foreground ,nord11 :underline t))))
    `(erm-syn-warnline ((,class (:foreground ,nord13 :underline t))))

    ;; > Java Development Environment for Emacs
    `(jdee-db-active-breakpoint-face ((,class (:background ,nord2 :weight bold))))
    `(jdee-bug-breakpoint-cursor ((,class (:background ,nord2))))
    `(jdee-db-requested-breakpoint-face ((,class (:foreground ,nord13 :background ,nord2 :weight bold))))
    `(jdee-db-spec-breakpoint-face ((,class (:foreground ,nord14 :background ,nord2 :weight bold))))
    `(jdee-font-lock-api-face ((,class (:foreground ,nord4))))
    `(jdee-font-lock-code-face ((,class (:slant italic))))
    `(jdee-font-lock-constant-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-constructor-face ((,class (:foreground ,nord-method))))
    `(jdee-font-lock-doc-tag-face ((,class (:foreground ,nord7))))
    `(jdee-font-lock-link-face ((,class (:underline t))))
    `(jdee-font-lock-modifier-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-number-face ((,class (:foreground ,nord-numeric))))
    `(jdee-font-lock-operator-fac ((,class (:foreground ,nord-operator))))
    `(jdee-font-lock-package-face ((,class (:foreground ,nord-class))))
    `(jdee-font-lock-pre-face ((,class (:foreground ,nord-comment :slant italic))))
    `(jdee-font-lock-private-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-public-face ((,class (:foreground ,nord-keyword))))
    `(jdee-font-lock-variable-face ((,class (:foreground ,nord-variable))))

    ;; > JavaScript 2
    `(js2-function-call ((,class (:foreground ,nord8))))
    `(js2-private-function-call ((,class (:foreground ,nord8))))
    `(js2-jsdoc-html-tag-delimiter ((,class (:foreground ,nord6))))
    `(js2-jsdoc-html-tag-name ((,class (:foreground ,nord9))))
    `(js2-external-variable ((,class (:foreground ,nord4))))
    `(js2-function-param ((,class (:foreground ,nord4))))
    `(js2-jsdoc-value ((,class (:foreground ,nord3))))
    `(js2-jsdoc-tag ((,class (:foreground ,nord7))))
    `(js2-jsdoc-type ((,class (:foreground ,nord7))))
    `(js2-private-member ((,class (:foreground ,nord4))))
    `(js2-object-property ((,class (:foreground ,nord4))))
    `(js2-error ((,class (:foreground ,nord11))))
    `(js2-warning ((,class (:foreground ,nord13))))
    `(js2-instance-member ((,class (:foreground ,nord4))))

    ;; > JavaScript 3
    `(js3-error-face ((,class (:foreground ,nord11))))
    `(js3-external-variable-face ((,class (:foreground ,nord4))))
    `(js3-function-param-face ((,class (:foreground ,nord4))))
    `(js3-instance-member-face ((,class (:foreground ,nord4))))
    `(js3-jsdoc-html-tag-delimiter-face ((,class (:foreground ,nord6))))
    `(js3-jsdoc-html-tag-name-face ((,class (:foreground ,nord9))))
    `(js3-jsdoc-tag-face ((,class (:foreground ,nord9))))
    `(js3-jsdoc-type-face ((,class (:foreground ,nord7))))
    `(js3-jsdoc-value-face ((,class (:foreground ,nord4))))
    `(js3-magic-paren-face ((,class (:inherit show-paren-match-face))))
    `(js3-private-function-call-face ((,class (:foreground ,nord8))))
    `(js3-private-member-face ((,class (:foreground ,nord4))))
    `(js3-warning-face ((,class (:foreground ,nord13))))

    ;; > Markdown
    `(markdown-blockquote-face ((,class (:foreground ,nord3))))
    `(markdown-bold-face ((,class (:inherit bold))))
    `(markdown-header-face-1 ((,class (:foreground ,nord8))))
    `(markdown-header-face-2 ((,class (:foreground ,nord8))))
    `(markdown-header-face-3 ((,class (:foreground ,nord8))))
    `(markdown-header-face-4 ((,class (:foreground ,nord8))))
    `(markdown-header-face-5 ((,class (:foreground ,nord8))))
    `(markdown-header-face-6 ((,class (:foreground ,nord8))))
    `(markdown-inline-code-face ((,class (:foreground ,nord7))))
    `(markdown-italic-face ((,class (:inherit italic))))
    `(markdown-link-face ((,class (:foreground ,nord8))))
    `(markdown-markup-face ((,class (:foreground ,nord9))))
    `(markdown-reference-face ((,class (:inherit markdown-link-face))))
    `(markdown-url-face ((,class (:foreground ,nord4 :underline t))))

    ;; > Rainbow Delimeters
    `(rainbow-delimiters-depth-1-face ((,class :foreground ,nord7)))
    `(rainbow-delimiters-depth-2-face ((,class :foreground ,nord8)))
    `(rainbow-delimiters-depth-3-face ((,class :foreground ,nord9)))
    `(rainbow-delimiters-depth-4-face ((,class :foreground ,nord10)))
    `(rainbow-delimiters-depth-5-face ((,class :foreground ,nord12)))
    `(rainbow-delimiters-depth-6-face ((,class :foreground ,nord13)))
    `(rainbow-delimiters-depth-7-face ((,class :foreground ,nord14)))
    `(rainbow-delimiters-depth-8-face ((,class :foreground ,nord15)))
    `(rainbow-delimiters-unmatched-face ((,class :foreground ,nord11)))

    ;; > Web Mode
    `(web-mode-attr-tag-custom-face ((,class (:foreground ,nord-attribute))))
    `(web-mode-builtin-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-comment-face ((,class (:foreground ,nord-comment))))
    `(web-mode-comment-keyword-face ((,class (:foreground ,nord-comment))))
    `(web-mode-constant-face ((,class (:foreground ,nord-variable))))
    `(web-mode-css-at-rule-face ((,class (:foreground ,nord-annotation))))
    `(web-mode-css-function-face ((,class (:foreground ,nord-method))))
    `(web-mode-css-property-name-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-css-pseudo-class-face ((,class (:foreground ,nord-class))))
    `(web-mode-css-selector-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-css-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-doctype-face ((,class (:foreground ,nord-preprocessor))))
    `(web-mode-function-call-face ((,class (:foreground ,nord-method))))
    `(web-mode-function-name-face ((,class (:foreground ,nord-method))))
    `(web-mode-html-attr-name-face ((,class (:foreground ,nord-attribute))))
    `(web-mode-html-attr-equal-face ((,class (:foreground ,nord-punctuation))))
    `(web-mode-html-attr-value-face ((,class (:foreground ,nord-string))))
    `(web-mode-html-entity-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-html-tag-bracket-face ((,class (:foreground ,nord-punctuation))))
    `(web-mode-html-tag-custom-face ((,class (:foreground ,nord-tag))))
    `(web-mode-html-tag-face ((,class (:foreground ,nord-tag))))
    `(web-mode-html-tag-namespaced-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-json-key-face ((,class (:foreground ,nord-class))))
    `(web-mode-json-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-keyword-face ((,class (:foreground ,nord-keyword))))
    `(web-mode-preprocessor-face ((,class (:foreground ,nord-preprocessor))))
    `(web-mode-string-face ((,class (:foreground ,nord-string))))
    `(web-mode-symbol-face ((,class (:foreground ,nord-variable))))
    `(web-mode-type-face ((,class (:foreground ,nord-class))))
    `(web-mode-warning-face ((,class (:inherit ,font-lock-warning-face))))
    `(web-mode-variable-name-face ((,class (:foreground ,nord-variable))))

    ;; +--- UI ---+
    ;; > Anzu
    `(anzu-mode-line ((,class (:foreground, nord8))))
    `(anzu-mode-line-no-match ((,class (:foreground, nord11))))
))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
    (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'nord)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:
