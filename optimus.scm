;old prime checker
;(define (try y) (if (= y x) 1 (if (< x 1) 0 (if (= 0 (mod x y)) 0 (try (1+ y))))))
;read from file cpo
;into list lis

(define lis (call-with-input-file "cpo"
    (lambda (p)
      (let f ((x (read p)))
        (if (eof-object? x)
            '()
            (cons x (f (read p))))))))

;(define (try y) (if (= (car y) x) 1 (if (< x 1) 0 (if (= 0 (mod x (car y))) 0 (try (cdr y))))))

(define (try y) (if (null? y) 1 (if (< x 1) 0 (if (= 0 (mod x (car y))) 0 (try (cdr y))))))

;okay if y(lis) gets null then x(input no.) is not divisible by any element in lis so return 1(true) 
;or when if x divided by any element of y gives mod 0 then give o/p 0(false)
;if abov not happens then check for next element of y(lis).


;NOW what i'm gonna do is find all primes betn 10million and 20million.
(define (comp x) (if (< x 20000000) (if (= 1 (try lis)) x 0) 00))
(let finder ((x 10000001))
  (if (> x 20000000) 0 (if (= 1 (try lis)) x 0)))







((lambda (f) (f f 1 0))
    (lambda (f n acc)
      (if (> n 10)
          acc
          (f f (+ n 1) (+ acc n)))))
		   

(let sum ((i 1) (acc 0))
    (if (> i 10) acc (sum (+ i 1) (+ acc i))))


(let sum ((i 1))
    (if (> i 10) 0 (+ i (sum (+ i 1)))))
