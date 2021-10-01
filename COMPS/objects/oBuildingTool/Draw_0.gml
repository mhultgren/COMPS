if (!instance_exists(oTutorialHouse) || instance_exists(oHouse)) {
	draw_self();
} else if (array_contains(global.parameters_met, "tutorial alert sent")) draw_self();