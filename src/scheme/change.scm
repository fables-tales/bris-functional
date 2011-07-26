(
    define coins (list 1 2 3)
)

(   
    define (lessThan value coins)
        (if (null? coins)
          (list)
          ;else
          (if (<= (car coins) value) 
            (cons (car coins) (lessThan value (cdr coins)))
            (lessThan value (cdr coins))
          )
    )
)

(
    define (getLast data last)
    (
      if (null? data) 
      last
      (getLast (cdr data) (car data))
    )
)

(
    define (makeChange value coins)
        (if (> value 0)
            (cons (getLast (lessThan value coins) 0) 
                  (makeChange (- value 
                                 (getLast (lessThan value coins) 0)
                              ) 
                              coins
                  )
            )
            (list)
        )
)
