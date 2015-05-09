;; A very simple mode for moks files
(require 'generic-x) ;; gonna extend generic mode

(define-generic-mode 'moks-mode
  '("//")
  '("let" "if" "export" "import" "default")
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
