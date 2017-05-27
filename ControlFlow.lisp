(defun run1() 
		(if (oddp 5)
			'odd-numbered
			(/ 1 0)
		)
)

; (defun run ()
; 	(if (oddp 5) 
; 		'odd-number
; 		(/ 1 0)) 
; )

(defun run2() 
		(if (oddp 5)
			; progn allows you to do more than one thing inside an if 
			; only the last evaluation is returned
			(progn (+ 5 4) 'odd-numbered)
			(/ 1 0)
		)
)

; When and unless statements have implicit progns
(defvar *number-is-odd* nil)
(defun run3()
	(when (oddp 5)
	 	(setf *number-is-odd* t) 
		'odd-number)
)

(defun run4()
	(unless (oddp 4)
		(setf *number-is-odd* nil)
		'even-number
		)

)