;;;multiply.lisp by Travis Allan
(defun multiplytwo (w x y z)
    (cond
        ((< y w)
            (setf x (+ x z))
            (setf y (+ y 1))
            (multiplytwo w x y z)
        )
        ((>= y w)
            (cond
                ((= w (- 1))
                    (- x)
                )
                ((> w (- 1)) x)
            )
        )

    )
)

(defun multiply (x y)
    (setf z (+ x 0))
    (cond
        ((> y 0)
            (setf w (+ y (+ y (- 1))))
        )
        ((< y 0)
            (setf w (- 1))
        )
    )
    (multiplytwo w x y z)
)




