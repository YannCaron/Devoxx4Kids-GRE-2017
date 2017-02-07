algo.hide()

// on créer x qu'on initialise
set x = 0;

// boucle du jeu, peu-t-être infinie
loop (200) {
	// on efface
	algo.clear()

	// on augmente la coordonnée
	x = x + 5;
	
	// on deplace et on dessine
	algo.goTo(x, 0)
	algo.circle(100)
	
	// on attends un peu (50 ms)
	util.wait(50)
}