
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
set hero = gameLayer.createActor("PlanetCute/beetleship", 50, 300);
hero.say (font,"Let's go");
set Depart = gameLayer.createActor("PlanetCute/Wall Block Tall",50,50);
set x=0
loop (300){
	set water = gameLayer.createActor("Platformer/water", x,30);
	water.typeStatic().hitSquare(50);
	x=x+50
}
hero.typeDynamic().hitCircle(15);
set cloud22 = gameLayer.createActor("Platformer/Cloud2", 350, 500);
set ground = gameLayer.createActor("Platformer/ground", 450, 45);
hero.applyForceX(25);

set jump=function() {
	hero.impulseY(12)
}
stage.onTap(jump)
loop(30){
	set x = math.random(gameLayer.getWidth())
	set y = math.random(gameLayer.getHeight()-300)+150
	set gemBlue = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue.move(x,y)
	gemBlue.scale(0.5)
	gemBlue.typeSensor()
	gemBlue.hitCircle()
	
	set contact = function() {
		gameLayer.remove(gemBlue)
		score=score+4
	}
	
	gemBlue.onContactWith(hero, contact) 
	
}


loop(10) {
	set y=math.random(gameLayer.getheight()-300)+150
	set star = gameLayer.createActor("PlanetCute/Star", 1250,y)
	star.typeSensor()
	star.hitCircle()
	set falstar=function(){
		gameLayer.remove(star)
		score=score-2
	}
	
	
}
star.onContactWith(hero, falstar)








// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
