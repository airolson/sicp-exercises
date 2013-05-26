; When a-plus-abs-b runs, the inner-most expression (> b 0) will be evaluated 
; first. If it is true, the expression (if (> b 0) + -) will return the 
; procedure +, which will then result in (+ a b) being evaluated next.
; Otherwise, the if form will return the procedure - resulting in (- a b) 
; being evaluated next. Since b is negative, subtracting b from a is 
; equivalent to adding its absolute value to a.

