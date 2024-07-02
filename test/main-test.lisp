; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: MIT
;
; Project:  CommonLisp-Template
; File:     main-test.lisp
; Date:     12.Jun.2024
;
; ==============================================================================

(in-package :commonlisp-template/test)

(lisp-unit2:define-test fib-naive-8
  (:tags '(bar))
  (lisp-unit2:assert-eql 1 (commonlisp-template:fib-naive 8)))

(lisp-unit2:define-test fib-naive-list
  (:tags '(bar))
  (lisp-unit2:assert-equal
    '(1 1 2 3 5 8 14 21 34)
    (mapcar #'commonlisp-template:fib-naive (list 1 2 3 4 5 6 7 8 9))))

(lisp-unit2:define-test fib-loop-check-it
  (:tags '(bar))
  (lisp-unit2:assert-true
    (let ((check-it:*num-trials* 100)
          (check-it:*size* 50))
      (check-it:check-it (check-it:generator (integer 0 50))
                         (lambda (x) (let ((y (if (> x 20)
                                                  (+ x 1)
                                                  x)))
                                       (= (commonlisp-template:fib-tail y)
                                         (commonlisp-template:fib-loop x))))))))


(defun run-tests ()
  "The main entry point of the tests. Run all tests."
  (let ((res (lisp-unit2:run-tests :package :commonlisp-template/test
                                   :run-contexts #'lisp-unit2:with-summary-context)))
    (let ((not-ok (or (lisp-unit2:failed res)
                      (lisp-unit2:errors res)
                      (lisp-unit2:warnings res))))
      not-ok)))

(defun run-tests-exit ()
  "Run all tests and exit the REPL."
  (if (run-tests)
      (uiop:quit 1)
      (uiop:quit)))
