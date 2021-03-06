#include <hxcpp.h>

#ifndef INCLUDED_Alphabet
#include <Alphabet.h>
#endif
#ifndef INCLUDED_Character
#include <Character.h>
#endif
#ifndef INCLUDED_Controls
#include <Controls.h>
#endif
#ifndef INCLUDED_DiscordClient
#include <DiscordClient.h>
#endif
#ifndef INCLUDED_FreeplayState
#include <FreeplayState.h>
#endif
#ifndef INCLUDED_LoadingState
#include <LoadingState.h>
#endif
#ifndef INCLUDED_MainMenuState
#include <MainMenuState.h>
#endif
#ifndef INCLUDED_MusicBeatState
#include <MusicBeatState.h>
#endif
#ifndef INCLUDED_Paths
#include <Paths.h>
#endif
#ifndef INCLUDED_PlayerSettings
#include <PlayerSettings.h>
#endif
#ifndef INCLUDED_WeekData
#include <WeekData.h>
#endif
#ifndef INCLUDED_editors_CharacterEditorState
#include <editors/CharacterEditorState.h>
#endif
#ifndef INCLUDED_editors_ChartingState
#include <editors/ChartingState.h>
#endif
#ifndef INCLUDED_editors_DialogueCharacterEditorState
#include <editors/DialogueCharacterEditorState.h>
#endif
#ifndef INCLUDED_editors_DialogueEditorState
#include <editors/DialogueEditorState.h>
#endif
#ifndef INCLUDED_editors_MasterEditorMenu
#include <editors/MasterEditorMenu.h>
#endif
#ifndef INCLUDED_editors_MenuCharacterEditorState
#include <editors/MenuCharacterEditorState.h>
#endif
#ifndef INCLUDED_editors_StageEditorState
#include <editors/StageEditorState.h>
#endif
#ifndef INCLUDED_editors_WeekEditorState
#include <editors/WeekEditorState.h>
#endif
#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
#ifndef INCLUDED_flixel_FlxCamera
#include <flixel/FlxCamera.h>
#endif
#ifndef INCLUDED_flixel_FlxG
#include <flixel/FlxG.h>
#endif
#ifndef INCLUDED_flixel_FlxObject
#include <flixel/FlxObject.h>
#endif
#ifndef INCLUDED_flixel_FlxSprite
#include <flixel/FlxSprite.h>
#endif
#ifndef INCLUDED_flixel_FlxState
#include <flixel/FlxState.h>
#endif
#ifndef INCLUDED_flixel_addons_transition_FlxTransitionableState
#include <flixel/addons/transition/FlxTransitionableState.h>
#endif
#ifndef INCLUDED_flixel_addons_transition_TransitionData
#include <flixel/addons/transition/TransitionData.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_FlxUIState
#include <flixel/addons/ui/FlxUIState.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IEventGetter
#include <flixel/addons/ui/interfaces/IEventGetter.h>
#endif
#ifndef INCLUDED_flixel_addons_ui_interfaces_IFlxUIState
#include <flixel/addons/ui/interfaces/IFlxUIState.h>
#endif
#ifndef INCLUDED_flixel_graphics_FlxGraphic
#include <flixel/graphics/FlxGraphic.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedGroup
#include <flixel/group/FlxTypedGroup.h>
#endif
#ifndef INCLUDED_flixel_group_FlxTypedSpriteGroup
#include <flixel/group/FlxTypedSpriteGroup.h>
#endif
#ifndef INCLUDED_flixel_input_FlxPointer
#include <flixel/input/FlxPointer.h>
#endif
#ifndef INCLUDED_flixel_input_IFlxInputManager
#include <flixel/input/IFlxInputManager.h>
#endif
#ifndef INCLUDED_flixel_input_actions_FlxAction
#include <flixel/input/actions/FlxAction.h>
#endif
#ifndef INCLUDED_flixel_input_actions_FlxActionDigital
#include <flixel/input/actions/FlxActionDigital.h>
#endif
#ifndef INCLUDED_flixel_input_actions_FlxActionSet
#include <flixel/input/actions/FlxActionSet.h>
#endif
#ifndef INCLUDED_flixel_input_mouse_FlxMouse
#include <flixel/input/mouse/FlxMouse.h>
#endif
#ifndef INCLUDED_flixel_math_FlxPoint
#include <flixel/math/FlxPoint.h>
#endif
#ifndef INCLUDED_flixel_system_FlxSound
#include <flixel/system/FlxSound.h>
#endif
#ifndef INCLUDED_flixel_system_FlxSoundGroup
#include <flixel/system/FlxSoundGroup.h>
#endif
#ifndef INCLUDED_flixel_system_frontEnds_SoundFrontEnd
#include <flixel/system/frontEnds/SoundFrontEnd.h>
#endif
#ifndef INCLUDED_flixel_text_FlxText
#include <flixel/text/FlxText.h>
#endif
#ifndef INCLUDED_flixel_text_FlxTextBorderStyle
#include <flixel/text/FlxTextBorderStyle.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxDestroyable
#include <flixel/util/IFlxDestroyable.h>
#endif
#ifndef INCLUDED_flixel_util_IFlxPooled
#include <flixel/util/IFlxPooled.h>
#endif
#ifndef INCLUDED_openfl_events_EventDispatcher
#include <openfl/events/EventDispatcher.h>
#endif
#ifndef INCLUDED_openfl_events_IEventDispatcher
#include <openfl/events/IEventDispatcher.h>
#endif
#ifndef INCLUDED_openfl_media_Sound
#include <openfl/media/Sound.h>
#endif
#ifndef INCLUDED_settings_BGSettings
#include <settings/BGSettings.h>
#endif
#ifndef INCLUDED_sys_FileSystem
#include <sys/FileSystem.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_aa1a162bced268b8_24_new,"editors.MasterEditorMenu","new",0xa289ac88,"editors.MasterEditorMenu.new","editors/MasterEditorMenu.hx",24,0x3933e087)
static const ::String _hx_array_data_7d8f0896_1[] = {
	HX_("Week Editor",59,6c,6c,6d),HX_("Character Editor",84,45,58,b1),HX_("Stage Editor",0f,63,39,a5),HX_("Chart Editor",ef,b4,29,e9),HX_("Menu Character Editor",05,2d,60,f9),HX_("Dialogue Editor",b5,bb,62,71),HX_("Dialogue Portrait Editor",ea,22,45,b5),
};
HX_LOCAL_STACK_FRAME(_hx_pos_aa1a162bced268b8_43_create,"editors.MasterEditorMenu","create",0xee5b93d4,"editors.MasterEditorMenu.create","editors/MasterEditorMenu.hx",43,0x3933e087)
HX_LOCAL_STACK_FRAME(_hx_pos_aa1a162bced268b8_92_update,"editors.MasterEditorMenu","update",0xf951b2e1,"editors.MasterEditorMenu.update","editors/MasterEditorMenu.hx",92,0x3933e087)
HX_LOCAL_STACK_FRAME(_hx_pos_aa1a162bced268b8_160_changeSelection,"editors.MasterEditorMenu","changeSelection",0x385910e4,"editors.MasterEditorMenu.changeSelection","editors/MasterEditorMenu.hx",160,0x3933e087)
HX_LOCAL_STACK_FRAME(_hx_pos_aa1a162bced268b8_173_changeDirectory,"editors.MasterEditorMenu","changeDirectory",0xba830b05,"editors.MasterEditorMenu.changeDirectory","editors/MasterEditorMenu.hx",173,0x3933e087)
namespace editors{

void MasterEditorMenu_obj::__construct( ::flixel::addons::transition::TransitionData TransIn, ::flixel::addons::transition::TransitionData TransOut){
            	HX_STACKFRAME(&_hx_pos_aa1a162bced268b8_24_new)
HXLINE(  39)		this->curDirectory = 0;
HXLINE(  38)		this->curSelected = 0;
HXLINE(  36)		this->directories = ::Array_obj< ::String >::__new(1)->init(0,null());
HXLINE(  26)		this->options = ::Array_obj< ::String >::fromData( _hx_array_data_7d8f0896_1,7);
HXLINE(  24)		super::__construct(TransIn,TransOut);
            	}

Dynamic MasterEditorMenu_obj::__CreateEmpty() { return new MasterEditorMenu_obj; }

void *MasterEditorMenu_obj::_hx_vtable = 0;

Dynamic MasterEditorMenu_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< MasterEditorMenu_obj > _hx_result = new MasterEditorMenu_obj();
	_hx_result->__construct(inArgs[0],inArgs[1]);
	return _hx_result;
}

bool MasterEditorMenu_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x3f706236) {
		if (inClassId<=(int)0x23a57bae) {
			if (inClassId<=(int)0x01c92cf4) {
				return inClassId==(int)0x00000001 || inClassId==(int)0x01c92cf4;
			} else {
				return inClassId==(int)0x23a57bae;
			}
		} else {
			return inClassId==(int)0x2f064378 || inClassId==(int)0x3f706236;
		}
	} else {
		if (inClassId<=(int)0x7c795c9f) {
			return inClassId==(int)0x62817b24 || inClassId==(int)0x7c795c9f;
		} else {
			return inClassId==(int)0x7ccf8994;
		}
	}
}

void MasterEditorMenu_obj::create(){
            	HX_GC_STACKFRAME(&_hx_pos_aa1a162bced268b8_43_create)
HXLINE(  44)		::flixel::FlxG_obj::camera->bgColor = -16777216;
HXLINE(  47)		::DiscordClient_obj::changePresence(HX_("Editors Main Menu",4c,98,82,a7),null(),null(),null(),null());
HXLINE(  50)		 ::flixel::FlxSprite bg =  ::flixel::FlxSprite_obj::__alloc( HX_CTX ,null(),null(),null());
HXDLIN(  50)		::String library = null();
HXDLIN(  50)		 ::flixel::graphics::FlxGraphic returnAsset = ::Paths_obj::returnGraphic(HX_("menuDesat",26,91,04,72),library);
HXDLIN(  50)		 ::flixel::FlxSprite bg1 = bg->loadGraphic(returnAsset,null(),null(),null(),null(),null());
HXLINE(  51)		bg1->scrollFactor->set(null(),null());
HXLINE(  52)		bg1->set_color(-13290187);
HXLINE(  53)		this->add(bg1);
HXLINE(  55)		this->grpTexts =  ::flixel::group::FlxTypedGroup_obj::__alloc( HX_CTX ,null());
HXLINE(  56)		this->add(this->grpTexts);
HXLINE(  58)		{
HXLINE(  58)			int _g = 0;
HXDLIN(  58)			int _g1 = this->options->length;
HXDLIN(  58)			while((_g < _g1)){
HXLINE(  58)				_g = (_g + 1);
HXDLIN(  58)				int i = (_g - 1);
HXLINE(  60)				 ::Alphabet leText =  ::Alphabet_obj::__alloc( HX_CTX ,( (Float)(0) ),( (Float)(((70 * i) + 30)) ),this->options->__get(i),true,false,null(),null());
HXLINE(  61)				leText->isMenuItem = true;
HXLINE(  62)				leText->targetY = ( (Float)(i) );
HXLINE(  63)				this->grpTexts->add(leText).StaticCast<  ::Alphabet >();
            			}
            		}
HXLINE(  67)		 ::flixel::FlxSprite textBG =  ::flixel::FlxSprite_obj::__alloc( HX_CTX ,0,(::flixel::FlxG_obj::height - 42),null())->makeGraphic(::flixel::FlxG_obj::width,42,-16777216,null(),null());
HXLINE(  68)		textBG->set_alpha(((Float)0.6));
HXLINE(  69)		this->add(textBG);
HXLINE(  71)		this->directoryTxt =  ::flixel::text::FlxText_obj::__alloc( HX_CTX ,textBG->x,(textBG->y + 4),::flixel::FlxG_obj::width,HX_("",00,00,00,00),32,null());
HXLINE(  72)		 ::flixel::text::FlxText _hx_tmp = this->directoryTxt;
HXDLIN(  72)		::String file = ::Paths_obj::modFolders((HX_("fonts/",eb,13,ef,fa) + HX_("vcr.ttf",9d,d2,a7,82)));
HXDLIN(  72)		::String _hx_tmp1;
HXDLIN(  72)		if (::sys::FileSystem_obj::exists(file)) {
HXLINE(  72)			_hx_tmp1 = file;
            		}
            		else {
HXLINE(  72)			_hx_tmp1 = (HX_("assets/fonts/",37,ff,a5,9c) + HX_("vcr.ttf",9d,d2,a7,82));
            		}
HXDLIN(  72)		_hx_tmp->setFormat(_hx_tmp1,32,-1,HX_("center",d5,25,db,05),null(),null(),null());
HXLINE(  73)		this->directoryTxt->scrollFactor->set(null(),null());
HXLINE(  74)		this->add(this->directoryTxt);
HXLINE(  76)		{
HXLINE(  76)			int _g2 = 0;
HXDLIN(  76)			::Array< ::String > _g3 = ::Paths_obj::getModDirectories();
HXDLIN(  76)			while((_g2 < _g3->length)){
HXLINE(  76)				::String folder = _g3->__get(_g2);
HXDLIN(  76)				_g2 = (_g2 + 1);
HXLINE(  78)				this->directories->push(folder);
            			}
            		}
HXLINE(  81)		int found = this->directories->indexOf(::Paths_obj::currentModDirectory,null());
HXLINE(  82)		if ((found > -1)) {
HXLINE(  82)			this->curDirectory = found;
            		}
HXLINE(  83)		this->changeDirectory(null());
HXLINE(  85)		this->changeSelection(null());
HXLINE(  87)		::flixel::FlxG_obj::mouse->set_visible(false);
HXLINE(  88)		this->super::create();
            	}


void MasterEditorMenu_obj::update(Float elapsed){
            	HX_GC_STACKFRAME(&_hx_pos_aa1a162bced268b8_92_update)
HXLINE(  93)		if (::PlayerSettings_obj::player1->controls->_ui_upP->check()) {
HXLINE(  95)			this->changeSelection(-1);
            		}
HXLINE(  97)		if (::PlayerSettings_obj::player1->controls->_ui_downP->check()) {
HXLINE(  99)			this->changeSelection(1);
            		}
HXLINE( 102)		if (::PlayerSettings_obj::player1->controls->_ui_leftP->check()) {
HXLINE( 104)			this->changeDirectory(-1);
            		}
HXLINE( 106)		if (::PlayerSettings_obj::player1->controls->_ui_rightP->check()) {
HXLINE( 108)			this->changeDirectory(1);
            		}
HXLINE( 112)		if (::PlayerSettings_obj::player1->controls->_back->check()) {
HXLINE( 114)			::MusicBeatState_obj::switchState( ::MainMenuState_obj::__alloc( HX_CTX ,null(),null()));
            		}
HXLINE( 117)		if (::PlayerSettings_obj::player1->controls->_accept->check()) {
HXLINE( 119)			::String _hx_switch_0 = this->options->__get(this->curSelected);
            			if (  (_hx_switch_0==HX_("Character Editor",84,45,58,b1)) ){
HXLINE( 121)				::MusicBeatState_obj::switchState(::LoadingState_obj::getNextState(( ( ::flixel::FlxState)( ::editors::CharacterEditorState_obj::__alloc( HX_CTX ,::Character_obj::DEFAULT_CHARACTER,false)) ),false));
HXDLIN( 121)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Chart Editor",ef,b4,29,e9)) ){
HXLINE( 133)				::MusicBeatState_obj::switchState(::LoadingState_obj::getNextState(( ( ::flixel::FlxState)( ::editors::ChartingState_obj::__alloc( HX_CTX ,null(),null())) ),false));
HXDLIN( 133)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Dialogue Editor",b5,bb,62,71)) ){
HXLINE( 131)				::MusicBeatState_obj::switchState(::LoadingState_obj::getNextState(( ( ::flixel::FlxState)( ::editors::DialogueEditorState_obj::__alloc( HX_CTX ,null(),null())) ),false));
HXDLIN( 131)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Dialogue Portrait Editor",ea,22,45,b5)) ){
HXLINE( 129)				::MusicBeatState_obj::switchState(::LoadingState_obj::getNextState(( ( ::flixel::FlxState)( ::editors::DialogueCharacterEditorState_obj::__alloc( HX_CTX ,null(),null())) ),false));
HXDLIN( 129)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Menu Character Editor",05,2d,60,f9)) ){
HXLINE( 127)				::MusicBeatState_obj::switchState( ::editors::MenuCharacterEditorState_obj::__alloc( HX_CTX ,null(),null()));
HXDLIN( 127)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Stage Editor",0f,63,39,a5)) ){
HXLINE( 123)				::MusicBeatState_obj::switchState(::LoadingState_obj::getNextState(( ( ::flixel::FlxState)( ::editors::StageEditorState_obj::__alloc( HX_CTX ,::settings::BGSettings_obj::DEFAULT_STAGE,null())) ),false));
HXDLIN( 123)				goto _hx_goto_5;
            			}
            			if (  (_hx_switch_0==HX_("Week Editor",59,6c,6c,6d)) ){
HXLINE( 125)				::MusicBeatState_obj::switchState( ::editors::WeekEditorState_obj::__alloc( HX_CTX ,null()));
HXDLIN( 125)				goto _hx_goto_5;
            			}
            			_hx_goto_5:;
HXLINE( 135)			::flixel::FlxG_obj::sound->music->set_volume(( (Float)(0) ));
HXLINE( 137)			::FreeplayState_obj::destroyFreeplayVocals();
            		}
HXLINE( 141)		int bullShit = 0;
HXLINE( 142)		{
HXLINE( 142)			int _g = 0;
HXDLIN( 142)			::Array< ::Dynamic> _g1 = this->grpTexts->members;
HXDLIN( 142)			while((_g < _g1->length)){
HXLINE( 142)				 ::Alphabet item = _g1->__get(_g).StaticCast<  ::Alphabet >();
HXDLIN( 142)				_g = (_g + 1);
HXLINE( 144)				item->targetY = ( (Float)((bullShit - this->curSelected)) );
HXLINE( 145)				bullShit = (bullShit + 1);
HXLINE( 147)				item->set_alpha(((Float)0.6));
HXLINE( 150)				if ((item->targetY == 0)) {
HXLINE( 152)					item->set_alpha(( (Float)(1) ));
            				}
            			}
            		}
HXLINE( 156)		this->super::update(elapsed);
            	}


void MasterEditorMenu_obj::changeSelection(::hx::Null< int >  __o_change){
            		int change = __o_change.Default(0);
            	HX_STACKFRAME(&_hx_pos_aa1a162bced268b8_160_changeSelection)
HXLINE( 161)		 ::flixel::_hx_system::frontEnds::SoundFrontEnd _hx_tmp = ::flixel::FlxG_obj::sound;
HXDLIN( 161)		_hx_tmp->play(::Paths_obj::sound(HX_("scrollMenu",4c,d4,18,06),null()),((Float)0.4),null(),null(),null(),null());
HXLINE( 163)		 ::editors::MasterEditorMenu _hx_tmp1 = ::hx::ObjectPtr<OBJ_>(this);
HXDLIN( 163)		_hx_tmp1->curSelected = (_hx_tmp1->curSelected + change);
HXLINE( 165)		if ((this->curSelected < 0)) {
HXLINE( 166)			this->curSelected = (this->options->length - 1);
            		}
HXLINE( 167)		if ((this->curSelected >= this->options->length)) {
HXLINE( 168)			this->curSelected = 0;
            		}
            	}


HX_DEFINE_DYNAMIC_FUNC1(MasterEditorMenu_obj,changeSelection,(void))

void MasterEditorMenu_obj::changeDirectory(::hx::Null< int >  __o_change){
            		int change = __o_change.Default(0);
            	HX_STACKFRAME(&_hx_pos_aa1a162bced268b8_173_changeDirectory)
HXLINE( 174)		 ::flixel::_hx_system::frontEnds::SoundFrontEnd _hx_tmp = ::flixel::FlxG_obj::sound;
HXDLIN( 174)		_hx_tmp->play(::Paths_obj::sound(HX_("scrollMenu",4c,d4,18,06),null()),((Float)0.4),null(),null(),null(),null());
HXLINE( 176)		 ::editors::MasterEditorMenu _hx_tmp1 = ::hx::ObjectPtr<OBJ_>(this);
HXDLIN( 176)		_hx_tmp1->curDirectory = (_hx_tmp1->curDirectory + change);
HXLINE( 178)		if ((this->curDirectory < 0)) {
HXLINE( 179)			this->curDirectory = (this->directories->length - 1);
            		}
HXLINE( 180)		if ((this->curDirectory >= this->directories->length)) {
HXLINE( 181)			this->curDirectory = 0;
            		}
HXLINE( 183)		::WeekData_obj::setDirectoryFromWeek(null());
HXLINE( 184)		bool _hx_tmp2;
HXDLIN( 184)		if (::hx::IsNotNull( this->directories->__get(this->curDirectory) )) {
HXLINE( 184)			_hx_tmp2 = (this->directories->__get(this->curDirectory).length < 1);
            		}
            		else {
HXLINE( 184)			_hx_tmp2 = true;
            		}
HXDLIN( 184)		if (_hx_tmp2) {
HXLINE( 185)			this->directoryTxt->set_text(HX_("< No Mod Directory Loaded >",6f,05,c4,e1));
            		}
            		else {
HXLINE( 188)			::Paths_obj::currentModDirectory = this->directories->__get(this->curDirectory);
HXLINE( 189)			this->directoryTxt->set_text(((HX_("< Loaded Mod Directory: ",1e,b9,7b,3e) + ::Paths_obj::currentModDirectory) + HX_(" >",1e,1c,00,00)));
            		}
HXLINE( 191)		 ::flixel::text::FlxText _hx_tmp3 = this->directoryTxt;
HXDLIN( 191)		_hx_tmp3->set_text(this->directoryTxt->text.toUpperCase());
            	}


HX_DEFINE_DYNAMIC_FUNC1(MasterEditorMenu_obj,changeDirectory,(void))


::hx::ObjectPtr< MasterEditorMenu_obj > MasterEditorMenu_obj::__new( ::flixel::addons::transition::TransitionData TransIn, ::flixel::addons::transition::TransitionData TransOut) {
	::hx::ObjectPtr< MasterEditorMenu_obj > __this = new MasterEditorMenu_obj();
	__this->__construct(TransIn,TransOut);
	return __this;
}

::hx::ObjectPtr< MasterEditorMenu_obj > MasterEditorMenu_obj::__alloc(::hx::Ctx *_hx_ctx, ::flixel::addons::transition::TransitionData TransIn, ::flixel::addons::transition::TransitionData TransOut) {
	MasterEditorMenu_obj *__this = (MasterEditorMenu_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(MasterEditorMenu_obj), true, "editors.MasterEditorMenu"));
	*(void **)__this = MasterEditorMenu_obj::_hx_vtable;
	__this->__construct(TransIn,TransOut);
	return __this;
}

MasterEditorMenu_obj::MasterEditorMenu_obj()
{
}

void MasterEditorMenu_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(MasterEditorMenu);
	HX_MARK_MEMBER_NAME(options,"options");
	HX_MARK_MEMBER_NAME(grpTexts,"grpTexts");
	HX_MARK_MEMBER_NAME(directories,"directories");
	HX_MARK_MEMBER_NAME(curSelected,"curSelected");
	HX_MARK_MEMBER_NAME(curDirectory,"curDirectory");
	HX_MARK_MEMBER_NAME(directoryTxt,"directoryTxt");
	 ::flixel::addons::ui::FlxUIState_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void MasterEditorMenu_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(options,"options");
	HX_VISIT_MEMBER_NAME(grpTexts,"grpTexts");
	HX_VISIT_MEMBER_NAME(directories,"directories");
	HX_VISIT_MEMBER_NAME(curSelected,"curSelected");
	HX_VISIT_MEMBER_NAME(curDirectory,"curDirectory");
	HX_VISIT_MEMBER_NAME(directoryTxt,"directoryTxt");
	 ::flixel::addons::ui::FlxUIState_obj::__Visit(HX_VISIT_ARG);
}

::hx::Val MasterEditorMenu_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 6:
		if (HX_FIELD_EQ(inName,"create") ) { return ::hx::Val( create_dyn() ); }
		if (HX_FIELD_EQ(inName,"update") ) { return ::hx::Val( update_dyn() ); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"options") ) { return ::hx::Val( options ); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"grpTexts") ) { return ::hx::Val( grpTexts ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"directories") ) { return ::hx::Val( directories ); }
		if (HX_FIELD_EQ(inName,"curSelected") ) { return ::hx::Val( curSelected ); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"curDirectory") ) { return ::hx::Val( curDirectory ); }
		if (HX_FIELD_EQ(inName,"directoryTxt") ) { return ::hx::Val( directoryTxt ); }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"changeSelection") ) { return ::hx::Val( changeSelection_dyn() ); }
		if (HX_FIELD_EQ(inName,"changeDirectory") ) { return ::hx::Val( changeDirectory_dyn() ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val MasterEditorMenu_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 7:
		if (HX_FIELD_EQ(inName,"options") ) { options=inValue.Cast< ::Array< ::String > >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"grpTexts") ) { grpTexts=inValue.Cast<  ::flixel::group::FlxTypedGroup >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"directories") ) { directories=inValue.Cast< ::Array< ::String > >(); return inValue; }
		if (HX_FIELD_EQ(inName,"curSelected") ) { curSelected=inValue.Cast< int >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"curDirectory") ) { curDirectory=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"directoryTxt") ) { directoryTxt=inValue.Cast<  ::flixel::text::FlxText >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void MasterEditorMenu_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("options",5e,33,fe,df));
	outFields->push(HX_("grpTexts",01,f1,99,f0));
	outFields->push(HX_("directories",0b,5c,2c,61));
	outFields->push(HX_("curSelected",fb,eb,ab,32));
	outFields->push(HX_("curDirectory",cd,9c,ef,a5));
	outFields->push(HX_("directoryTxt",03,b6,2a,b0));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo MasterEditorMenu_obj_sMemberStorageInfo[] = {
	{::hx::fsObject /* ::Array< ::String > */ ,(int)offsetof(MasterEditorMenu_obj,options),HX_("options",5e,33,fe,df)},
	{::hx::fsObject /*  ::flixel::group::FlxTypedGroup */ ,(int)offsetof(MasterEditorMenu_obj,grpTexts),HX_("grpTexts",01,f1,99,f0)},
	{::hx::fsObject /* ::Array< ::String > */ ,(int)offsetof(MasterEditorMenu_obj,directories),HX_("directories",0b,5c,2c,61)},
	{::hx::fsInt,(int)offsetof(MasterEditorMenu_obj,curSelected),HX_("curSelected",fb,eb,ab,32)},
	{::hx::fsInt,(int)offsetof(MasterEditorMenu_obj,curDirectory),HX_("curDirectory",cd,9c,ef,a5)},
	{::hx::fsObject /*  ::flixel::text::FlxText */ ,(int)offsetof(MasterEditorMenu_obj,directoryTxt),HX_("directoryTxt",03,b6,2a,b0)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *MasterEditorMenu_obj_sStaticStorageInfo = 0;
#endif

static ::String MasterEditorMenu_obj_sMemberFields[] = {
	HX_("options",5e,33,fe,df),
	HX_("grpTexts",01,f1,99,f0),
	HX_("directories",0b,5c,2c,61),
	HX_("curSelected",fb,eb,ab,32),
	HX_("curDirectory",cd,9c,ef,a5),
	HX_("directoryTxt",03,b6,2a,b0),
	HX_("create",fc,66,0f,7c),
	HX_("update",09,86,05,87),
	HX_("changeSelection",bc,98,b5,48),
	HX_("changeDirectory",dd,92,df,ca),
	::String(null()) };

::hx::Class MasterEditorMenu_obj::__mClass;

void MasterEditorMenu_obj::__register()
{
	MasterEditorMenu_obj _hx_dummy;
	MasterEditorMenu_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("editors.MasterEditorMenu",96,08,8f,7d);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(MasterEditorMenu_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< MasterEditorMenu_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = MasterEditorMenu_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = MasterEditorMenu_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

} // end namespace editors
