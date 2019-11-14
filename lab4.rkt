(define first (lambda (lst) (car lst)))
(define last  (lambda (lst) (car (reverse lst))))
(define cond1 (lambda (i) (set! res (append res (list (* i i))))))
(define res '())

(define my-func
  (lambda (lst)
     (if (and (even? (first lst)) (even? (last lst)))
         (for-each cond1 lst)
         (set! res (append (list (first lst) (last lst)))))
    res
))


(my-func '(4 3 -5 3 1 3))