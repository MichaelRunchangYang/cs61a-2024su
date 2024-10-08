(define (over-or-under num1 num2)
  (cond ((< num1 num2) -1)
        ((= num1 num2) 0)
        (else 1))
)

(define (make-adder num)
  (lambda (inc) (+ num inc))
)

(define (composed f g)
  (lambda (x) (f (g x)))
)

(define (repeat f n)
  (lambda (x) (if (= n 1) (f x) (begin (define x (f x)) ((repeat f (- n 1)) x))))
)

(define (max a b) (if (> a b) a b))
(define (min a b) (if (> a b) b a))
(define (gcd a b)
  (cond
        ((zero? (modulo (max a b) (min a b))) (min a b))
        (else (gcd (modulo (max a b) (min a b)) (min a b))))
)

(define (duplicate lst)
  (define (helper lst result)
    (if (null? lst)
        result
        (helper (cdr lst) (append result (list (car lst) (car lst))))))
  (helper lst '()))

(expect (duplicate '(1 2 3)) (1 1 2 2 3 3))
(expect (duplicate '(1 1)) (1 1 1 1))

(define (deep-map fn s)
  (cond
    ((null? s) '())
    ((list? (car s))
     (cons (deep-map fn (car s))
           (deep-map fn (cdr s))))
    (else
     (cons (fn (car s))
           (deep-map fn (cdr s)))))
)

