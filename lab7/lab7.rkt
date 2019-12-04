#lang racket/base
(require racket/list)

(define (extended-synthetic-division dividend divisor)
  (define out (list->vector dividend))
   (define normaliser (car divisor))
  (define divisor-length (length divisor))
  (define out-length (vector-length out)) 
 
  (for ((i (in-range 0 (- out-length divisor-length -1))))
    (vector-set! out i (quotient (vector-ref out i) normaliser))
    (define coef (vector-ref out i))
    (unless (zero? coef) 
      (for ((i+j (in-range (+ i 1)               
                           (+ i divisor-length))) 
            (divisor_j (in-list (cdr divisor)))) 
        (vector-set! out i+j (+ (vector-ref out i+j) (* coef divisor_j -1))))))

  (split-at (vector->list out) (- out-length (sub1 divisor-length))))
 
(module+ main
  (displayln "Деление полиномов")
  (define N '(1 -12 0 -42))
  (define D '(1 -3))
  (define-values (Q R) (extended-synthetic-division N D))
  (printf "~a / ~a = ~a остаток ~a~%" N D Q R))