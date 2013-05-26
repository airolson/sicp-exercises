; Applicative Order
; 
; (test 0 (p))
;
; (if (= 0 0) 0 (p))        ; first evaluate the operator,
; (if #t 0 ((p)))           ; then its operands,
; 0                         ; then evaluate the expression
;
;
; Normal Order
;
; (test 0 (p))
;
; (if (= 0 0) 0 (p))        ; first expand test,
; (if (= 0 0) 0 ((p)))      ; then expand its arguments,
; (if (= 0 0) = (((p))))    ; and keep expanding,
; (if (= 0 0) = ((((p)))))  ; and expanding...
;
; ...
;
; (if (= 0 0) = ((((((...   ; ...until the stack blows up
;
;
; Since p is defined as a recursive call to itself, it will never be expressed
; as a primitive operation on primitive operands. Using normal order 
; evaluation, this expression will expand forever (or until the computer runs
; out of space, whichever happens first).

