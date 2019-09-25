;(+ 2 5)
;(* 3 4 5)
; comment
;(define a 3)
;(+ a(* 3 2))
; X = (AsinB+BCosA)/(1-sinC*|B+D|)
(define A 1) (define B 2) (define C 3) (define D 4)
(/ (+ (* B (cos A))(* A (sin B)))(- 1 (* (sin C)(abs (+ B D)))))