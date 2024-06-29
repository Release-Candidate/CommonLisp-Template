; SPDX-FileCopyrightText:  Copyright 2024 Roland Csaszar
; SPDX-License-Identifier: AGPL-3.0-or-later
;
; Project:  CommonLisp-Template
; File:     package.lisp
; Date:     28.Jun.2024
;
; ==============================================================================

(defpackage :commonlisp-template
  (:use :common-lisp)
  (:export :main
           :fib-naive
           :fib-tail
           :fib-loop))
