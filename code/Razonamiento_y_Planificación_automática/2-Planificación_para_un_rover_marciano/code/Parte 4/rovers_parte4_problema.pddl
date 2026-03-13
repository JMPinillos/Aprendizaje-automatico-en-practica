(define (problem roverprob1234)
	(:domain Rover-battery)

	(:objects
		general - Lander
		colour high_res low_res - Mode
		rover0 rover1 rover2 rover3 - Rover ; 3 nuevos rovers agregados
		wheels tracks legs - Traction ; Tracciones agregadas
		rover0tug rover1tug rover2tug rover3tug - Tug ; Remolques agregados
		rover0store rover1store rover2store rover3store - Store ; 3 nuevos stores para los nuevos rovers agregados
		waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 - Waypoint ; 2 nuevos waypoints agregados
		rocky sandy slope flat - Pathtype ; Tipos de terreno agregados
		camera0 camera1 camera2 camera3 - Camera ; 3 nuevas camaras agregadas
		objective0 objective1 - Objective
		b0 b1 b2 b3 b4 b5 - Blevel
		bat0 bat1 bat2 bat3 - Battery ; 3 nuevas baterias agregadas
		)

	(:init
		(visible waypoint0 waypoint1)
		(visible waypoint0 waypoint2)
		(visible waypoint0 waypoint3)
		(visible waypoint0 waypoint4) ; Nuevo waypoint4 visible desde waypoint0
		(visible waypoint0 waypoint5) ; Nuevo waypoint5 visible desde waypoint0
		(visible waypoint1 waypoint0)
		(visible waypoint1 waypoint2)
		(visible waypoint1 waypoint3)
		(visible waypoint1 waypoint4) ; Nuevo waypoint4 visible desde waypoint1
		(visible waypoint1 waypoint5) ; Nuevo waypoint5 visible desde waypoint1
		(visible waypoint2 waypoint0)
		(visible waypoint2 waypoint1)
		(visible waypoint2 waypoint3)
		(visible waypoint2 waypoint4) ; Nuevo waypoint4 visible desde waypoint2
		(visible waypoint2 waypoint5) ; Nuevo waypoint5 visible desde waypoint2
		(visible waypoint3 waypoint0)
		(visible waypoint3 waypoint1)
		(visible waypoint3 waypoint2)
		(visible waypoint3 waypoint4) ; Nuevo waypoint4 visible desde waypoint3
		(visible waypoint3 waypoint5) ; Nuevo waypoint5 visible desde waypoint3
		(visible waypoint4 waypoint0) ; Nuevo waypoint4 visible desde waypoint0
		(visible waypoint4 waypoint1) ; Nuevo waypoint4 visible desde waypoint1
		(visible waypoint4 waypoint2) ; Nuevo waypoint4 visible desde waypoint2
		(visible waypoint4 waypoint3) ; Nuevo waypoint4 visible desde waypoint3
		(visible waypoint4 waypoint5) ; Nuevo waypoint4 visible desde waypoint5
		(visible waypoint5 waypoint0) ; Nuevo waypoint5 visible desde waypoint0
		(visible waypoint5 waypoint1) ; Nuevo waypoint5 visible desde waypoint1
		(visible waypoint5 waypoint2) ; Nuevo waypoint5 visible desde waypoint2
		(visible waypoint5 waypoint3) ; Nuevo waypoint5 visible desde waypoint3
		(visible waypoint5 waypoint4) ; Nuevo waypoint5 visible desde waypoint4
		(at_soil_sample waypoint0)
		(at_rock_sample waypoint1)
		(at_soil_sample waypoint2)
		(at_rock_sample waypoint2)
		(at_soil_sample waypoint3)
		(at_rock_sample waypoint3)
		(at_soil_sample waypoint4) ; Nueva muestra de suelo en waypoint4
		(at_soil_sample waypoint5) ; Nueva muestra de suelo en waypoint5
		(at_rock_sample waypoint5) ; Nueva muestra de roca en waypoint5
		(at_lander general waypoint0)
		(channel_free general)
		(at rover0 waypoint3)
		(at rover1 waypoint3) ; Nuevo rover1 disponible
		(at rover2 waypoint3) ; Nuevo rover2 disponible
		(at rover3 waypoint3) ; Nuevo rover3 disponible
		(available rover0)
		(available rover1) ; Nuevo rover1 disponible
		(available rover2) ; Nuevo rover2 disponible
		(available rover3) ; Nuevo rover3 disponible
		(store_of rover0store rover0)
		(store_of rover1store rover1) ; Nuevo store asociado al rover1
		(store_of rover2store rover2) ; Nuevo store asociado al rover2
		(store_of rover3store rover3) ; Nuevo store asociado al rover3
		(empty_store rover0store)
		(empty_store rover1store) ; Nuevo store del rover1 esta vacio
		(empty_store rover2store) ; Nuevo store del rover2 esta vacio
		(empty_store rover3store) ; Nuevo store del rover3 esta vacio
		(tug_of rover0tug rover0) ; Nuevo tug del rover0 asociado
		(tug_of rover1tug rover1) ; Nuevo tug del rover1 asociado
		(tug_of rover2tug rover2) ; Nuevo tug del rover2 asociado
		(tug_of rover3tug rover3) ; Nuevo tug del rover3 asociado 
		(empty_tug rover0tug) ; Nuevo tug del rover0 esta libre
		(empty_tug rover1tug) ; Nuevo tug del rover1 esta libre
		(empty_tug rover2tug) ; Nuevo tug del rover2 esta libre
		(empty_tug rover3tug) ; Nuevo tug del rover3 esta libre
		(valid_tug_pair rover0 rover1) ; Nuevo par valido de rovers para remolque entre rover0 y rover1
		(valid_tug_pair rover0 rover2) ; Nuevo par valido de rovers para remolque entre rover0 y rover2
		(valid_tug_pair rover0 rover3) ; Nuevo par valido de rovers para remolque entre rover0 y rover3
		(valid_tug_pair rover1 rover0) ; Nuevo par valido de rovers para remolque entre rover1 y rover0
		(valid_tug_pair rover1 rover2) ; Nuevo par valido de rovers para remolque entre rover1 y rover2
		(valid_tug_pair rover1 rover3) ; Nuevo par valido de rovers para remolque entre rover1 y rover3
		(valid_tug_pair rover2 rover0) ; Nuevo par valido de rovers para remolque entre rover2 y rover0
		(valid_tug_pair rover2 rover1) ; Nuevo par valido de rovers para remolque entre rover2 y rover1
		(valid_tug_pair rover2 rover3) ; Nuevo par valido de rovers para remolque entre rover2 y rover3
		(valid_tug_pair rover3 rover0) ; Nuevo par valido de rovers para remolque entre rover3 y rover0
		(valid_tug_pair rover3 rover1) ; Nuevo par valido de rovers para remolque entre rover3 y rover1
		(valid_tug_pair rover3 rover2) ; Nuevo par valido de rovers para remolque entre rover3 y rover2
		(equipped_for_soil_analysis rover0)
		(equipped_for_soil_analysis rover1) ; Nuevo rover1 equipado para analisis de suelo
		(equipped_for_soil_analysis rover2) ; Nuevo rover2 equipado para analisis de suelo
		(equipped_for_soil_analysis rover3) ; Nuevo rover3 equipado para analisis de suelo
		(equipped_for_rock_analysis rover0)
		(equipped_for_rock_analysis rover1) ; Nuevo rover1 equipado para analisis de roca
		(equipped_for_rock_analysis rover2) ; Nuevo rover2 equipado para analisis de roca
		(equipped_for_rock_analysis rover3) ; Nuevo rover3 equipado para analisis de roca
		(equipped_for_imaging rover0)
		(equipped_for_imaging rover1) ; Nuevo rover1 equipado para toma de imagenes
		(equipped_for_imaging rover2) ; Nuevo rover2 equipado para toma de imagenes
		(equipped_for_imaging rover3) ; Nuevo rover3 equipado para toma de imagenes
		(has_traction rover0 wheels) ; Nueva traccion con wheels para rover0
		(has_traction rover1 tracks) ; Nueva traccion con tracks para rover1
		(has_traction rover2 legs) ; Nueva traccion con legs para rover2
		(has_traction rover3 wheels) ; Nueva traccion con wheels para rover3
		(valid_traversal wheels flat) ; Nueva validacion de terreno flat para wheels
		(valid_traversal tracks sandy) ; Nueva validacion de terreno sandy para tracks
		(valid_traversal tracks slope) ; Nueva validacion de terreno slope para tracks
		(valid_traversal legs rocky) ; Nueva validacion de terreno rocky para legs		
		(path_type waypoint3 waypoint0 flat) ; Nuevo path_type entre waypoint3 y waypoint0
		(path_type waypoint0 waypoint3 flat) ; Nuevo path_type entre waypoint0 y waypoint3
		(path_type waypoint3 waypoint1 sandy) ; Nuevo path_type entre waypoint3 y waypoint1
		(path_type waypoint1 waypoint3 sandy) ; Nuevo path_type entre waypoint1 y waypoint3
		(path_type waypoint1 waypoint2 slope) ; Nuevo path_type entre waypoint1 y waypoint2
		(path_type waypoint2 waypoint1 slope) ; Nuevo path_type entre waypoint2 y waypoint1
		(path_type waypoint1 waypoint5 rocky) ; Nuevo path_type entre waypoint1 y waypoint5
		(path_type waypoint5 waypoint1 rocky) ; Nuevo path_type entre waypoint5 y waypoint1
		(path_type waypoint3 waypoint5 flat) ; Nuevo path_type entre waypoint3 y waypoint5
		(path_type waypoint5 waypoint3 flat) ; Nuevo path_type entre waypoint5 y waypoint3
		(path_type waypoint0 waypoint4 rocky) ; Nuevo path_type entre waypoint0 y waypoint4
		(path_type waypoint4 waypoint0 rocky) ; Nuevo path_type entre waypoint4 y waypoint0
		(path_type waypoint2 waypoint4 rocky) ; Nuevo path_type entre waypoint2 y waypoint4
		(path_type waypoint4 waypoint2 rocky) ; Nuevo path_type entre waypoint4 y waypoint2	
		(on_board camera0 rover0)
		(on_board camera1 rover1) ; Nueva camara1 a bordo del rover1
		(on_board camera2 rover2) ; Nueva camara2 a bordo del rover2
		(on_board camera3 rover3) ; Nueva camara3 a bordo del rover3
		(calibration_target camera0 objective1)
		(calibration_target camera1 objective1) ; Nueva camera1 con objetivo de calibracion objective1
		(calibration_target camera2 objective0) ; Nueva camera2 con objetivo de calibracion objective0
		(calibration_target camera3 objective0) ; Nueva camera3 con objetivo de calibracion objective0
		(supports camera0 colour)
		(supports camera1 colour) ; Nueva camara1 soporta modo color
		(supports camera2 colour) ; Nueva camara2 soporta modo color
		(supports camera3 colour) ; Nueva camara3 soporta modo color
		(supports camera0 high_res)
		(supports camera1 high_res) ; Nueva camara1 soporta modo alta resolucion
		(supports camera2 high_res) ; Nueva camara2 soporta modo alta resolucion
		(supports camera3 high_res) ; Nueva camara3 soporta modo alta resolucion

		; Baterias cargadas en rovers
		(battery_installed rover0 bat0 b4 b4) ; Bateria bat0 en rover0: maximo b4, nivel actual b4
		(battery_installed rover1 bat1 b5 b5) ; Bateria bat1 en rover1: maximo b5, nivel actual b5
		(battery_installed rover2 bat2 b5 b4) ; Bateria bat2 en rover2: maximo b5, nivel actual b4
		(battery_installed rover3 bat3 b3 b3) ; Bateria bat3 en rover3: maximo b3, nivel actual b3

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
			(communicated_soil_data waypoint0) ; Agregado objetivo comunicar datos de suelo de waypoint0
			(communicated_rock_data waypoint1) ; Agregado objetivo comunicar datos de roca de waypoint1
			(communicated_soil_data waypoint2)
			(communicated_rock_data waypoint2) ; Agregado objetivo comunicar datos de roca de waypoint2
			(communicated_soil_data waypoint3) ; Agregado objetivo comunicar datos de suelo de waypoint3			
			(communicated_rock_data waypoint3)
			(communicated_soil_data waypoint4) ; Agregado objetivo comunicar datos de suelo de waypoint4
			(communicated_soil_data waypoint5) ; Agregado objetivo comunicar datos de suelo de waypoint5
			(communicated_rock_data waypoint5) ; Agregado objetivo comunicar datos de roca de waypoint5
			(communicated_image_data objective0 colour) ; Agregado objetivo comunicar imagen de objective0 en color
			(communicated_image_data objective0 high_res) ; Agregado objetivo comunicar imagen de objective0 en alta resolucion
			(communicated_image_data objective1 colour) ; Agregado objetivo comunicar imagen de objective1 en color
			(communicated_image_data objective1 high_res)
		)
	)
)