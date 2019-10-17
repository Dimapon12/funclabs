(define val 23)

(display "df sin: ")
(sin val)

(define (my-sin x taylorLen)
  (let ( (summ 0) (n x) (step (lambda (x i)(* (/ (* (* -1.0 x) x) (* (* 2 i) (+ (* 2 i) 1)))))) )
    (do ((i 1 (+ 1 i)))
        ((> i taylorLen))
      (set! summ (+ summ n))
      (set! n (* (step x i) n))
      )
    (display "my sin: ")
    summ
    )
)

(my-sin val 50)