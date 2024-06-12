; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: MIT
;
; Project:  CommonLisp-Template
; File:     main-test.lisp
; Date:     12.Jun.2024
;
; ==============================================================================

(defpackage :commonlisp-template/test
  (:use :common-lisp)
  (:export #:run-tests))

(in-package :commonlisp-template/test)

(defun run-tests ()
  (princ "Hi"))
