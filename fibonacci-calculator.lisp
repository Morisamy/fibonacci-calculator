(defvar *fibonacci-memo* (make-hash-table))

(defun fibonacci (n)
  "Calculates the Nth Fibonacci number recursively with memoization."
  (or (gethash n *fibonacci-memo*)
      (setf (gethash n *fibonacci-memo*)
            (if (<= n 1)
                n
                (+ (fibonacci (- n 1)) (fibonacci (- n 2)))))))
