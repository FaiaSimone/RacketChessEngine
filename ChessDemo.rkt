#lang racket

; Appunti -> Use Perft for move correctness
; Board representation is the "back end"
; Search and Evalution are the "brains" of chesse engine

; Now i need a 10x12 mailbox board function, it means i need 2
; Array of 64 elements

; Board function

; Pieces
(define black-pieces (list "R" "N" "B" "Q" "K" " "))
(define white-pieces (list"r" "n" "b" "q" "k" " "))

; Single square
(define (square x)
  (string-append "[" x "]"))

; Single row
(define (row)
  (for ([i 10])
  (square " "))
  (newline))

; Empty row
(define empty-row (list '_ '_ '_ '_ '_ '_ '_ '_))

; Board
(define (board)
  (for ([i 12])
  (row)))

; Initial board
(define initial-board
  (list
   (list 'R 'N 'B 'Q 'K 'B 'N 'R) ; Black pieces, test without define
   (list 'P 'P 'P 'P 'P 'P 'P 'P) ; List full of black pawns
   empty-row
   empty-row
   empty-row
   empty-row
   (list 'p 'p 'p 'p 'p 'p 'p 'p) ; List full of white pawns
   (list 'r 'n 'b 'q 'k 'b 'n 'r) ; White pieces, test without define
   ))

; Function for printing the board
(define (print-board board)
  (for ([row board])
    (for ([cell row])
      (printf "~a" cell))
    (newline)))

; Aggiungi Piece-square tables per la simplified evaluation function

(print-board initial-board)