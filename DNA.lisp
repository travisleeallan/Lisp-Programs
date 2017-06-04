;;;;DNA.lisp by Travis Allan
;;;DNA.lisp takes two arguments as parameters.

(defun DNA (list1 list2 x y)
    (cond
        ((< x y)
            (cond
                ((eq 'A (nth x list1)) (setf (nth x list1) 'T))
                ((eq 'T (nth x list1)) (setf (nth x list1) 'A))
                ((eq 'C (nth x list1)) (setf (nth x list1) 'G))
                ((eq 'G (nth x list1)) (setf (nth x list1) 'C))
            )
            (setf x (+ x 1))
            (DNA list1 list2 x y)
        )
        ((>= x y) list1)
    )
    
)
(defun matchDNA (list1 list2)
    ;;(setf list3 list2)
    (setf x 0)
    (setf y (list-length list1))
    (DNA list1 list2 x y)

    (setf x 0)
    (setf y 0)
    (setf z 0)
    (setf c 0)
    (setf a (list-length list1))
    (setf patch 0)
    (setq list0 nil) ;;first output
    (setq list3 nil) ;;third output
    (setq list4 nil) ;;first switcher
    (setq list5 nil) ;;second output
    (setq list6 nil) ;;second switcher
    (setq list7 nil) ;;third switcher
    (loop for d from 0
        for y = 0
        while (<= d (list-length list2))

        do (

          (lambda (list8) '())
          (cond
            ((eq z a)
                (setf patch (- d z))
                ;;(print patch)
                ;;(print z)
                (setf counter (+ 0 0))
                (setf x (+ z z))
                (setf w 0)

                ;;first ouput
                (loop for w from 0
                    for v = 0
                    while (< w patch)
                    do (
                        (lambda (list4) (nth w list2))
                        (setq list4 (cons (nth w list2) list4))
                    )
                )
                (loop for w from 0
                    for v = 0
                    while (< w (list-length list4))
                    do (
                        (lambda (list0) (nth w list4))
                        (setq list0 (cons (nth w list4) list0))
                    )
                )
                ;;(cond ((eq z 0) (setq list0 list2)))

                ;;second output
                (loop for w from patch
                    for v = patch
                    while (< w d)
                    do (
                        (lambda (list6) (nth w list2))
                        (setq list6 (cons (nth w list2) list6))
                    )
                )
                (loop for w from 0
                    for v = 0
                    while (< w (list-length list6))
                    do (
                        (lambda (list5) (nth w list6))
                        (setq list5 (cons (nth w list6) list5))
                    )
                )

                ;;third output

                (loop for w from d
                    for v = d
                    while (< w (list-length list2))
                    do (
                        (lambda (list7) (nth w list2))
                        (setq list7 (cons (nth w list2) list7))
                    )
                )
                (loop for w from 0
                    for v = 0
                    while (<= w (- (list-length list7) 1))
                    do (
                        (lambda (list3) (nth w list7))
                        (setq list3 (cons (nth w list7) list3))
                    )
                )

;;                (print list0)
;;                (print list5)
;;                (print list3)
                (return-from matchDNA (list list0 list5 list3))
            )
             ((eq (nth d list2) (nth z list1))
;;(setf patch 0)
                (setf x (+ x 1))
                (setf z (+ z 1))
            )
             ((not (eq (nth d list2) (nth z list1)))
;;(setf patch (+ patch 1))
                (setf x 0)
                (setf z 0)
            )
          )
        )
    )
    (cond ((eq x 0) (setq list0 list2)))
    (return-from matchDNA (list list0 list5 list3))

)