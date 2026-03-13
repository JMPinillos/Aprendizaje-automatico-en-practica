(define (problem roverprob1234)
	(:domain Rover-battery)

	(:objects
		general - Lander
		colour high_res low_res - Mode
		rover0 rover1 - Rover ; Nuevo rover1 agregado
		rover0store rover1store - Store ; Nuevo store para rover1 agregado
		waypoint0 waypoint1 waypoint2 waypoint3 - Waypoint
		camera0 camera1 - Camera ; Nueva camera1 agregada
		objective0 objective1 - Objective
		b0 b1 b2 b3 b4 b5 - Blevel
		bat0 bat1 - Battery ; Nueva bateria para los rovers agregada
	)

	(:init
		(visible waypoint1 waypoint0)
		(visible waypoint0 waypoint1)
		(visible waypoint2 waypoint0)
		(visible waypoint0 waypoint2)
		(visible waypoint2 waypoint1)
		(visible waypoint1 waypoint2)
		(visible waypoint3 waypoint0)
		(visible waypoint0 waypoint3)
		(visible waypoint3 waypoint1)
		(visible waypoint1 waypoint3)
		(visible waypoint3 waypoint2)
		(visible waypoint2 waypoint3)
		(at_soil_sample waypoint0)
		(at_rock_sample waypoint1)
		(at_soil_sample waypoint2)
		(at_rock_sample waypoint2)
		(at_soil_sample waypoint3)
		(at_rock_sample waypoint3)
		(at_lander general waypoint0)
		(channel_free general)
		(at rover0 waypoint3)
		(at rover1 waypoint3) ; Nuevo rover1 ubicado en waypoint3
		(available rover0)
		(available rover1) ; Nuevo rover1 disponible
		(store_of rover0store rover0)
		(store_of rover1store rover1) ; Nuevo store asociado al rover1
		(empty rover0store)
		(empty rover1store) ; Nuevo store del rover1 esta vacio
		(equipped_for_soil_analysis rover0)
		(equipped_for_rock_analysis rover0)
		(equipped_for_imaging rover0)
		(equipped_for_soil_analysis rover1) ; Nuevo rover1 equipado para analisis de suelo
		(equipped_for_rock_analysis rover1) ; Nuevo rover1 equipado para analisis de roca
		(equipped_for_imaging rover1) ; Nuevo rover1 equipado para toma de imagenes
		(can_traverse rover0 waypoint3 waypoint0)
		(can_traverse rover0 waypoint0 waypoint3)
		(can_traverse rover0 waypoint3 waypoint1)
		(can_traverse rover0 waypoint1 waypoint3)
		(can_traverse rover0 waypoint1 waypoint2)
		(can_traverse rover0 waypoint2 waypoint1)
		(can_traverse rover1 waypoint3 waypoint0) ; Nueva capacidad de navegacion del waypoint3 al waypoint0 para rover1 agregada
		(can_traverse rover1 waypoint0 waypoint3) ; Nueva capacidad de navegacion del waypoint0 al waypoint3 para rover1 agregada
		(can_traverse rover1 waypoint3 waypoint1) ; Nueva capacidad de navegacion del waypoint3 al waypoint1 para rover1 agregada
		(can_traverse rover1 waypoint1 waypoint3) ; Nueva capacidad de navegacion del waypoint1 al waypoint3 para rover1 agregada
		(can_traverse rover1 waypoint1 waypoint2) ; Nueva capacidad de navegacion del waypoint1 al waypoint2 para rover1 agregada
		(can_traverse rover1 waypoint2 waypoint1) ; Nueva capacidad de navegacion del waypoint2 al waypoint1 para rover1 agregada
		(on_board camera0 rover0)
		(calibration_target camera0 objective1)
		(supports camera0 colour)
		(supports camera0 high_res)
		(on_board camera1 rover1) ; Nueva camera1 a bordo del rover1		
		(calibration_target camera1 objective0) ; Nueva camera1 con objetivo de calibracion objective0
		(supports camera1 colour) ; Nueva camera1 soporta modo color
		(supports camera1 high_res) ; Nueva camera1 soporta modo alta resolucion

		; Baterias cargadas en rovers
		(battery_installed rover0 bat0 b4 b4)
		(battery_installed rover1 bat1 b4 b4) ; Nueva bateria cargada en rover1

		; Niveles de bateria
		(lower b0 b1)
		(lower b1 b2)
		(lower b2 b3)
		(lower b3 b4)
		(lower b4 b5)

		; Visibilidad de objetivos
		(visible_from objective0 waypoint0)
		(visible_from objective0 waypoint1)
		(visible_from objective0 waypoint2)
		(visible_from objective0 waypoint3)
		(visible_from objective1 waypoint0)
		(visible_from objective1 waypoint1)
		(visible_from objective1 waypoint2)
	)

	(:goal
		(and
			(communicated_soil_data waypoint2)
			(communicated_rock_data waypoint3)
			(communicated_soil_data waypoint0) ; Agregado objetivo comunicar datos de suelo de waypoint0
			(communicated_rock_data waypoint1) ; Agregado objetivo comunicar datos de roca de waypoint1
			(communicated_rock_data waypoint2) ; Agregado objetivo comunicar datos de roca de waypoint2
			(communicated_soil_data waypoint3) ; Agregado objetivo comunicar datos de suelo de waypoint3
			(communicated_image_data objective1 high_res)
			(communicated_image_data objective0 high_res) ; Agregado objetivo comunicar imagen de objective0 en alta resolucion
			(communicated_image_data objective1 colour) ; Agregado objetivo comunicar imagen de objective1 en color
			(communicated_image_data objective0 colour) ; Agregado objetivo comunicar imagen de objective0 en color
		)
	)
)