package settings;

import animateatlas.AtlasFrameMaker;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.addons.effects.FlxTrail;
import flixel.animation.FlxBaseAnimation;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.tweens.FlxTween;
import flixel.util.FlxSort;
import Section.SwagSection;
import openfl.utils.AssetType;
import openfl.utils.Assets;
import haxe.Json;
import haxe.format.JsonParser;
import shaders.CromaticShader;
import flixel.system.FlxAssets.FlxShader;
using StringTools;

typedef StageFile = {
    var directory:String;
	var defaultZoom:Float;

	var antialiasing:Bool;
	var scale:Float;

	var stagePos:Array<Float>;
	var boyfriendPos:Array<Float>;
	var girlfriendPos:Array<Float>;
	var opponentPos:Array<Float>;
	var hide_girlfriend:Bool;
}

class BGSettings 
{
	public var stagePath:String;
	public var stageZoom:Float;

	public var stageAntialiasing:Bool;
	public var stageScale:Float;

	public var bgPos:Array<Dynamic>;
	public var bfPos:Array<Dynamic>;
	public var gfPos:Array<Dynamic>;
	public var dadPos:Array<Dynamic>;
	public var hideGF:Bool;

	public static var DEFAULT_STAGE = 'stageback';

	public function new(stage:String = 'stage') 
	{
		// Easy Loading
		var daStagePath:String = 'stages/' + stage + '.json';

		var path:String = Paths.getPreloadPath(daStagePath);
		if (!Assets.exists(path))
		{
			path = Paths.getPreloadPath('stages/' + DEFAULT_STAGE + '.json'); // Makes the background "stage" if no background is found
		}

		var rawJson = Assets.getText(path);

		var json:StageFile = cast Json.parse(rawJson);

		stagePath = json.directory;
		stageZoom = json.defaultZoom;

		stageAntialiasing = json.antialiasing;
		stageScale = json.scale;

		bgPos = json.stagePos;
		bfPos = json.boyfriendPos;
		gfPos = json.girlfriendPos;
		dadPos = json.opponentPos;
		hideGF = json.hide_girlfriend;
	}
}
