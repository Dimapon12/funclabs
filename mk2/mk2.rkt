;  Панасовский ИПЗ - 41 билет 3
(define strlist (list "red" "yellow" "blue" "green"))
(define strsrch (list  "pink" "blue" "gray"))


(for-each (lambda (i)
            (for-each (lambda (x)
                        (if (equal? i x)
                             (display "yes ")
                        ))
                      strsrch)
                )
          strlist)