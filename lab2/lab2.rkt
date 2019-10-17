(define (pow1 x n) ;звичайна рекурсія
      (if (= n 0)  
          1
          (if (< n 0)
              (* (/ 1 x) (pow1 x(+ n 1)))
              (* x (pow1 x(- n 1)))
          )
      )
 )
(pow1 2 35)
(pow1 3 -9)
(pow1 5 0)

(define (pow2 x n) ;хвостовая рекурсия
  (define (pow-iteration x n curr)
    (if (= n 0)
        curr
        (if (< n 0)
            (pow-iteration x (+ n 1) (* curr (/ 1 x)))
            (pow-iteration x (- n 1) (* curr x))
        )
    )
  )
  (pow-iteration x n 1)
)
(pow2 2 35)
(pow2 3 -9)
(pow2 5 0)
