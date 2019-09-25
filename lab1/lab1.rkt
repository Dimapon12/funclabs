;(+ 2 5) - плюс
;(* 3 4 5) - умножить
; comment - комментарий
;(define a 3) - переменная
;(+ a(* 3 2)) - вложенность
; X = (AsinB+BCosA)/(1-sinC*|B+D|) - задание лаб. 1
(define A 1) (define B 2) (define C 3) (define D 4)
(/ (+ (* B (cos A))(* A (sin B)))(- 1 (* (sin C)(abs (+ B D)))))