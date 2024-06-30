; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: MIT
;
; Project:  CommonLisp-Template
; File:     main.lisp
; Date:     12.Jun.2024
;
; ==============================================================================

(in-package :commonlisp-template)

(defun real-main (&optional args)
  (format t "Command line arguments: ~A~%" args))

(defun main ()
  (real-main (uiop:command-line-arguments)))

(defun fib-naive (n)
  "Calculate the n-th fibonacci number, using the naive and slow recursive version."
  (if (< n 3)
      1
      (+ (fib-naive (- n 1)) (fib-naive (- n 2)))))

(defun fib-tail (n)
  "Calculate the n-th fibonacci number, using a tail-recursive function."
  (labels ((go-func (i a b)
                    (cond ((= i 0) a)
                          ((= i 1) b)
                          (t (go-func (- i 1) b (+ a b))))))
    (go-func n 0 1)))

(defun fib-loop (n)
  "Calculate the n-th fibonacci number, using a loop."
  (if (< n 3)
      1
      (let ((a 1)
            (b 1)
            (fib 1))
        (dotimes (i (- n 2))
          (setf fib (+ a b))
          (setf a b)
          (setf b fib))
        fib)))
