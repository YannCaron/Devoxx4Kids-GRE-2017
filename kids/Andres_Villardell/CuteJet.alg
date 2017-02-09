// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
set hero = gameLayer.createActor("PlanetCute/Character Horn Girl", 250, 250);
hero.move(200,400);
hero.say(font,"Go !");
hero.typeDynamic().hitCircle(3);
hero.applyForceX(2.5)
set x=0
loop(300) {
	set terrain = gameLayer.createActor("PlanetCute/Grass Block", x, 85);
	x=x+100
	terrain.typeStatic().hitSquare(50)
	
}
loop(25) {
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight()-100)
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", x, y);
	gem.move(x,y+125)
	gem.scale (0.6).typeSensor().hitCircle()
	set winGem = function() {
		score=score+5
	gameLayer.remove(gem)
}
gem.onContactWith(hero, winGem)
}
loop(17) {
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight()-100)
	set obstacle= gameLayer.createActor("Platformer/bonus", x, y);
	obstacle.move(x,y+125)
	obstacle.scale (1.5).typeSensor().hitCircle()
		set danger = function() {
	gameLayer.remove(hero)
	set hero = gameLayer.createActor("PlanetCute/Character Horn Girl", 250, 250);
	hero.move(200,400);
hero.say(font,"Go !");
hero.typeDynamic().hitCircle(3);
hero.applyForceX(2.5)
set jump = function() {
	hero.impulseY(5.5);
}
stage.onTap (jump);
}
obstacle.onContactWith(hero, danger)
}


set jump = function() {
	hero.impulseY(5.5);
}
stage.onTap (jump);

















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
