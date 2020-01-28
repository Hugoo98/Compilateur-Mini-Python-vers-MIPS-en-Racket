#lang racket/base

(require "parser.rkt"
         "compiler.rkt"
         "ast.rkt")

(define argv (current-command-line-arguments))
  (cond
    ((= (vector-length argv) 1)
    (define in (open-input-file (vector-ref argv 0)))
    (define program (program_parser in))	
    (newline)
    (data)
    (mips-data (make-hash '((t . "\nTrue\n")(f . "\nFalse\n") )))
    (mips-data (make-hash '((newline . "\n"))))
    (define envrmnt (make-immutable-hash))
    (data-eval program envrmnt)
    (newline)
    (text)
    (mips-function program envrmnt)
    (newline)
    (main)
    (program-eval program envrmnt)
    (mips-exit)
    (close-input-port in))
  (else
    (eprintf "Usage: racket pymips.rkt <source.py>\n")
    ;;(eprintf "Usage: racket mips.rkt \"program\"\n")
    (exit 1)))


