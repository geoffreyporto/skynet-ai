(define (problem traslado_Pacientes)
    (:domain pacientes)
    (:objects
        p1 p2 - paciente
        l1 l2 l3 l4 - localizacion
    )
    (:init
        (hospital l1)
        (ambulancia l1)
        (vacia-ambulancia)
        (ubicacion p1 l3)
        (ubicacion p2 l4)
        ;todo: put the initial state's facts and numeric values here
    )
    (:goal
        (and
            (ubicacion p1 l1)
            (ubicacion p2 l1)
            (vacia-ambulancia)
            (ambulancia l1)
            (hospital p1)
            (hospital p2)
        )
    )

    ;un-comment the following line if metric is needed
    ;(:metric minimize (???))
)