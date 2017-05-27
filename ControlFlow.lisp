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
; however, they only allow for one branch

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

; Cond can handle more than one branch
(defvar *arch-enemy* nil)
(defun pudding-eater(person)
	(cond ((eq person 'johnny) (setf *arch-enemy* 'useless-old-johnny) '(i hope you choked on my pudding johnny))
		  ((eq person 'tommy) (setf *arch-enemy* 'silly-tommy) '(c\'mon tommy))
		  (t '(whyd you eat my pudding?)))

)

; The case form is a more-readable version of cond
(defun dog-walker(person)
	(case person
		((johnny) '(thanks johnny!))
		((jeff) '(you the man jeff!))
		(otherwise '(give me my dog back i dont know you))
	)
)

; You can use and & or operators as conditionals
(defparameter *four-is-even* nil)
(defun is-four-even()
	(or (oddp 4) (setf *four-is-even* t))
	; (*some-variable*)

)

; Nested if statements can be replaced by an 'and'

(defparameter *file-modified* t)
(defparameter *ask-user-about-saving* t)
(defun save-file()
	(and *file-modified* *ask-user-about-saving* '(saving))
)