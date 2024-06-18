(define (domain jugPouring)
    (:requirements :typing :fluents)
    (:types jug)

    (:functions
        (amount ?j - jug)
        (capacity ?j - jug)
    )

    (:action pour
        :parameters (?jug1 ?jug2 - jug)
        :precondition (>= (- (capacity ?jug2) (amount ?jug2)) (amount ?jug1))
        :effect (and 
            (assign (amount ?jug1) 0)
            (increase (amount ?jug2) (amount ?jug1))
        )
    )
)
