;Header and description

(define (domain metricVehicle)

    ;remove requirements that are not needed
    (:requirements :strips :fluents :typing)

    (:types
        vehicle location
    )

    (:predicates
        (at ?v - vehicle ?p - location)
        (accessible ?v - vehicle ?p1 ?p2 - location)
    )

    (:functions
        (fuel-level ?v - vehicle)
        (fuel-used ?v - vehicle)
        (fuel-required ?p1 ?p2 - location)
        (total-fuel-used)
    )

    (:action drive
        :parameters (?v - vehicle ?from ?to - location)
        :precondition (and (at ?v ?from)
            (accessible ?v ?from ?to)
            (>= (fuel-level ?v) (fuel-required ?from ?to)))
        :effect (and (not (at ?v ?from))
            (at ?v ?to)
            (decrease
                (fuel-level ?v)
                (fuel-required ?from ?to))
            (increase
                (fuel-used ?v)
                (fuel-required ?from ?to))
            (increase
                (total-fuel-used)
                (fuel-required ?from ?to))
        )
    )
)