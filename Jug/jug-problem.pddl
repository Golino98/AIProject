(define (problem jug-problem)
    (:domain jug-pouring)
    (:objects
        jug1 jug2 - jug
    )
    (:init
        (= (capacity jug1) 5)
        (= (capacity jug2) 10)
        (= (amount jug1) 3)
        (= (amount jug2) 2)
    )
    (:goal
        (and
            (= (amount jug1) 0)
            (= (amount jug2) 5)
        )
    )
)
