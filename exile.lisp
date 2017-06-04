;;;;exile.lisp by Travis Allan
;;;exile deletes a selected list from another list

(setq *print-case* :downcase)

(defun exile2 (atom list x y)
    (cond
        ((< x y)
            (setq sym (nth x list))
            ;;(print sym)
            (cond
                ((and (eq atom (nth x list)) (eq x 0))
                    ;;cdr list
                    (setf list (cdr list))
                )
                ((eq atom sym)
                    ;;delete element from the list
                    (delete atom list)
                )

;;                  ((eq (listp sym) 'T)
;;                  (setf v (+ 0 0)); iterator
;;                    (setf w (list-length sym)); list length
;;                    (set (nth x list) (exile atom sym))
;;                )

            )
            ;;(print x)
            (setf x (+ x 1))
            (exile2 atom list x y)
        )
        ((>= x y) list)
    )
)
(defun exile (atom list)
    (setf x (+ 0 0)); iterator
    (setf y (list-length list)); list length
    (exile2 atom list x y)
)