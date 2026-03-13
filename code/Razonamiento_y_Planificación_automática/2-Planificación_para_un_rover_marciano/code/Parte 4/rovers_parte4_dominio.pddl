(define (domain Rover-battery)
       (:requirements :typing :strips)
       (:types
              rover waypoint store camera mode lander objective blevel battery tug traction pathtype ; Nuevos tipos: tug, traction, pathtype
              )

       (:predicates
              (at ?x - rover ?y - waypoint)
              (at_lander ?x - lander ?y - waypoint)
              (equipped_for_soil_analysis ?r - rover)
              (equipped_for_rock_analysis ?r - rover)
              (equipped_for_imaging ?r - rover)
              (empty_store ?s - store)
              (have_rock_analysis ?r - rover ?w - waypoint)
              (have_soil_analysis ?r - rover ?w - waypoint)
              (full ?s - store)
              (calibrated ?c - camera ?r - rover)
              (supports ?c - camera ?m - mode)
              (available ?r - rover)
              (visible ?w - waypoint ?p - waypoint)
              (have_image ?r - rover ?o - objective ?m - mode)
              (communicated_soil_data ?w - waypoint)
              (communicated_rock_data ?w - waypoint)
              (communicated_image_data ?o - objective ?m - mode)
              (at_soil_sample ?w - waypoint)
              (at_rock_sample ?w - waypoint)
              (visible_from ?o - objective ?w - waypoint)
              (store_of ?s - store ?r - rover)
              (calibration_target ?i - camera ?o - objective)
              (on_board ?i - camera ?r - rover)
              (channel_free ?l - lander)
              (battery_installed ?r - rover ?b - battery ?bmax ?bcur - blevel)
              (lower ?l1 ?l2 - blevel)
              (tug_of ?t - tug ?r - rover) ; Indica que el remolque esta asociado al rover
              (valid_tug_pair ?x - rover ?y - rover) ; Indica que un par de rovers es valido para remolcar
              (empty_tug ?s - tug) ; Indica que el remolque esta libre
              (full_tug ?t - tug) ; Indica que el remolque esta ocupado
              (has_traction ?r - rover ?t - traction) ; Indica que el rover tiene un tipo de traccion
              (valid_traversal ?t - traction ?p - pathtype) ; Indica que un tipo de traccion es valido para un tipo de terreno
              (path_type ?x - waypoint ?y - waypoint ?p - pathtype) ; Indica el tipo de terreno entre dos waypoints
              (towing ?r1 - rover ?r2 - rover) ; Indica que un rover esta remolcando a otro
       )

       (:action navigate-bat
              :parameters (?r - rover ?t - traction ?p - pathtype ?w - waypoint ?z - waypoint ?b - battery ?bmax ?bcur ?bnext - blevel
              )
              :precondition (and
                     (has_traction ?r ?t) ; El rover que remolca tiene traccion
                     (path_type ?w ?z ?p) ; El tipo de terreno entre los waypoints
                     (valid_traversal ?t ?p) ; La traccion es valida para el terreno  
                     (available ?r) ; El rover esta disponible
                     (at ?r ?w) ; El rover esta en el waypoint inicial
                     (visible ?w ?z) ; El waypoint destino es visible desde el inicial
                     (battery_installed ?r ?b ?bmax ?bcur) ; El rover tiene una bateria instalada
                     (lower ?bnext ?bcur) ; El nivel de bateria despues de navegar es menor que el actual
              )
              :effect (and
                     (not (at ?r ?w)) ; El rover deja el waypoint inicial
                     (at ?r ?z) ; El rover llega al waypoint destino
                     (not (battery_installed ?r ?b ?bmax ?bcur))
                     (battery_installed ?r ?b ?bmax ?bnext)
              )
       )

       ; Accion para navegar remolcando otro rover
       (:action tow_navigate
              :parameters (?x - rover ?y - rover ?r - tug ?t - traction ?p - pathtype ?w - waypoint ?z - waypoint ?b - battery ?bmax ?bcur ?bnext - blevel)
              :precondition (and
                     (has_traction ?x ?t) ; El rover que remolca tiene traccion
                     (path_type ?w ?z ?p) ; El tipo de terreno entre los waypoints
                     (valid_traversal ?t ?p) ; La traccion es valida para el terreno                     
                     (available ?x) ; El rover que remolca esta disponible
                     (at ?x ?w) ; El rover que remolca esta en el waypoint inicial
                     (at ?y ?w) ; El rover remolcado esta en el waypoint inicial
                     (visible ?w ?z) ; El waypoint destino es visible desde el inicial
                     (tug_of ?r ?x) ; El remolque esta asociado al rover que remolca
                     (towing ?x ?y) ; El rover x esta remolcando al rover y
                     (full_tug ?r) ; El remolque esta ocupado
                     (battery_installed ?x ?b ?bmax ?bcur) ; El rover tiene una bateria instalada
                     (lower ?bnext ?bcur) ; El nivel de bateria despues de navegar es menor que el actual

              )
              :effect (and
                     (not (at ?x ?w)) ; El rover que remolca deja el waypoint inicial
                     (not (at ?y ?w)) ; El rover remolcado deja el waypoint inicial
                     (at ?x ?z) ; El rover que remolca llega al waypoint destino
                     (at ?y ?z) ; El rover remolcado llega al waypoint destino
                     (not (battery_installed ?x ?b ?bmax ?bcur))
                     (battery_installed ?x ?b ?bmax ?bnext)
              )
       )

       (:action recharge
              :parameters (?r - rover ?l - lander ?w - waypoint ?b - battery ?bmax ?bcur - blevel
              )
              :precondition (and
                     (at ?r ?w)
                     (at_lander ?l ?w)
                     (battery_installed ?r ?b ?bmax ?bcur)
              )
              :effect (and
                     (not (battery_installed ?r ?b ?bmax ?bcur))
                     (battery_installed ?r ?b ?bmax ?bmax)
              )
       )

       (:action sample_soil
              :parameters (?r - rover ?s - store ?p - waypoint)
              :precondition (and
                     (at ?r ?p)
                     (at_soil_sample ?p)
                     (equipped_for_soil_analysis ?r)
                     (store_of ?s ?r)
                     (empty_store ?s)
              )
              :effect (and
                     (not (empty_store ?s))
                     (full ?s)
                     (have_soil_analysis ?r ?p)
                     (not (at_soil_sample ?p))
              )
       )

       (:action sample_rock
              :parameters (?r - rover ?s - store ?p - waypoint)
              :precondition (and
                     (at ?r ?p)
                     (at_rock_sample ?p)
                     (equipped_for_rock_analysis ?r)
                     (store_of ?s ?r)
                     (empty_store ?s)
              )
              :effect (and
                     (not (empty_store ?s))
                     (full ?s)
                     (have_rock_analysis ?r ?p)
                     (not (at_rock_sample ?p))
              )
       )

       (:action drop
              :parameters (?r - rover ?s - store)
              :precondition (and
                     (store_of ?s ?r)
                     (full ?s)
              )
              :effect (and
                     (not (full ?s))
                     (empty_store ?s)
              )
       )

       ; Accion para que un rover remolque a otro
       (:action tug_rover
              :parameters (?x - rover ?y - rover ?t - tug ?w - waypoint)
              :precondition (and
                     (available ?x) ; El rover que remolca esta disponible
                     (available ?y) ; El rover que va a ser remolcado esta disponible
                     (valid_tug_pair ?x ?y) ; El par de rovers es valido para remolcar
                     (at ?x ?w) ; El rover que remolca esta en el waypoint inicial
                     (at ?y ?w) ; El rover que va a ser remolcado esta en el waypoint inicial
                     (tug_of ?t ?x) ; El remolque esta asociado al rover que remolca
                     (empty_tug ?t) ; El remolque del rover que remolca esta libre
              )
              :effect (and
                     (not (empty_tug ?t)) ; El remolque no esta disponible
                     (not (available ?y)) ; El rover que va a ser remolcado ya no esta disponible
                     (full_tug ?t) ; El remolque esta lleno
                     (towing ?x ?y) ; El rover x esta remolcando al rover y
              )
       )

       ; Accion para que un rover deje de remolcar a otro
       (:action detach
              :parameters (?x - rover ?y - rover ?t - tug)
              :precondition (and
                     (tug_of ?t ?x) ; El remolque esta asociado al rover que remolca
                     (full_tug ?t) ; El remolque esta ocupado
                     (towing ?x ?y) ; El rover x esta remolcando al rover y
              )
              :effect (and
                     (not (towing ?x ?y)) ; El rover x ya no esta remolcando al rover y
                     (not (full_tug ?t)) ; El remolque ya no esta ocupado                     
                     (empty_tug ?t) ; El remolque esta libre
                     (available ?y) ; El rover que era remolcado vuelve a estar libre
              )
       )

       (:action calibrate
              :parameters (?r - rover ?i - camera ?t - objective ?w - waypoint)
              :precondition (and
                     (equipped_for_imaging ?r)
                     (calibration_target ?i ?t)
                     (at ?r ?w)
                     (visible_from ?t ?w)
                     (on_board ?i ?r)
              )
              :effect (calibrated ?i ?r)
       )

       (:action take_image
              :parameters (?r - rover ?p - waypoint ?o - objective ?i - camera ?m - mode)
              :precondition (and
                     (calibrated ?i ?r)
                     (on_board ?i ?r)
                     (equipped_for_imaging ?r)
                     (supports ?i ?m)
                     (visible_from ?o ?p)
                     (at ?r ?p)
              )
              :effect (and
                     (have_image ?r ?o ?m)
                     (not (calibrated ?i ?r))
              )
       )

       (:action communicate_soil_data
              :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
              :precondition (and
                     (at ?r ?x)
                     (at_lander ?l ?y)
                     (have_soil_analysis ?r ?p)
                     (visible ?x ?y)
                     (available ?r)
                     (channel_free ?l)
              )
              :effect (and
                     (not (available ?r))
                     (not (channel_free ?l))
                     (channel_free ?l)
                     (communicated_soil_data ?p)
                     (available ?r)
              )
       )

       (:action communicate_rock_data
              :parameters (?r - rover ?l - lander ?p - waypoint ?x - waypoint ?y - waypoint)
              :precondition (and
                     (at ?r ?x)
                     (at_lander ?l ?y)
                     (have_rock_analysis ?r ?p)
                     (visible ?x ?y)
                     (available ?r)
                     (channel_free ?l)
              )
              :effect (and
                     (not (available ?r))
                     (not (channel_free ?l))
                     (channel_free ?l)
                     (communicated_rock_data ?p)
                     (available ?r)
              )
       )

       (:action communicate_image_data
              :parameters (?r - rover ?l - lander ?o - objective ?m - mode ?x - waypoint ?y - waypoint)
              :precondition (and
                     (at ?r ?x)
                     (at_lander ?l ?y)
                     (have_image ?r ?o ?m)
                     (visible ?x ?y)
                     (available ?r)
                     (channel_free ?l)
              )
              :effect (and
                     (not (available ?r))
                     (not (channel_free ?l))
                     (channel_free ?l)
                     (communicated_image_data ?o ?m)
                     (available ?r)
              )
       )
)