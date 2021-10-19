;Header and description

(define (domain pacientes)

;remove requirements that are not needed
(:requirements :typing)

(:types paciente localizacion
)

(:predicates ;todo: define predicates here
    (vacia-ambulancia)
    (llena-ambulancia)
    (ambulancia ?l - localizacion)
    (ubicacion ?p - paciente ?l - localizacion)
    (hospital ?p - paciente)
    (hospital ?l - localizacion)
)


(:action mover
    :parameters (?x - localizacion ?y - localizacion)
    :precondition (and 
        (ambulancia ?x)
    )
    :effect (and 
        (not (ambulancia ?x))
        (ambulancia ?y)
    )
)


(:action subir
    :parameters (?p - paciente ?l - localizacion)
    :precondition (and 
        (vacia-ambulancia)
        (ambulancia ?l)
        (ubicacion ?p ?l)
    )
    :effect (and 
        (not (vacia-ambulancia))
        (llena-ambulancia)
        (not(ambulancia ?l)) 
        (not (ubicacion ?p ?l))
    )
)

(:action bajar
    :parameters (?p - paciente ?l - localizacion)
    :precondition (and 
        (llena-ambulancia)
        (ambulancia ?l)
        (not(hospital ?p))
    )
    :effect (and 
        (not (llena-ambulancia))
        (vacia-ambulancia)
        (ubicacion ?p ?l)
        (hospital ?p) 
    )
)
)