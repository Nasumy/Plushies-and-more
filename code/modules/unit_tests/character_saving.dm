/datum/unit_test/character_saving/Run()
	try
		var/datum/preferences/P = new
		P.load_path("test")
		P.features["flavor_text"] = "Foo"
		P.features["skyrat_ooc_notes"] = "Bar"
		P.save_character()
		P.load_character()
		if(P.features["flavor_text"] != "Foo")
			Fail("Flavor text is failing to save.")
		if(P.features["skyrat_ooc_notes"] != "Bar")
			Fail("OOC text is failing to save.")
	catch(var/exception/e)
		Fail("Failed to save and load character due to exception [e.name]")
