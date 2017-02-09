// -----------------------------------------------------------------------------
// CuteJet by CyaNn & ALGEA
// NE PAS MODIFIER CETTE PARTIE DU CODE

include("../includes/CuteJet.include1");

// On commence à partir d'ici
// A NOUS DE JOUER
// -----------------------------------------------------------------------------
// Variables utiles : score, life, hero

set hero = gameLayer.createActor("PlanetCute/Character Princess Girl", 250, 250);
//set hero = gameLayer.createActor("PlanetCute/rocketship")
hero.move(200, 400);
hero.say(font, "Allons-y!");
hero.typeDynamic().hitCircle(15)
hero.applyForceX(1);
set x=0
loop(300){
	set grassBlock = gameLayer.createActor("PlanetCute/Grass Block");
	grassBlock.move(x,50);
	x=x+100
	grassBlock.typeStatic().hitSquare(75);
}

//loop(30){
	//set dirt=gameLayer.createActor( "PlanetCute\Dirt Block")
	//set dirt="PlanetCute\Dirt Block"
	//set dirt =math.random(gameLayer.getWidth());
	//dirt.typeStatic().hitSquare(75);
	//}
set jump = function() {
	hero.impulseY(5)
}
stage.onTap(jump)
{
	hero.isContacting(grassBlock)
	hero.impulseY(1)
}
//hero.setRestitution(0.6)


loop(150) {
	set gem = gameLayer.createActor("Platformer/coin");
	gem.hitCircle()
	gem.typeSensor()
	gem.scale(1.5)
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight())
	gem.move (x, y)
	set winGem=function() {
		gameLayer.remove(gem)
		score=score+1
		hero.applyForceX(score)
	}
	
	gem.onContactWith(hero,winGem)
}

loop(10) {
	set key = gameLayer.createActor("PlanetCute/Heart");
	key.hitCircle()
	key.typeSensor()
	key.scale(0.75)
	set x=math.random(gameLayer.getWidth())
	set y=math.random(gameLayer.getHeight())
	key.move (x, y)
	set winKey=function() {
		gameLayer.remove(key)
		life=life+1
		
	}
	
	key.onContactWith(hero,winKey)
	
}




// -----------------------------------------------------------------------------
// NE PAS MODIFIER LA PARTIE SUIVANTE DU CODE

include("../includes/CuteJet.include2");

