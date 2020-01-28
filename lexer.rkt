;;Le code suivant comporte les outils nécessaires pour l'analyse lexicale qui transforme le code en lexèmes(tokens)
#lang racket/base

(require parser-tools/lex
         (prefix-in : parser-tools/lex-sre))

(provide program_lexer operateurs valeurs noms mots_clés ponctuation)

;;les lexèmes vides qui représentent les mots clés du langage
(define-empty-tokens mots_clés
 (Lif Lelse Lprint Lopar Lcpar
 Lrange Lcot Lnl Lwhile Ldef Lret Lnil Eof Lin
 ))

;;Les lexèmes vides qui représentent les symboles de ponctuation
(define-empty-tokens ponctuation
 (Lcol Lcom Lcomma))

;;Les lexèmes vides qui représentent les symboles d'opérations(arithmétiques, logiques et de comparaison)
(define-empty-tokens operateurs
  (Lplus Lminus Lstar Lmod Land Lor Lnot 
   Lslash Lsup Linf Lseq Lieq Leq Lneq Lassign Lexpt))

;; Représentation des identifiants par un ensemble de lexèmes
(define-tokens noms
  (Lid))

;;Représentation des valeurs par un ensemble de lexèmes
(define-tokens valeurs
  (Lnum Lbool))

;;"program_lexer" comporte un lexer qui fait l'analyse et la décomposition du code en lexèmes
(define program_lexer
  (lexer
   ((eof)           (token-Eof))
   (whitespace      (program_lexer input-port))
   ("+"             (token-Lplus))
   ("-"             (token-Lminus))
   ("*"             (token-Lstar))
   ("//"            (token-Lslash))
   ("**"            (token-Lexpt))
   (">"             (token-Lsup))
   ("<"             (token-Linf))
   (">="            (token-Lseq))
   ("<="            (token-Lieq))
   ("=="            (token-Leq))
   ("!="            (token-Lneq))
   ("%"             (token-Lmod))
   ("and"           (token-Land))
   ("or"            (token-Lor))
   ("="             (token-Lassign))
   ("if"            (token-Lif))
   ("while"         (token-Lwhile))
   (":"             (token-Lcol))
   ("else"          (token-Lelse))
   ("print"         (token-Lprint))
   ("def"           (token-Ldef))
   ("return"        (token-Lret))
   ("("             (token-Lopar))
   (")"             (token-Lcpar))
   ("'"             (token-Lcot))
   ("\n"            (token-Lnl))
   ("()"            (token-Lnil))
   (","             (token-Lcomma))
   ("not"           (token-Lnot))
   ("range"         (token-Lrange))
   ("in"            (token-Lin))
   ("\\n"           (program_lexer input-port))
   (bool            (token-Lbool (string=? "True" lexeme)))
   ((:+ alphabetic) (token-Lid (string->symbol lexeme)))
   ((:+ numeric)    (token-Lnum (string->number lexeme)))
   ("#"             (comment1-lexer input-port))))

;;Définition des abbreviations True et False
(define-lex-abbrev bool
  (:or "True" "False"))

;;Inserer les commentaires 
(define comment1-lexer
  (lexer
   ("\n"     (program_lexer input-port))
   (any-char (comment1-lexer input-port))))