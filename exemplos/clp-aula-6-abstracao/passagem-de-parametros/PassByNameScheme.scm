(define mult ())
(define incr ())

(let ((x 5))
   (set! incr 
    (lambda (n) 
      (set! x (+ x n))
      (write x)
      x
    )
   )
   (set! mult 
    (lambda (n) 
      (* n x)
    )
   )
)

(define mult2 ())
(define incr2 ())

(let ((x2 5))
   (set! incr2 
    (lambda (n) 
      (set! x2 (+ x2 n))
      (write x2)
      x2
    )
   )
   (set! mult2 
    (lambda (n) 
     (write x2)
     (* (eval n) x2)
    )
   )
)

