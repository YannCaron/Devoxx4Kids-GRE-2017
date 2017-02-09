// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

set hero = gameLayer.createActor("PlanetCute/Character Boy", 250, 250);
hero.move(200,600);
hero.say(font,"allons y !");
set herbe = gameLayer.createActor("PlanetCute/Grass Block", 0, 0);
set x=0
loop(300){
	set herbe = gameLayer.createActor("PlanetCute/Grass Block", 250, 250);
	herbe.move(x,100);
	x=x+100
	herbe.typeStatic().hitSquare(45);
}
set treeTall = gameLayer.createActor("PlanetCute/Tree Tall", 250, 250);
treeTall.move(1650,175)
hero.typeDynamic().hitCircle(0.999999);
treeTall.typeStatic().hitSquare(10);
hero.applyForceX(25);

set saut = function() {
	hero.impulseY(10);
}
stage.onTap(saut);

loop(20){
	set X=math.random(gameLayer.getWidth())
	set Y=math.random(gameLayer.getHeight())
	set gemOrange = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	gemOrange.move(X, Y)
	gemOrange.typeSensor()
	gemOrange.scale(0.5)
	gemOrange.hitcircle(50)
	
	set winGem=function(){
		gameLayer.remove(gemOrange)
	}
	gemOrange.onContactWith(hero, winGem)
}
loop(2){
	set X=math.random(gameLayer.getWidth())
	set Y=math.random(gameLayer.getHeight())
	set gemBlue = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue.move(X, Y)
	gemBlue.typeSensor()
	gemBlue.scale(0.7)
	gemBlue.hitcircle(50)
		set winGem=function(){
		gameLayer.remove(gemBlue)
	}
	gemBlue.onContactWith(hero, winGem)
}

loop(1){
	set X=math.random(gameLayer.getWidth())
	set Y=math.random(gameLayer.getHeight())
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gemGreen.move(X, Y)
	gemGreen.typeSensor()
	gemGreen.scale(1)
		gemGreen.hitcircle(50)
		set winGem=function(){
		gameLayer.remove(gemGreen)
	}
	gemGreen.onContactWith(hero, winGem)	
}
loop(6){set X=math.random(gameLayer.getWidth())
	set Y=math.random(gameLayer.getHeight())
	set enemyShip1 = gameLayer.createActor("SpaceArt/enemyShip", 250, 250);
	enemyShip1.move(X, Y)
}
















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
