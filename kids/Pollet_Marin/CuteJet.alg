// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

set hero = gameLayer.createActor("PlanetCute/rocketship", 250, 250);
hero.move (100, 500);
hero.say(font, "A l'aide");
hero.typeDynamic().hitCircle(15);
hero.applyForceX(10);
set grassBlock = gameLayer.createActor("PlanetCute/Grass Block",0, 90);
grassBlock.typeStatic().hitSquare(75);
set x=0;
loop(300) {
	set grassBlock = gameLayer.createActor("PlanetCute/Grass Block",0, 90);
	grassBlock.move(x, 90);
	x = x+100;
	grassBlock.typeStatic().hitSquare(75);
}
set surprise = gameLayer.createActor("PlanetCute/Chest Closed", 250, 250);
surprise.move(900, 500);
surprise.typeStatic().hitSquare(75);
set enemi1 = gameLayer.createActor("PlanetCute/Character Cat Girl", 250, 250);
enemi1.move(2200, 170)
set escalier = gameLayer.createActor("PlanetCute/Ramp West", 250, 250);
escalier.move(2600, 210); 
ESCALIER.typeStatic().hitSquare(75);
set f = function(){hero.impulsey(50)};
stage.ontap(f);
set arbre1 = gameLayer.createActor("PlanetCute/Tree Ugly", 250, 250);
arbre1.move(500, 170);
arbre1.typeStatic().hitSquare(75);
set arbre2 = gameLayer.createActor("PlanetCute/Tree Tall", 250, 250);
arbre2.move(1000, 170);
arbre2.typeStatic().hitSquare(75);
set eau = gameLayer.createActor("PlanetCute/Water Block", 250, 250);
eau.move(1200, 170);
eau.typeStatic().hitSquare(75);
set arbre3 = gameLayer.createActor("PlanetCute/Tree Short", 250, 250);
arbre3.move(1500, 170);
arbre3.typeStatic().hitSquare(75);
set eau = gameLayer.createActor("PlanetCute/Water Block", 250, 250);
eau.move(2700, 210);
eau.typeStatic().hitSquare(75);
set eau = gameLayer.createActor("PlanetCute/Water Block", 250, 250);
eau.move(2800, 210);
eau.typeStatic().hitSquare(75);
set eau = gameLayer.createActor("PlanetCute/Water Block", 250, 250);
eau.move(2900, 210);
eau.typeStatic().hitSquare(75);
set escalier2 = gameLayer.createActor("PlanetCute/Ramp East", 250, 250);
escalier2.move(3000, 210);
escalier2.typeStatic().hitSquare(75);

loop(10) {
	set gem3 = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight());
	gem3.move(x, y)
	gem3.scale(0.2)
	gem3.typeSensor()
	gem3.hitcircle()
	set winGem = function () {{gameLayer.remove(gem3)}}
gem3.onContactWith(hero, winGem)	
}

loop (10) {
	set gem1 = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight()); 
	gem1.move(x, y)
	gem1.scale(0.2)
	gem1.typeSensor()
	gem1.hitcircle()
	set winGem = function (){gameLayer.remove(gem1)}
gem1.onContactWith(hero, winGem)
}


loop(15) {
	set gem2 = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight());
	gem2.move(x, y)
	gem2.scale(0.2)
	gem2.typeSensor()
	gem2.hitcircle()
	set winGem = function (){gameLayer.remove(gem2)}
gem2.onContactWith(hero, winGem)
}









include("../includes/CuteJet.include2");
