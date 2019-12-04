#lang racket
(require data/queue)
(define q (make-queue))

(enqueue! q 2)
(enqueue! q 7)
(enqueue! q 23)
(enqueue! q 3)
(enqueue! q 5)
(enqueue! q 10)


(define (maxOf list)
        (cond
            ((empty? list) (error "empty list"))
            ((empty? (rest list)) (first list))
            (else (cond
                    ((> (first list) (maxOf (rest list))) (first list))
                    (else (maxOf (rest list)))))))

(maxOf (queue->list q))