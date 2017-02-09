// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero


set terrain = gameLayer.createActor("PlanetCute/Grass Block", 250, 250);
terrain.move(50,100);

set x = 50;
set r = 1950;
set y = 1700;
set lol = 1000;
loop(100){
	loop(20){
		set terrain = gameLayer.createActor("PlanetCute/Grass Block");
		terrain.move(x,100);
		x = x + 100;
		set wallBlock = gameLayer.createActor("PlanetCute/Wall Block", 250, 250);
		wallBlock.move(y,150);
		y=y+2400;
		set treeTall = gameLayer.createActor("PlanetCute/Tree Tall", 250, 250);
		treeTall.move(lol,150);
		lol = lol + 500;
		terrain.typeStatic().hitSquare(100);
		
	}
	
	loop(5){
		set waterBlock = gameLayer.createActor("PlanetCute/Water Block");
		waterBlock.move(x,99);
		x = x + 100;
		waterBlock.typeStatic().hitSquare(95);
	}
	
	set rampWest = gameLayer.createActor("PlanetCute/Ramp West");
	rampWest.typeStatic().hitSquare(137);
	rampWest.move(r,135);
	r = r + 2500;
}
set tour = 350;
/*loop(90){
	set wallBlockTall = gameLayer.createActor("PlanetCute/Wall Block Tall", 850, 150);
	wallBlockTall.move(tour,150);
	tour = tour + 5000;
	wallBlockTall.typeStatic().hitSquare(100);
}*/
set hero = gameLayer.createActor("PlanetCute/rocketship");
hero.typeDynamic().hitCircle(15);
hero.move(100,500);
hero.say(font,"C'est parti, mes amis !");


//5 gemmes bleues et 10 gemmes  vertes

hero.applyForceY(20);
hero.applyForceX(20);
Stage.onTap((x, y, button) {
	hero.impulseY(50);
});
hero.onTap((x, y, button) {
	hero.impulseX(15);
});
loop(5000){
	set x = math.random(gameLayer.getWidth());
	set h = gameLayer.getHeight()-100;
	set y = math.random(h) + 100
	
	set gemBlue = gameLayer.createActor("PlanetCute/Gem Blue", 250, 250);
	gemBlue.typeSensor();
	gemBlue.hitCircle(50);
	gemBlue.scale(0.5);
	gemBlue.move(x,y);
	score  = 0;
	set winGem = function(){
		gameLayer.remove(gemBlue);
		score = score + 1;
	}
	gemBlue.onContactWith(hero,winGem);
	
	
}
/*stage.onKeyUp(function (char)){
	
}*/


// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");
