import flixel.math.FlxMath;
import funkin.backend.shaders.CustomShader;

var coolShader:CustomShader;

function create()
{
	coolShader = new CustomShader('alicia-particles');
}

var bugger:Float = 1.5;
var fucks:FunkinSprite;

function postCreate(){
	if(Options.gameplayShaders) {
		fucks = new FunkinSprite(0,-700).makeGraphic(FlxG.width, FlxG.height, FlxColor.PURPLE);
		fucks.scale.set(5,5);
		fucks.shader = coolShader;
	
	
		insert(members.indexOf(room), fucks);
	
		coolShader.inten = 1.5;
		coolShader.doDiv = false;


	}
}

var updater:Float=0;

function destroy() {
	trace(':c');
	if(Options.gameplayShaders) {
		coolShader = null;
		fucks.destroy();
	}
}

function postUpdate(elapsed:Float) {
	
		if(Options.gameplayShaders){
		
			bugger = lerp(bugger, 1.5, 0.06);
			coolShader.inten = daVal;

			updater+=elapsed;

			coolShader.iTime = updater;
		}
}