(define (problem vehicle-problem)
    (:domain vehicle)
    (:objects
        truck car - vehicle
        full half empty - fuel-level
        Paris Berlin Rome Madrid - location
    )

    (:init
        (at truck Rome)
        (at car Paris)
        (fuel truck half)
        (fuel car full)
        (next full half)
        (next half empty)
        (accessible car Paris Berlin)
        (accessible car Berlin Rome)
        (accessible car Rome Madrid)
        (accessible truck Rome Paris)
        (accessible truck Rome Berlin)
        (accessible truck Berlin Paris)
    )

    (:goal
        (and
            (at truck Paris)
            (at car Rome)
        )
    )
)