package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["videos"] = rootPath + "manifest/videos.json";
		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		data = '{"name":null,"assets":"aoy4:pathy33:assets%2Fcharacters%2Fbf-car.jsony4:sizei2527y4:typey4:TEXTy2:idR1y7:preloadtgoR0y39:assets%2Fcharacters%2Fbf-christmas.jsonR2i1747R3R4R5R7R6tgoR0y34:assets%2Fcharacters%2Fbf-dead.jsonR2i709R3R4R5R8R6tgoR0y45:assets%2Fcharacters%2Fbf-holding-gf-dead.jsonR2i740R3R4R5R9R6tgoR0y40:assets%2Fcharacters%2Fbf-holding-gf.jsonR2i1751R3R4R5R10R6tgoR0y40:assets%2Fcharacters%2Fbf-pixel-dead.jsonR2i721R3R4R5R11R6tgoR0y35:assets%2Fcharacters%2Fbf-pixel.jsonR2i1563R3R4R5R12R6tgoR0y29:assets%2Fcharacters%2Fbf.jsonR2i3442R3R4R5R13R6tgoR0y30:assets%2Fcharacters%2Fdad.jsonR2i1762R3R4R5R14R6tgoR0y33:assets%2Fcharacters%2Fgf-car.jsonR2i993R3R4R5R15R6tgoR0y39:assets%2Fcharacters%2Fgf-christmas.jsonR2i2137R3R4R5R16R6tgoR0y35:assets%2Fcharacters%2Fgf-pixel.jsonR2i937R3R4R5R17R6tgoR0y37:assets%2Fcharacters%2Fgf-tankmen.jsonR2i1066R3R4R5R18R6tgoR0y29:assets%2Fcharacters%2Fgf.jsonR2i2326R3R4R5R19R6tgoR0y32:assets%2Fcharacters%2Fisaac.jsonR2i1708R3R4R5R20R6tgoR0y33:assets%2Fdata%2FcharacterList.txtR2i73R3R4R5R21R6tgoR0y34:assets%2Fdata%2Fdata-goes-here.txtR2zR3R4R5R22R6tgoR0y34:assets%2Fdata%2FfreeplayColors.txtR2i76R3R4R5R23R6tgoR0y29:assets%2Fdata%2FintroText.txtR2i2109R3R4R5R24R6tgoR0y29:assets%2Fdata%2Fmain-view.xmlR2i123R3R4R5R25R6tgoR0y37:assets%2Fdata%2Fsharpen%2Fevents.jsonR2i1154R3R4R5R26R6tgoR0y43:assets%2Fdata%2Fsharpen%2Fsharpen-easy.jsonR2i65999R3R4R5R27R6tgoR0y43:assets%2Fdata%2Fsharpen%2Fsharpen-hard.jsonR2i75988R3R4R5R28R6tgoR0y38:assets%2Fdata%2Fsharpen%2Fsharpen.jsonR2i65999R3R4R5R29R6tgoR0y33:assets%2Fdata%2FspecialThanks.txtR2i300R3R4R5R30R6tgoR0y29:assets%2Fdata%2FstageList.txtR2i61R3R4R5R31R6tgoR0y32:assets%2Fdata%2Ftest%2Ftest.jsonR2i12411R3R4R5R32R6tgoR0y38:assets%2Fdata%2Ftutorial%2Fevents.jsonR2i1054R3R4R5R33R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR2i5739R3R4R5R34R6tgoR0y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR2i43665R3R4R5R35R6tgoR0y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR2i5739R3R4R5R36R6tgoR0y45:assets%2Fimages%2Fachievements%2Fdebugger.pngR2i9730R3y5:IMAGER5R37R6tgoR0y54:assets%2Fimages%2Fachievements%2Ffriday_night_play.pngR2i10956R3R38R5R39R6tgoR0y41:assets%2Fimages%2Fachievements%2Fhype.pngR2i27642R3R38R5R40R6tgoR0y54:assets%2Fimages%2Fachievements%2Flockedachievement.pngR2i13055R3R38R5R41R6tgoR0y48:assets%2Fimages%2Fachievements%2Foversinging.pngR2i23236R3R38R5R42R6tgoR0y56:assets%2Fimages%2Fachievements%2Froadkill_enthusiast.pngR2i8862R3R38R5R43R6tgoR0y44:assets%2Fimages%2Fachievements%2Ftoastie.pngR2i5837R3R38R5R44R6tgoR0y45:assets%2Fimages%2Fachievements%2Ftwo_keys.pngR2i31535R3R38R5R45R6tgoR0y43:assets%2Fimages%2Fachievements%2Fur_bad.pngR2i25691R3R38R5R46R6tgoR0y44:assets%2Fimages%2Fachievements%2Fur_good.pngR2i6932R3R38R5R47R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek1_nomiss.pngR2i23305R3R38R5R48R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek2_nomiss.pngR2i12356R3R38R5R49R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek3_nomiss.pngR2i24912R3R38R5R50R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek4_nomiss.pngR2i17294R3R38R5R51R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek5_nomiss.pngR2i25202R3R38R5R52R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek6_nomiss.pngR2i1243R3R38R5R53R6tgoR0y49:assets%2Fimages%2Fachievements%2Fweek7_nomiss.pngR2i9240R3R38R5R54R6tgoR0y30:assets%2Fimages%2Falphabet.pngR2i187033R3R38R5R55R6tgoR0y30:assets%2Fimages%2Falphabet.xmlR2i52093R3R4R5R56R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR2i7511R3R38R5R57R6tgoR0y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR2i597R3R4R5R58R6tgoR0y33:assets%2Fimages%2Fchart_quant.pngR2i2593R3R38R5R59R6tgoR0y33:assets%2Fimages%2Fchart_quant.xmlR2i582R3R4R5R60R6tgoR0y34:assets%2Fimages%2Fcheckboxanim.pngR2i42746R3R38R5R61R6tgoR0y34:assets%2Fimages%2Fcheckboxanim.xmlR2i1976R3R4R5R62R6tgoR0y40:assets%2Fimages%2Fcredits%2Fbb-panzu.pngR2i4703R3R38R5R63R6tgoR0y39:assets%2Fimages%2Fcredits%2Fdiscord.pngR2i3505R3R38R5R64R6tgoR0y40:assets%2Fimages%2Fcredits%2Fevilsk8r.pngR2i7602R3R38R5R65R6tgoR0y40:assets%2Fimages%2Fcredits%2Fgedehari.pngR2i5983R3R38R5R66R6tgoR0y39:assets%2Fimages%2Fcredits%2Fiflicky.pngR2i5797R3R38R5R67R6tgoR0y43:assets%2Fimages%2Fcredits%2Fkawaisprite.pngR2i3871R3R38R5R68R6tgoR0y38:assets%2Fimages%2Fcredits%2Fkeoiki.pngR2i4291R3R38R5R69R6tgoR0y45:assets%2Fimages%2Fcredits%2Fninjamuffin99.pngR2i4336R3R38R5R70R6tgoR0y45:assets%2Fimages%2Fcredits%2Fphantomarcade.pngR2i7875R3R38R5R71R6tgoR0y45:assets%2Fimages%2Fcredits%2Fpolybiusproxy.pngR2i8864R3R38R5R72R6tgoR0y42:assets%2Fimages%2Fcredits%2Friveroaken.pngR2i6924R3R38R5R73R6tgoR0y43:assets%2Fimages%2Fcredits%2Fshadowmario.pngR2i3081R3R38R5R74R6tgoR0y37:assets%2Fimages%2Fcredits%2Fshubs.pngR2i7595R3R38R5R75R6tgoR0y38:assets%2Fimages%2Fcredits%2Fsmokey.pngR2i5448R3R38R5R76R6tgoR0y34:assets%2Fimages%2Fcry_about_it.pngR2i380631R3R38R5R77R6tgoR0y36:assets%2Fimages%2Fdialogue%2Fbf.jsonR2i987R3R4R5R78R6tgoR0y36:assets%2Fimages%2Fdialogue%2Fgf.jsonR2i807R3R4R5R79R6tgoR0y28:assets%2Fimages%2Ffunkay.pngR2i135548R3R38R5R80R6tgoR0y35:assets%2Fimages%2FgfDanceTitle.jsonR2i124R3R4R5R81R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.pngR2i1221436R3R38R5R82R6tgoR0y34:assets%2Fimages%2FgfDanceTitle.xmlR2i4259R3R4R5R83R6tgoR0y30:assets%2Fimages%2Fhahadumb.pngR2i16097R3R38R5R84R6tgoR0y27:assets%2Fimages%2FhugeW.pngR2i18069R3R38R5R85R6tgoR0y41:assets%2Fimages%2Ficons%2Ficon-bf-old.pngR2i10263R3R38R5R86R6tgoR0y43:assets%2Fimages%2Ficons%2Ficon-bf-pixel.pngR2i1221R3R38R5R87R6tgoR0y37:assets%2Fimages%2Ficons%2Ficon-bf.pngR2i19936R3R38R5R88R6tgoR0y38:assets%2Fimages%2Ficons%2Ficon-dad.pngR2i14488R3R38R5R89R6tgoR0y39:assets%2Fimages%2Ficons%2Ficon-face.pngR2i7096R3R38R5R90R6tgoR0y37:assets%2Fimages%2Ficons%2Ficon-gf.pngR2i11992R3R38R5R91R6tgoR0y42:assets%2Fimages%2Ficons%2Ficon-tankman.pngR2i7072R3R38R5R92R6tgoR0y26:assets%2Fimages%2Flogo.pngR2i86924R3R38R5R93R6tgoR0y32:assets%2Fimages%2FlogoBumpin.pngR2i592724R3R38R5R94R6tgoR0y32:assets%2Fimages%2FlogoBumpin.xmlR2i2177R3R4R5R95R6tgoR0y44:assets%2Fimages%2Fmainmenu%2Fmenu_awards.pngR2i67591R3R38R5R96R6tgoR0y44:assets%2Fimages%2Fmainmenu%2Fmenu_awards.xmlR2i1380R3R4R5R97R6tgoR0y45:assets%2Fimages%2Fmainmenu%2Fmenu_credits.pngR2i69937R3R38R5R98R6tgoR0y45:assets%2Fimages%2Fmainmenu%2Fmenu_credits.xmlR2i1385R3R4R5R99R6tgoR0y44:assets%2Fimages%2Fmainmenu%2Fmenu_donate.pngR2i58703R3R38R5R100R6tgoR0y44:assets%2Fimages%2Fmainmenu%2Fmenu_donate.xmlR2i1375R3R4R5R101R6tgoR0y46:assets%2Fimages%2Fmainmenu%2Fmenu_freeplay.pngR2i71504R3R38R5R102R6tgoR0y46:assets%2Fimages%2Fmainmenu%2Fmenu_freeplay.xmlR2i1399R3R4R5R103R6tgoR0y42:assets%2Fimages%2Fmainmenu%2Fmenu_mods.pngR2i54051R3R38R5R104R6tgoR0y42:assets%2Fimages%2Fmainmenu%2Fmenu_mods.xmlR2i1644R3R4R5R105R6tgoR0y45:assets%2Fimages%2Fmainmenu%2Fmenu_options.pngR2i66084R3R38R5R106R6tgoR0y45:assets%2Fimages%2Fmainmenu%2Fmenu_options.xmlR2i1332R3R4R5R107R6tgoR0y48:assets%2Fimages%2Fmainmenu%2Fmenu_story_mode.pngR2i119619R3R38R5R108R6tgoR0y48:assets%2Fimages%2Fmainmenu%2Fmenu_story_mode.xmlR2i1444R3R4R5R109R6tgoR0y54:assets%2Fimages%2Fmenubackgrounds%2Fmenu_christmas.pngR2i38977R3R38R5R110R6tgoR0y54:assets%2Fimages%2Fmenubackgrounds%2Fmenu_halloween.pngR2i19784R3R38R5R111R6tgoR0y49:assets%2Fimages%2Fmenubackgrounds%2Fmenu_limo.pngR2i15191R3R38R5R112R6tgoR0y51:assets%2Fimages%2Fmenubackgrounds%2Fmenu_philly.pngR2i46318R3R38R5R113R6tgoR0y51:assets%2Fimages%2Fmenubackgrounds%2Fmenu_school.pngR2i6974R3R38R5R114R6tgoR0y50:assets%2Fimages%2Fmenubackgrounds%2Fmenu_stage.pngR2i54688R3R38R5R115R6tgoR0y49:assets%2Fimages%2Fmenubackgrounds%2Fmenu_tank.pngR2i48710R3R38R5R116R6tgoR0y28:assets%2Fimages%2FmenuBG.pngR2i620342R3R38R5R117R6tgoR0y32:assets%2Fimages%2FmenuBGBlue.pngR2i614586R3R38R5R118R6tgoR0y35:assets%2Fimages%2FmenuBGMagenta.pngR2i553468R3R38R5R119R6tgoR0y42:assets%2Fimages%2Fmenucharacters%2Fbf.jsonR2i125R3R4R5R120R6tgoR0y43:assets%2Fimages%2Fmenucharacters%2Fdad.jsonR2i126R3R4R5R121R6tgoR0y42:assets%2Fimages%2Fmenucharacters%2Fgf.jsonR2i125R3R4R5R122R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2FMenu_BF.pngR2i208834R3R38R5R123R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2FMenu_BF.xmlR2i5582R3R4R5R124R6tgoR0y47:assets%2Fimages%2Fmenucharacters%2FMenu_Dad.pngR2i116690R3R38R5R125R6tgoR0y47:assets%2Fimages%2Fmenucharacters%2FMenu_Dad.xmlR2i2115R3R4R5R126R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2FMenu_GF.pngR2i330213R3R38R5R127R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2FMenu_GF.xmlR2i3802R3R4R5R128R6tgoR0y47:assets%2Fimages%2Fmenucharacters%2FMenu_Mom.pngR2i156895R3R38R5R129R6tgoR0y47:assets%2Fimages%2Fmenucharacters%2FMenu_Mom.xmlR2i2113R3R4R5R130R6tgoR0y51:assets%2Fimages%2Fmenucharacters%2FMenu_Parents.pngR2i351693R3R38R5R131R6tgoR0y51:assets%2Fimages%2Fmenucharacters%2FMenu_Parents.xmlR2i2188R3R4R5R132R6tgoR0y48:assets%2Fimages%2Fmenucharacters%2FMenu_Pico.pngR2i113929R3R38R5R133R6tgoR0y48:assets%2Fimages%2Fmenucharacters%2FMenu_Pico.xmlR2i2142R3R4R5R134R6tgoR0y50:assets%2Fimages%2Fmenucharacters%2FMenu_Senpai.pngR2i66773R3R38R5R135R6tgoR0y50:assets%2Fimages%2Fmenucharacters%2FMenu_Senpai.xmlR2i1348R3R4R5R136R6tgoR0y55:assets%2Fimages%2Fmenucharacters%2FMenu_Spooky_Kids.pngR2i81655R3R38R5R137R6tgoR0y55:assets%2Fimages%2Fmenucharacters%2FMenu_Spooky_Kids.xmlR2i2543R3R4R5R138R6tgoR0y51:assets%2Fimages%2Fmenucharacters%2FMenu_Tankman.pngR2i119943R3R38R5R139R6tgoR0y51:assets%2Fimages%2Fmenucharacters%2FMenu_Tankman.xmlR2i2164R3R4R5R140R6tgoR0y43:assets%2Fimages%2Fmenucharacters%2Fmom.jsonR2i125R3R4R5R141R6tgoR0y57:assets%2Fimages%2Fmenucharacters%2Fparents-christmas.jsonR2i135R3R4R5R142R6tgoR0y44:assets%2Fimages%2Fmenucharacters%2Fpico.jsonR2i129R3R4R5R143R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2Fsenpai.jsonR2i133R3R4R5R144R6tgoR0y46:assets%2Fimages%2Fmenucharacters%2Fspooky.jsonR2i142R3R4R5R145R6tgoR0y47:assets%2Fimages%2Fmenucharacters%2Ftankman.jsonR2i134R3R4R5R146R6tgoR0y31:assets%2Fimages%2FmenuDesat.pngR2i357911R3R38R5R147R6tgoR0y45:assets%2Fimages%2Fmenudifficulties%2Feasy.pngR2i3453R3R38R5R148R6tgoR0y45:assets%2Fimages%2Fmenudifficulties%2Fhard.pngR2i3880R3R38R5R149R6tgoR0y47:assets%2Fimages%2Fmenudifficulties%2Fnormal.pngR2i4853R3R38R5R150R6tgoR0y33:assets%2Fimages%2FMenu_Tracks.pngR2i3487R3R38R5R151R6tgoR0y37:assets%2Fimages%2Fnewgrounds_logo.pngR2i57747R3R38R5R152R6tgoR0y26:assets%2Fimages%2Fnum0.pngR2i3738R3R38R5R153R6tgoR0y26:assets%2Fimages%2Fnum1.pngR2i3390R3R38R5R154R6tgoR0y26:assets%2Fimages%2Fnum2.pngR2i3990R3R38R5R155R6tgoR0y26:assets%2Fimages%2Fnum3.pngR2i4022R3R38R5R156R6tgoR0y26:assets%2Fimages%2Fnum4.pngR2i3989R3R38R5R157R6tgoR0y26:assets%2Fimages%2Fnum5.pngR2i4113R3R38R5R158R6tgoR0y26:assets%2Fimages%2Fnum6.pngR2i4181R3R38R5R159R6tgoR0y26:assets%2Fimages%2Fnum7.pngR2i3692R3R38R5R160R6tgoR0y26:assets%2Fimages%2Fnum8.pngR2i3914R3R38R5R161R6tgoR0y26:assets%2Fimages%2Fnum9.pngR2i3687R3R38R5R162R6tgoR0y42:assets%2Fimages%2Fstorymenu%2Ftutorial.pngR2i7056R3R38R5R163R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR2i6261R3R38R5R164R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR2i6517R3R38R5R165R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR2i7148R3R38R5R166R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek4.pngR2i6262R3R38R5R167R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek5.pngR2i6440R3R38R5R168R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek6.pngR2i8979R3R38R5R169R6tgoR0y39:assets%2Fimages%2Fstorymenu%2Fweek7.pngR2i7349R3R38R5R170R6tgoR0y32:assets%2Fimages%2FtitleEnter.pngR2i1449202R3R38R5R171R6tgoR0y32:assets%2Fimages%2FtitleEnter.xmlR2i4875R3R4R5R172R6tgoR0y32:assets%2Fimages%2FunknownMod.pngR2i4493R3R38R5R173R6tgoR2i2309657R3y5:MUSICR5y31:assets%2Fmusic%2FfreakyMenu.mp3y9:pathGroupaR175hR6tgoR2i2402257R3R174R5y31:assets%2Fmusic%2FoffsetSong.mp3R176aR177hR6tgoR2i17762R3R174R5y32:assets%2Fsounds%2FcancelMenu.mp3R176aR178hR6tgoR2i91950R3R174R5y33:assets%2Fsounds%2FconfirmMenu.mp3R176aR179hR6tgoR2i9155R3R174R5y34:assets%2Fsounds%2Fintro1-pixel.mp3R176aR180hR6tgoR2i9912R3R174R5y34:assets%2Fsounds%2Fintro2-pixel.mp3R176aR181hR6tgoR2i9128R3R174R5y34:assets%2Fsounds%2Fintro3-pixel.mp3R176aR182hR6tgoR2i21651R3R174R5y35:assets%2Fsounds%2FintroGo-pixel.mp3R176aR183hR6tgoR2i17762R3R174R5y32:assets%2Fsounds%2FscrollMenu.mp3R176aR184hR6tgoR0y28:assets%2Fstages%2Fstage.jsonR2i204R3R4R5R185R6tgoR0y29:assets%2Fstages%2Fstreet.jsonR2i201R3R4R5R186R6tgoR0y31:assets%2Fweeks%2FisaacWeek.jsonR2i300R3R4R5R187R6tgoR0y30:assets%2Fweeks%2Ftutorial.jsonR2i274R3R4R5R188R6tgoR0y29:assets%2Fweeks%2FweekList.txtR2i18R3R4R5R189R6tgoR0y21:do%20NOT%20readme.txtR2i4326R3R4R5R190R6tgoR0y34:assets%2Ffonts%2Ffonts-go-here.txtR2zR3R4R5R191R6tgoR2i14656R3y4:FONTy9:classNamey31:__ASSET__assets_fonts_pixel_otfR5y26:assets%2Ffonts%2Fpixel.otfR6tgoR2i75864R3R192R193y29:__ASSET__assets_fonts_vcr_ttfR5y24:assets%2Ffonts%2Fvcr.ttfR6tgoR2i2114R3R174R5y26:flixel%2Fsounds%2Fbeep.mp3R176aR198y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR2i39706R3R174R5y28:flixel%2Fsounds%2Fflixel.mp3R176aR200y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR2i5794R3y5:SOUNDR5R199R176aR198R199hgoR2i33629R3R202R5R201R176aR200R201hgoR2i15744R3R192R193y35:__ASSET__flixel_fonts_nokiafc22_ttfR5y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR2i29724R3R192R193y36:__ASSET__flixel_fonts_monsterrat_ttfR5y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR0y33:flixel%2Fimages%2Fui%2Fbutton.pngR2i303R3R38R5R207R6tgoR0y36:flixel%2Fimages%2Flogo%2Fdefault.pngR2i3280R3R38R5R208R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR2i912R3R38R5R209R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR2i433R3R38R5R210R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR2i446R3R38R5R211R6tgoR0y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR2i459R3R38R5R212R6tgoR0y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR2i511R3R38R5R213R6tgoR0y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR2i493R3R38R5R214R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR2i247R3R38R5R215R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR2i534R3R38R5R216R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR2i922R3R38R5R217R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR2i946R3R38R5R218R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR2i253R3R38R5R219R6tgoR0y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR2i212R3R38R5R220R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR2i192R3R38R5R221R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR2i214R3R38R5R222R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR2i156R3R38R5R223R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR2i1724R3R38R5R224R6tgoR0y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR2i294R3R38R5R225R6tgoR0y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR2i129R3R38R5R226R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR2i128R3R38R5R227R6tgoR0y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR2i136R3R38R5R228R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR2i147R3R38R5R229R6tgoR0y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR2i191R3R38R5R230R6tgoR0y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR2i153R3R38R5R231R6tgoR0y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR2i185R3R38R5R232R6tgoR0y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR2i201R3R38R5R233R6tgoR0y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR2i210R3R38R5R234R6tgoR0y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR2i18509R3R38R5R235R6tgoR0y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR2i1263R3R4R5R236R6tgoR0y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR2i1953R3R4R5R237R6tgoR0y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR2i1848R3R4R5R238R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("videos");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("videos");
		library = Assets.getLibrary ("songs");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("songs");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_holding_gf_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_holding_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_tankmen_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_isaac_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaycolors_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_debugger_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_friday_night_play_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_hype_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_lockedachievement_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_oversinging_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_roadkill_enthusiast_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_toastie_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_two_keys_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_ur_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_ur_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week1_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week2_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week3_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week4_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week5_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week6_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week7_nomiss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_bb_panzu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_discord_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_evilsk8r_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_gedehari_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_iflicky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_kawaisprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_keoiki_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_ninjamuffin99_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_phantomarcade_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_polybiusproxy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_riveroaken_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_shadowmario_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_shubs_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_smokey_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_cry_about_it_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_funkay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hahadumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hugew_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_face_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_halloween_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_limo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_philly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_school_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_stage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_tank_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_tankman_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_mom_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_parents_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_tankman_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_easy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_hard_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_normal_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_tracks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_tutorial_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_unknownmod_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_offsetsong_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_stage_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_street_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_isaacweek_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_weeklist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_put_your_videos_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_sharpen_midi_mid extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_backgrounds_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_isaac_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_isaac_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_eventarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnotesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnotesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnote_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnote_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_boyfriendnotes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_boyfriendnotes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_isaacnotes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_isaacnotes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_hurtnote_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_hurtnote_assetsends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_note_assetsends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_timebar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_tea_time_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogueclose_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_hitsound_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_metronome_tick_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_videos_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/characters/bf-car.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_car_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-dead.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_dead_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-holding-gf-dead.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_holding_gf_dead_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-holding-gf.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_holding_gf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-pixel-dead.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_dead_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-pixel.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/dad.json") @:noCompletion #if display private #end class __ASSET__assets_characters_dad_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-car.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_car_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-pixel.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_pixel_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-tankmen.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_tankmen_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/isaac.json") @:noCompletion #if display private #end class __ASSET__assets_characters_isaac_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplayColors.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaycolors_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sharpen/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sharpen/sharpen-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sharpen/sharpen-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/sharpen/sharpen.json") @:noCompletion #if display private #end class __ASSET__assets_data_sharpen_sharpen_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/stageList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/test/test.json") @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/achievements/debugger.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_debugger_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/friday_night_play.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_friday_night_play_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/hype.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_hype_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/lockedachievement.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_lockedachievement_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/oversinging.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_oversinging_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/roadkill_enthusiast.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_roadkill_enthusiast_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/toastie.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_toastie_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/two_keys.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_two_keys_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/ur_bad.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_ur_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/ur_good.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_ur_good_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week1_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week1_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week2_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week2_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week3_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week3_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week4_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week4_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week5_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week5_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week6_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week6_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievements/week7_nomiss.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievements_week7_nomiss_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/chart_quant.png") @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/chart_quant.xml") @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/checkboxanim.png") @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/checkboxanim.xml") @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/credits/bb-panzu.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_bb_panzu_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/discord.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_discord_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/evilsk8r.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_evilsk8r_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/gedehari.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_gedehari_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/iflicky.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_iflicky_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/kawaisprite.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_kawaisprite_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/keoiki.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_keoiki_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/ninjamuffin99.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_ninjamuffin99_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/phantomarcade.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_phantomarcade_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/polybiusproxy.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_polybiusproxy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/riveroaken.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_riveroaken_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/shadowmario.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_shadowmario_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/shubs.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_shubs_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/smokey.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_smokey_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/cry_about_it.png") @:noCompletion #if display private #end class __ASSET__assets_images_cry_about_it_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/dialogue/bf.json") @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/dialogue/gf.json") @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_gf_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/funkay.png") @:noCompletion #if display private #end class __ASSET__assets_images_funkay_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.json") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/hahadumb.png") @:noCompletion #if display private #end class __ASSET__assets_images_hahadumb_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/hugeW.png") @:noCompletion #if display private #end class __ASSET__assets_images_hugew_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-old.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_old_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-dad.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_dad_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-face.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_face_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-gf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-tankman.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tankman_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_awards.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_awards.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_credits.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_credits.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_donate.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_donate.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_freeplay.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_freeplay.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_mods.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_mods.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_options.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_options.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_story_mode.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_story_mode.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_christmas.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_christmas_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_halloween.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_halloween_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_limo.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_limo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_philly.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_philly_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_school.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_school_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_stage.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_stage_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_tank.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_tank_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/bf.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/dad.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_dad_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/gf.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_gf_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_BF.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_BF.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Dad.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Dad.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_GF.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_GF.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Mom.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Mom.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Parents.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Parents.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Pico.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Pico.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Senpai.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Spooky_Kids.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Spooky_Kids.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Tankman.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_tankman_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Tankman.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_tankman_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/mom.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_mom_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/parents-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_parents_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/pico.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/spooky.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_spooky_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/tankman.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_tankman_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/easy.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_easy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/hard.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_hard_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/normal.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_normal_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/Menu_Tracks.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_tracks_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/tutorial.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_tutorial_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week4.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week5.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week6.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week7.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/unknownMod.png") @:noCompletion #if display private #end class __ASSET__assets_images_unknownmod_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/offsetSong.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_offsetsong_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/stage.json") @:noCompletion #if display private #end class __ASSET__assets_stages_stage_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/street.json") @:noCompletion #if display private #end class __ASSET__assets_stages_street_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/isaacWeek.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_isaacweek_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/weekList.txt") @:noCompletion #if display private #end class __ASSET__assets_weeks_weeklist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/videos/put-your-videos-here.txt") @:noCompletion #if display private #end class __ASSET__assets_videos_put_your_videos_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/songs/sharpen/Midi.mid") @:noCompletion #if display private #end class __ASSET__assets_songs_sharpen_midi_mid extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/backgrounds/street.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_backgrounds_street_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfAndGF.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfAndGF.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfandgf_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfHoldingGF-DEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfHoldingGF-DEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfholdinggf_dead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/BOYFRIEND_DEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/BOYFRIEND_DEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_boyfriend_dead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfTankmen.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfTankmen.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gftankmen_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Isaac.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_isaac_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Isaac.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_isaac_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/picoSpeaker.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/picoSpeaker.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_picospeaker_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/tankmanCaptain.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/tankmanCaptain.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_tankmancaptain_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/dialogue/BF_Dialogue.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/BF_Dialogue.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/dialogue/GF_Dialogue.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/GF_Dialogue.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/eventArrow.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_eventarrow_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/HURTnoteSplashes.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnotesplashes_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/HURTnoteSplashes.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnotesplashes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/HURTNOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnote_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/HURTNOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_hurtnote_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/noteSkins/BoyfriendNotes.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_boyfriendnotes_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/noteSkins/BoyfriendNotes.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_boyfriendnotes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/noteSkins/IsaacNotes.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_isaacnotes_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/noteSkins/IsaacNotes.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_noteskins_isaacnotes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/noteSplashes.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/noteSplashes.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_notesplashes_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/HURTNOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_hurtnote_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/HURTNOTE_assetsENDS.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_hurtnote_assetsends_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_note_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/NOTE_assetsENDS.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_note_assetsends_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/speech_bubble.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/timeBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_timebar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/tea-time.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_tea_time_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/dialogueClose.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogueclose_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/hitsound.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_hitsound_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Metronome_Tick.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_metronome_tick_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/release/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/release/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel/4,11,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/lib/flixel-ui/2,4,0/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
