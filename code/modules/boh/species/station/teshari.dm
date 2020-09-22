/datum/species/teshari
	name = SPECIES_TESHARI
	name_plural = SPECIES_TESHARI
	icon_template = 'icons/mob/human_races/species/template.dmi'
	icobase = 'icons/mob/human_races/species/teshari/body.dmi'
	deform = 'icons/mob/human_races/species/teshari/deformed_body.dmi'
	husk_icon = 'icons/mob/human_races/species/teshari/husk.dmi'
	preview_icon = 'icons/mob/human_races/species/teshari/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	tail = "teshtail"
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE

	unarmed_types = list(/datum/unarmed_attack/kick, /datum/unarmed_attack/claws, /datum/unarmed_attack/bite/sharp)
	primitive_form = "Farwa"
	darksight_range = 5
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_TINY
	breath_pressure = 16
	slowdown = -0.50
	brute_mod = 1.5
	burn_mod = 1.5
	blood_volume = 560

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 2.5

	min_age = 18
	max_age = 100

	description = "Wip yell at Allakai for only doing cattos"

	cold_level_1 = 200 //Default 260 - Lower is better
	cold_level_2 = 170 //Default 200
	cold_level_3 = 90 //Default 120

	heat_level_1 = 340 //Default 360 - Higher is better
	heat_level_2 = 390 //Default 400
	heat_level_3 = 980 //Default 1000

	spawn_flags = SPECIES_CAN_JOIN
	appearance_flags = HAS_HAIR_COLOR | HAS_LIPS | HAS_UNDERWEAR | HAS_SKIN_COLOR | HAS_EYE_COLOR

	flesh_color = "#34af10"

	reagent_tag = IS_TESHARI
	base_color = "#066000"
	blood_color = "#660000"

	move_trail = /obj/effect/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 3300
	heat_discomfort_strings = list(
		"You feel warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 210
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel cold and sluggish.",
		"Your feathers bristle against the cold."
		)
	breathing_sound = 'sound/voice/monkey.ogg'

	descriptors = list(
		/datum/mob_descriptor/height = 0.5,
		/datum/mob_descriptor/build = 0.5
		)

	mob_size = MOB_SMALL
	strength = STR_HIGH

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_TESHARI
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_TESHARI
		),
		TAG_FACTION = list(
			FACTION_TESHARI,
		),
		TAG_RELIGION =  list(
			RELIGION_TESHARI
		)
	)

	pain_emotes_with_pain_level = list(
			list(/decl/emote/audible/wheeze) = 75,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/wheeze, /decl/emote/audible/hiss) = 50,
			list(/decl/emote/audible/grunt, /decl/emote/audible/groan, /decl/emote/audible/hiss) = 25,
		)

/datum/species/sergal/equip_survival_gear(var/mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/sergal/get_bodytype(var/mob/living/carbon/human/H)
	return SPECIES_TESHARI
