// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero
set hero = gameLayer.createActor("PlanetCute/rocketship", 250, 250);
hero.move(200, 400) ;
hero.say(font, "GO!") ;
hero.typeDynamic();
hero.hitCircle(20) ;
set x=0 ;

loop(150){
	set grassBlock = gameLayer.createActor("PlanetCute/Ramp South",50, 100);
	grassBlock.move(x,50);
	grassBlock.typeStatic().hitSquare(75) ;
	x=x+100
}
set x = 7500;
loop(10){
	set Water = gameLayer.createActor("PlanetCute/Water Block", 50, 100);
	Water.move(x, 50);
	Water.typeStatic().hitSquare(75) ;
	x=x+100;
}
loop(150){
	set grassBlock = gameLayer.createActor("PlanetCute/Ramp South",50, 100);
	grassBlock.move(x,50);
	grassBlock.typeStatic().hitSquare(75) ;
	x=x+100
}
set jump=function(){
	hero.impulseY(55)
}
stage.onTap(jump)
hero.applyForceX(15.999999999999999999999999999999999999999);

loop (20){
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight());
	set gem = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gem.typeSensor().hitCircle()
	gem.scale(1)
	gem.move(x,y)
set winGem = function(){
  gameLayer.remove(gem)
score = score+1
}	
gem.onContactWith(hero, winGem)	
}
loop (20){
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight());
	set gem = gameLayer.createActor("PlanetCute/Gem Green", 250, 250);
	gem.typeSensor().hitCircle()
	gem.scale(1)
	gem.move(x,y)
set winGem = function(){
  gameLayer.remove(gem)
score = score+1
}	
gem.onContactWith(hero, winGem)	
}
loop (20){
	set x = math.random(gameLayer.getWidth());
	set y = math.random(gameLayer.getHeight());
	set gem = gameLayer.createActor("PlanetCute/Gem Orange", 250, 250);
	gem.typeSensor().hitCircle()
	gem.scale(1)
	gem.move(x,y)
set winGem = function(){
  gameLayer.remove(gem)
score = score+1
}	
gem.onContactWith(hero, winGem)
}

















// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
