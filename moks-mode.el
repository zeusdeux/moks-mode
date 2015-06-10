;; A very simple mode for moks files
(require 'generic-x) ;; gonna extend generic mode

(define-generic-mode 'moks-mode
  '("//")
  '("let" "import" "nil")
  '(("=" . 'font-lock-builtin-face)
    ("+" . 'font-lock-builtin-face)
    ("-" . 'font-lock-builtin-face)
    ("*" . 'font-lock-builtin-face)
    ("/" . 'font-lock-builtin-face)
    ("==" . 'font-lock-builtin-face)
    ("<=" . 'font-lock-builtin-face)
    (">=" . 'font-lock-builtin-face)
    ("<" . 'font-lock-builtin-face)
    (">" . 'font-lock-builtin-face)
    ("!=" . 'font-lock-builtin-face)
    ("!" . 'font-lock-builtin-face)
    ("(" . 'font-lock-builtin-face)
    (")" . 'font-lock-builtin-face))
  '("\\.mok$")
  '(auto-complete-mode
    rainbow-delimiters-mode
    electric-pair-mode
    electric-indent-mode
    (lambda () (setq indent-line-function 'js-indent-line)))
  "A mode for moks files")

;; figure out how to add moks keywords to ac-sources.
;; this seems to error out: http://auto-complete.org/doc/manual.html#extend
;; checkout how js2-mode does it
