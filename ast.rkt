;;les stuctures de l'arbre de syntaxe abstraite
#lang racket/base

(provide (all-defined-out))
;;expressions de la grammaire du langage à compiler
;; valeurs constantes
(struct Pval       (val)             #:transparent)
;;operations
(struct Pop        (op v1 v2)        #:transparent)  ;;v1 op v2
(struct Pid        (nom)             #:transparent)  ;;reference des variables
(struct Pdef       (id expr)         #:transparent)  ;;definition des variables
(struct Pcond      (test yes no)     #:transparent)  ;;les conditions if 
(struct Pprint     (expr)            #:transparent)  ;;l'affichage
(struct Pprint_op  (expr)            #:transparent)  ;;affichage d'operations
(struct Pprint_var (expr)            #:transparent)  ;;affichage des variables 
(struct Pbool      (bool)            #:transparent)  ;;les booleans true false
(struct Pnot       (op v)            #:transparent)  ;;operation logique not
(struct Ploop      (test instr)      #:transparent)  ;;les boucles(while)
;;definition et appel à la fonction
(struct Pfunc      (id args expr)    #:transparent)
(struct Pfuncall   (id args)         #:transparent)
(struct Pret       (expr)            #:transparent)
(struct Pfargs     (a)		         #:transparent)
(struct Pcallargs  (a)               #:transparent)

;;instructions mips
(struct Move (rd rs))
(struct Li (r i))
(struct La (r a))
(struct Addi (rd rs i))
(struct Add (rd rs r))
(struct Sub (rd rs i))
(struct Mult (r1 r2))
(struct Div (r1 r2))
(struct And(rd r1 r2))
(struct Or(rd r1 r2))
(struct Xor(rd r1 r2))
(struct Mflo (r))
(struct Mfhi (r))
(struct Sw (r loc))
(struct Lw (r loc))
(struct Syscall ())
(struct Jr (r))
(struct J (r))
(struct Jal (r))
(struct Beq (r1 r2 lbl))
(struct Bgt (r1 r2 lbl))
(struct Blt (r1 r2 lbl))
(struct Bge (r1 r2 lbl))
(struct Ble (r1 r2 lbl))
(struct B (lbl))
(struct Label (l))

;; addresses
(struct Lbl (l))   ;; label (souvent présent dans .data)
(struct Mem (b r)) ;; emplacement mémoire à l'adresse b + valeur du registre r

