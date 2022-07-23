#include <hxcpp.h>

#ifndef INCLUDED_haxe_format_JsonParser
#include <haxe/format/JsonParser.h>
#endif
#ifndef INCLUDED_openfl_utils_Assets
#include <openfl/utils/Assets.h>
#endif
#ifndef INCLUDED_settings_BGSettings
#include <settings/BGSettings.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_2203d7741136f8d9_46_new,"settings.BGSettings","new",0x9bba93e5,"settings.BGSettings.new","settings/BGSettings.hx",46,0x97c0828a)
HX_LOCAL_STACK_FRAME(_hx_pos_2203d7741136f8d9_43_boot,"settings.BGSettings","boot",0x9f9fd50d,"settings.BGSettings.boot","settings/BGSettings.hx",43,0x97c0828a)
namespace settings{

void BGSettings_obj::__construct(::String __o_stage){
            		::String stage = __o_stage;
            		if (::hx::IsNull(__o_stage)) stage = HX_("stage",be,6a,0b,84);
            	HX_GC_STACKFRAME(&_hx_pos_2203d7741136f8d9_46_new)
HXLINE(  48)		::String daStagePath = ((HX_("stages/",9a,7a,ca,2d) + stage) + HX_(".json",56,f1,d6,c2));
HXLINE(  50)		::String file = daStagePath;
HXDLIN(  50)		if (::hx::IsNull( file )) {
HXLINE(  50)			file = HX_("",00,00,00,00);
            		}
HXDLIN(  50)		::String path = (HX_("assets/",4c,2a,dc,36) + file);
HXLINE(  51)		if (!(::openfl::utils::Assets_obj::exists(path,null()))) {
HXLINE(  53)			::String file = ((HX_("stages/",9a,7a,ca,2d) + ::settings::BGSettings_obj::DEFAULT_STAGE) + HX_(".json",56,f1,d6,c2));
HXDLIN(  53)			if (::hx::IsNull( file )) {
HXLINE(  53)				file = HX_("",00,00,00,00);
            			}
HXDLIN(  53)			path = (HX_("assets/",4c,2a,dc,36) + file);
            		}
HXLINE(  56)		::String rawJson = ::openfl::utils::Assets_obj::getText(path);
HXLINE(  58)		 ::Dynamic json =  ::haxe::format::JsonParser_obj::__alloc( HX_CTX ,rawJson)->doParse();
HXLINE(  60)		this->stagePath = ( (::String)(json->__Field(HX_("directory",6d,f2,44,10),::hx::paccDynamic)) );
HXLINE(  61)		this->stageZoom = ( (Float)(json->__Field(HX_("defaultZoom",74,9c,b7,22),::hx::paccDynamic)) );
HXLINE(  63)		this->bgPos = ( (::cpp::VirtualArray)(json->__Field(HX_("stagePos",76,75,46,e3),::hx::paccDynamic)) );
HXLINE(  64)		this->bfPos = ( (::cpp::VirtualArray)(json->__Field(HX_("boyfriendPos",4a,2a,55,7c),::hx::paccDynamic)) );
HXLINE(  65)		this->gfPos = ( (::cpp::VirtualArray)(json->__Field(HX_("girlfriendPos",fa,d3,d6,17),::hx::paccDynamic)) );
HXLINE(  66)		this->dadPos = ( (::cpp::VirtualArray)(json->__Field(HX_("opponentPos",f7,7b,c4,fa),::hx::paccDynamic)) );
HXLINE(  67)		this->hideGF = ( (bool)(json->__Field(HX_("hide_girlfriend",57,bd,d9,f9),::hx::paccDynamic)) );
            	}

Dynamic BGSettings_obj::__CreateEmpty() { return new BGSettings_obj; }

void *BGSettings_obj::_hx_vtable = 0;

Dynamic BGSettings_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< BGSettings_obj > _hx_result = new BGSettings_obj();
	_hx_result->__construct(inArgs[0]);
	return _hx_result;
}

bool BGSettings_obj::_hx_isInstanceOf(int inClassId) {
	return inClassId==(int)0x00000001 || inClassId==(int)0x54a23aab;
}

::String BGSettings_obj::DEFAULT_STAGE;


::hx::ObjectPtr< BGSettings_obj > BGSettings_obj::__new(::String __o_stage) {
	::hx::ObjectPtr< BGSettings_obj > __this = new BGSettings_obj();
	__this->__construct(__o_stage);
	return __this;
}

::hx::ObjectPtr< BGSettings_obj > BGSettings_obj::__alloc(::hx::Ctx *_hx_ctx,::String __o_stage) {
	BGSettings_obj *__this = (BGSettings_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(BGSettings_obj), true, "settings.BGSettings"));
	*(void **)__this = BGSettings_obj::_hx_vtable;
	__this->__construct(__o_stage);
	return __this;
}

BGSettings_obj::BGSettings_obj()
{
}

void BGSettings_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(BGSettings);
	HX_MARK_MEMBER_NAME(stagePath,"stagePath");
	HX_MARK_MEMBER_NAME(stageZoom,"stageZoom");
	HX_MARK_MEMBER_NAME(bgPos,"bgPos");
	HX_MARK_MEMBER_NAME(bfPos,"bfPos");
	HX_MARK_MEMBER_NAME(gfPos,"gfPos");
	HX_MARK_MEMBER_NAME(dadPos,"dadPos");
	HX_MARK_MEMBER_NAME(hideGF,"hideGF");
	HX_MARK_END_CLASS();
}

void BGSettings_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(stagePath,"stagePath");
	HX_VISIT_MEMBER_NAME(stageZoom,"stageZoom");
	HX_VISIT_MEMBER_NAME(bgPos,"bgPos");
	HX_VISIT_MEMBER_NAME(bfPos,"bfPos");
	HX_VISIT_MEMBER_NAME(gfPos,"gfPos");
	HX_VISIT_MEMBER_NAME(dadPos,"dadPos");
	HX_VISIT_MEMBER_NAME(hideGF,"hideGF");
}

::hx::Val BGSettings_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"bgPos") ) { return ::hx::Val( bgPos ); }
		if (HX_FIELD_EQ(inName,"bfPos") ) { return ::hx::Val( bfPos ); }
		if (HX_FIELD_EQ(inName,"gfPos") ) { return ::hx::Val( gfPos ); }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"dadPos") ) { return ::hx::Val( dadPos ); }
		if (HX_FIELD_EQ(inName,"hideGF") ) { return ::hx::Val( hideGF ); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"stagePath") ) { return ::hx::Val( stagePath ); }
		if (HX_FIELD_EQ(inName,"stageZoom") ) { return ::hx::Val( stageZoom ); }
	}
	return super::__Field(inName,inCallProp);
}

bool BGSettings_obj::__GetStatic(const ::String &inName, Dynamic &outValue, ::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 13:
		if (HX_FIELD_EQ(inName,"DEFAULT_STAGE") ) { outValue = ( DEFAULT_STAGE ); return true; }
	}
	return false;
}

::hx::Val BGSettings_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 5:
		if (HX_FIELD_EQ(inName,"bgPos") ) { bgPos=inValue.Cast< ::cpp::VirtualArray >(); return inValue; }
		if (HX_FIELD_EQ(inName,"bfPos") ) { bfPos=inValue.Cast< ::cpp::VirtualArray >(); return inValue; }
		if (HX_FIELD_EQ(inName,"gfPos") ) { gfPos=inValue.Cast< ::cpp::VirtualArray >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"dadPos") ) { dadPos=inValue.Cast< ::cpp::VirtualArray >(); return inValue; }
		if (HX_FIELD_EQ(inName,"hideGF") ) { hideGF=inValue.Cast< bool >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"stagePath") ) { stagePath=inValue.Cast< ::String >(); return inValue; }
		if (HX_FIELD_EQ(inName,"stageZoom") ) { stageZoom=inValue.Cast< Float >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

bool BGSettings_obj::__SetStatic(const ::String &inName,Dynamic &ioValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 13:
		if (HX_FIELD_EQ(inName,"DEFAULT_STAGE") ) { DEFAULT_STAGE=ioValue.Cast< ::String >(); return true; }
	}
	return false;
}

void BGSettings_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("stagePath",83,b3,55,fa));
	outFields->push(HX_("stageZoom",f1,70,fc,00));
	outFields->push(HX_("bgPos",cf,e8,96,b1));
	outFields->push(HX_("bfPos",30,b2,ed,b0));
	outFields->push(HX_("gfPos",b5,98,ee,91));
	outFields->push(HX_("dadPos",8d,c5,e4,17));
	outFields->push(HX_("hideGF",61,a7,96,4c));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo BGSettings_obj_sMemberStorageInfo[] = {
	{::hx::fsString,(int)offsetof(BGSettings_obj,stagePath),HX_("stagePath",83,b3,55,fa)},
	{::hx::fsFloat,(int)offsetof(BGSettings_obj,stageZoom),HX_("stageZoom",f1,70,fc,00)},
	{::hx::fsObject /* ::cpp::VirtualArray */ ,(int)offsetof(BGSettings_obj,bgPos),HX_("bgPos",cf,e8,96,b1)},
	{::hx::fsObject /* ::cpp::VirtualArray */ ,(int)offsetof(BGSettings_obj,bfPos),HX_("bfPos",30,b2,ed,b0)},
	{::hx::fsObject /* ::cpp::VirtualArray */ ,(int)offsetof(BGSettings_obj,gfPos),HX_("gfPos",b5,98,ee,91)},
	{::hx::fsObject /* ::cpp::VirtualArray */ ,(int)offsetof(BGSettings_obj,dadPos),HX_("dadPos",8d,c5,e4,17)},
	{::hx::fsBool,(int)offsetof(BGSettings_obj,hideGF),HX_("hideGF",61,a7,96,4c)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo BGSettings_obj_sStaticStorageInfo[] = {
	{::hx::fsString,(void *) &BGSettings_obj::DEFAULT_STAGE,HX_("DEFAULT_STAGE",40,45,81,f7)},
	{ ::hx::fsUnknown, 0, null()}
};
#endif

static ::String BGSettings_obj_sMemberFields[] = {
	HX_("stagePath",83,b3,55,fa),
	HX_("stageZoom",f1,70,fc,00),
	HX_("bgPos",cf,e8,96,b1),
	HX_("bfPos",30,b2,ed,b0),
	HX_("gfPos",b5,98,ee,91),
	HX_("dadPos",8d,c5,e4,17),
	HX_("hideGF",61,a7,96,4c),
	::String(null()) };

static void BGSettings_obj_sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(BGSettings_obj::DEFAULT_STAGE,"DEFAULT_STAGE");
};

#ifdef HXCPP_VISIT_ALLOCS
static void BGSettings_obj_sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(BGSettings_obj::DEFAULT_STAGE,"DEFAULT_STAGE");
};

#endif

::hx::Class BGSettings_obj::__mClass;

static ::String BGSettings_obj_sStaticFields[] = {
	HX_("DEFAULT_STAGE",40,45,81,f7),
	::String(null())
};

void BGSettings_obj::__register()
{
	BGSettings_obj _hx_dummy;
	BGSettings_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("settings.BGSettings",73,bd,c7,1a);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &BGSettings_obj::__GetStatic;
	__mClass->mSetStaticField = &BGSettings_obj::__SetStatic;
	__mClass->mMarkFunc = BGSettings_obj_sMarkStatics;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(BGSettings_obj_sStaticFields);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(BGSettings_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< BGSettings_obj >;
#ifdef HXCPP_VISIT_ALLOCS
	__mClass->mVisitFunc = BGSettings_obj_sVisitStatics;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = BGSettings_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = BGSettings_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void BGSettings_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_2203d7741136f8d9_43_boot)
HXDLIN(  43)		DEFAULT_STAGE = HX_("stageback",e5,7b,3b,06);
            	}
}

} // end namespace settings
