(declare-const p1 Int)
(declare-const s1 Int)
(declare-const e1 Int)
(assert (and (>= p1 1) (<= p1 3)))
(declare-const p2 Int)
(declare-const s2 Int)
(declare-const e2 Int)
(assert (and (>= p2 1) (<= p2 3)))
(declare-const p3 Int)
(declare-const s3 Int)
(declare-const e3 Int)
(assert (and (>= p3 1) (<= p3 3)))
(declare-const p4 Int)
(declare-const s4 Int)
(declare-const e4 Int)
(assert (and (>= p4 1) (<= p4 3)))
(declare-const p5 Int)
(declare-const s5 Int)
(declare-const e5 Int)
(assert (and (>= p5 1) (<= p5 3)))
(declare-const p6 Int)
(declare-const s6 Int)
(declare-const e6 Int)
(assert (and (>= p6 1) (<= p6 3)))
(assert (= e1 (+ s1 4)))
(assert (= e2 (+ s2 5)))
(assert (= e3 (+ s3 6)))
(assert (= e4 (+ s4 7)))
(assert (= e5 (+ s5 8)))
(assert (= e6 (+ s6 9)))
(declare-const T Int)
(assert (=> (= p1 p2) (or (>= s1 e2) (>= s2 e1))))
(assert (=> (= p1 p3) (or (>= s1 e3) (>= s3 e1))))
(assert (=> (= p1 p4) (or (>= s1 e4) (>= s4 e1))))
(assert (=> (= p1 p5) (or (>= s1 e5) (>= s5 e1))))
(assert (=> (= p1 p6) (or (>= s1 e6) (>= s6 e1))))
(assert (=> (= p2 p3) (or (>= s2 e3) (>= s3 e2))))
(assert (=> (= p2 p4) (or (>= s2 e4) (>= s4 e2))))
(assert (=> (= p2 p5) (or (>= s2 e5) (>= s5 e2))))
(assert (=> (= p2 p6) (or (>= s2 e6) (>= s6 e2))))
(assert (=> (= p3 p4) (or (>= s3 e4) (>= s4 e3))))
(assert (=> (= p3 p5) (or (>= s3 e5) (>= s5 e3))))
(assert (=> (= p3 p6) (or (>= s3 e6) (>= s6 e3))))
(assert (=> (= p4 p5) (or (>= s4 e5) (>= s5 e4))))
(assert (=> (= p4 p6) (or (>= s4 e6) (>= s6 e4))))
(assert (=> (= p5 p6) (or (>= s5 e6) (>= s6 e5))))
(assert (and (>= s1 0)(<= e1 T)))
(assert (and (>= s2 0)(<= e2 T)))
(assert (and (>= s3 0)(<= e3 T)))
(assert (and (>= s4 0)(<= e4 T)))
(assert (and (>= s5 0)(<= e5 T)))
(assert (and (>= s6 0)(<= e6 T)))
(assert (and (>= s3 e2) (>= s3 e6)))
(assert (= p1 2))
(assert (= p4 2))
(minimize T)
(minimize s0)
(minimize s1)
(minimize s2)
(minimize s3)
(minimize s4)
(minimize s5)
(check-sat)
(get-model)