
// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
set hero = gameLayer.createActor("PlanetCute/octopus", 20, 250);
hero.typeDynamic().hitCircle(15);
hero.move(200,450);
hero.say(font, "c'est parti!")
hero.applyForceX(25)

set grassBlock = gameLayer.createActor("PlanetCute/Grass Block", 0,100);
set x=100
grassBlock.typeStatic().hitSquare(75);
loop(300){
	x=x+100
	set grassBlock = gameLayer.createActor("PlanetCute/Grass Block", x,100) 
	grassBlock.typeStatic().hitSquare(75);
	set treeTall = gameLayer.createActor("PlanetCute/Tree Tall", 2000, 150)
	treeTall.typeStatic().hitSquare(75)
	set rampWest1 = gameLayer.createActor("PlanetCute/Ramp West",6000,150)
	set rampEast1 = gameLayer.createActor("PlanetCute/Ramp East", 6100, 150);
	rampWest1.typeStatic().hitSquare(75)
	rampEast1.typeStatic().hitSquare(75)
	set rock1 = gameLayer.createActor("PlanetCute/Rock", 8000, 150);
	rock1.typeStatic().hitSquare(75)
}


set jump=function(){
	hero.impulseY(100);
}
stage.onTap(jump);
set waterBlock = gameLayer.createActor("PlanetCute/Water Block", 100,100);
loop(10){
	set x=math.random(gameLayer.getWidth())
	set y =math.random(gameLayer.getHeight())
	set gemBlue1 = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue1.move(x, y)
	set gemOrange = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	set x1=math.random(gameLayer.getWidth())
	set y1 =math.random(gameLayer.getHeight())
	
	gemOrange.move(x1,y1)
	set x2=math.random(gameLayer.getWidth())
	set y2 =math.random(gameLayer.getHeight())
	set gemGreen = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gemGreen.move(x2,y2)
	gemBlue1.scale(1)
	gemOrange.scale(1)
	gemGreen.scale(1)
	
	gemBlue1.typeSensor()
	gemBlue1.hitCircle()
	gemOrange.typeSensor()
	gemOrange.hitCircle()
	gemGreen.typeSensor()
	gemGreen.hitCircle()
	set winGem=function(){
		gameLayer.remove(gem)
	}
	gemBlue1.onContactWith(hero, winGem)
	gemOrange.onContactWith(hero, winGem)
	gemGreen.onContactWith(hero, winGem)
	
}














// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
