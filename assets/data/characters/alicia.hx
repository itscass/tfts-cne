import flixel.addons.effects.FlxTrail;

var self = this;
var toAdd:Bool = true;  // Using this just to make sure

function update(elapsed) {
	if(toAdd) {
		toAdd = false;
		var trail:FlxTrail = new FlxTrail(self, null, 4, 24, 0.2, 0.069);
		PlayState.instance.insert(PlayState.instance.members.indexOf(self), trail);
		for(i in 0...trail.members)
		{
			trail.members[i].x += FlxG.random.float(1, 6);
			trail.members[i].y += FlxG.random.float(1, 6);
		}
	}
}