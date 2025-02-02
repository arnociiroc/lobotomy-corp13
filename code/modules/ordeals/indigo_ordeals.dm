// Noon
/datum/ordeal/amber_dawn/indigo_noon
	name = "Noon of Indigo"
	annonce_text = "When night falls in the Backstreets, they will come."
	annonce_sound = 'sound/effects/ordeals/indigo_start.ogg'
	end_sound = 'sound/effects/ordeals/indigo_end.ogg'
	level = 2
	reward_percent = 0.15
	spawn_places = 4
	spawn_amount = 3
	spawn_type = /mob/living/simple_animal/hostile/ordeal/indigo_noon
	place_player_multiplicator = 0.08
	spawn_player_multiplicator = 0
	color = "#3F00FF"

// Midnight
/datum/ordeal/indigo_midnight
	name = "Midnight of Indigo"
	annonce_text = "For the sake of our families in our village, we cannot stop."
	annonce_sound = 'sound/effects/ordeals/indigo_start.ogg'
	end_sound = 'sound/effects/ordeals/indigo_end.ogg'
	level = 4
	reward_percent = 0.25
	color = "#3F00FF"

/datum/ordeal/indigo_midnight/Run()
	..()
	var/X = pick(GLOB.department_centers)
	var/turf/T = get_turf(X)
	var/mob/living/simple_animal/hostile/ordeal/indigo_midnight/C = new(T)
	ordeal_mobs += C
	C.ordeal_reference = src
