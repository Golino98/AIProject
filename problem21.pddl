(define (domain contadini-domain)
    (:requirements :typing :durative-actions)
    (:types campo contadino)
    
    (:predicates
        (connesso ?campo1 ?campo2)
        (posizione ?contadino ?campo))
    
    (:functions
        (durata ?action)
    )
    
    (:durative-action spostamento
        :parameters (?contadino - contadino ?campo1 ?campo2 - campo)
        :duration (= ?duration 5)
        :condition (and
            (at start (posizione ?contadino ?campo1))
            (at start (connesso ?campo1 ?campo2))
            (at end (posizione ?contadino ?campo2))
        )
        :effect (and
            (at start (not (posizione ?contadino ?campo1)))
            (at end (posizione ?contadino ?campo2))
        )
    )
)
