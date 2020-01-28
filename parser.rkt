;;Le code suivant contient les outils nécessaires à l'analyse syntaxique
#lang racket/base

(require "lexer.rkt"
         parser-tools/yacc
         "ast.rkt")

(provide program_parser)

;;Fonction qui compose des régles de syntaxe qui forment la grammaire du langage à compiler 
(define function_parser
  (parser
    (tokens operateurs valeurs noms ponctuation mots_clés)
    (start program)
    (end Eof)
    (debug "yacc")
    (grammar

       (program
	  ((expr)                (list $1))
          ((declaration)         (list $1))
          ((declaration program)    (cons $1 $2))
          ((expr program)           (cons $1 $2)))

       (expr
          ((val)                $1)
          ((operation)          $1)
          ((funcall)            $1)
          ((nt)                 $1)
          ((return)             $1)
          ((test)               $1)
          ((while)              $1)
          ((print)              $1))
       ;;Déclaration des variables et les fonctions
       (declaration
          ((Lid Lassign sexpr)                     (Pdef (Pid $1) $3))
          ((Ldef Lid Lopar fargs Lcpar Lcol expr)  (Pfunc (Pid $2) (Pfargs $4) $7)))
       ;;Définir les arguments d'une fonction
       (fargs
          ((Lid Lcomma fargs) (cons (Pfargs $1 $3)))
          ((Lid)              (list (Pfargs $1)))
          ((Lnil)             (list (Pfargs 'nil))))
       ;;Définir les arguments d'un appel à une fonction
       (callargs
          ((sexpr Lcomma fargs) (cons (Pcallargs (Pid $1) $3)))
          ((sexpr)              (list (Pcallargs (Pid $1))))
          ((Lnil)               (list (Pcallargs (Pid 'nil)))))
       ;;Le retour d'une fonction
       (return 
          ((Lret sexpr)       (Pret $2)))
       ;;appel à la fonction
       (funcall
          ((Lid Lopar callargs Lcpar)   (Pfuncall (Pid $1) $3)))
       ;;affichage d'une valeur(chiffre), d'opération et  d'une chaine de caractère 
       (print
          ((Lprint Lopar Lcot expr Lcot Lcpar)  (Pprint $4))
          ((Lprint Lopar sexpr Lcpar)           (Pprint_op $3))
          ((Lprint Lopar val Lcpar)             (Pprint_var $3)))
       ;;les opérations entre les chiffres
       (operation 
          ;;;;;;;;Opérations arithmétiques;;;;;;
          ((sexpr Lplus sexpr)   (Pop 'add $1 $3))
	       ((sexpr Lminus sexpr)  (Pop 'sub $1 $3))
          ((sexpr Lstar sexpr)   (Pop 'mul $1 $3))
          ((sexpr Lslash sexpr)  (Pop 'div $1 $3))
          ((sexpr Lmod sexpr)    (Pop 'mod $1 $3))
          ((sexpr Lexpt sexpr)   (Pop 'exp $1 $3))

          ;;;;;;;;Operations logiques;;;;;;;;;;;
          ((sexpr Land sexpr)    (Pop 'and $1 $3))
          ((sexpr Lor sexpr)     (Pop 'or $1 $3))
          
          ;;;;;;;Operations de comparaisons;;;;;
          ((sexpr Lsup sexpr)    (Pop 'sup $1 $3))
          ((sexpr Linf sexpr)    (Pop 'inf $1 $3))
          ((sexpr Lseq sexpr)    (Pop 'seq $1 $3))
          ((sexpr Lieq sexpr)    (Pop 'ieq $1 $3))
          ((sexpr Leq sexpr)     (Pop 'eq $1 $3))
          ((sexpr Lneq sexpr)    (Pop 'neq $1 $3)))
       ;;Opération logique not
       (nt
          ((Lnot sexpr)  (Pnot 'not $2))) 
       ;;Valeurs
       (val
          ((Lnum)      (Pval $1))
          ((Lid)       (Pid $1))
          ((Lbool)     (Pbool $1)))
       ;;La condition if
       (test  
          ((Lif expr Lcol expr Lelse Lcol expr)    (Pcond $2 $4 $7)))
       ;;La boucle while
       (while
          ((Lwhile expr Lcol expr)   (Ploop $2 $4)))
       ;;expréssions singuliéres
       (sexpr
          ((val)                $1)
          ((operation)          $1)
          ((nt)                 $1)))
 
    (precs (left Lplus)
           (left Lminus)
           (left Lstar)
           (left Lslash)
           (left Lmod)
           (left Land)
           (left Lnot)
           (left Lor)
           (left Lexpt)
           (left Lsup)
           (left Linf)
           (left Lseq)
           (left Lieq)
           (left Leq)
           (left Lneq))
          
    (error
        (lambda (ok? name value)
        (error 'Parser "Erreur!!!?")))))

(define (program_parser in)
  (function_parser (lambda () (program_lexer in))))
