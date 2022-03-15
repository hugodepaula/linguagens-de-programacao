(define fatorial
	(lambda (n)
		  (if (= n 0)
			1
			(* n (fatorial (- n 1)))
		  )
   )
 )

(define fatCauda
	(lambda (n resultado)
		  (if (= n 0)
			resultado
			(fatCauda (- n 1) (* n resultado))
		  )
   )
 )

(define fat 
  (lambda (n)
    (fatCauda n 1) 
  )
)

(define fatLoop
	(lambda (n resultado)
	   (begin
		   (while (> n 0)
			(set! resultado (* n resultado))
			(set! n (- n 1))
	   )
     resultado)
  )
)
