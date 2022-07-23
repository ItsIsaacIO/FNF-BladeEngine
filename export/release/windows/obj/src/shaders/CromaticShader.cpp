#include <hxcpp.h>

#ifndef INCLUDED_flixel_graphics_tile_FlxGraphicsShader
#include <flixel/graphics/tile/FlxGraphicsShader.h>
#endif
#ifndef INCLUDED_openfl_display_GraphicsShader
#include <openfl/display/GraphicsShader.h>
#endif
#ifndef INCLUDED_openfl_display_Shader
#include <openfl/display/Shader.h>
#endif
#ifndef INCLUDED_openfl_display_ShaderInput_openfl_display_BitmapData
#include <openfl/display/ShaderInput_openfl_display_BitmapData.h>
#endif
#ifndef INCLUDED_openfl_display_ShaderParameter_Float
#include <openfl/display/ShaderParameter_Float.h>
#endif
#ifndef INCLUDED_shaders_CromaticShader
#include <shaders/CromaticShader.h>
#endif

HX_DEFINE_STACK_FRAME(_hx_pos_bf8fd884e63c055b_27_new,"shaders.CromaticShader","new",0x9748c9b1,"shaders.CromaticShader.new","shaders/CromaticShader.hx",27,0xd75fa5be)
HX_LOCAL_STACK_FRAME(_hx_pos_bf8fd884e63c055b_5_boot,"shaders.CromaticShader","boot",0xc080b1c1,"shaders.CromaticShader.boot","shaders/CromaticShader.hx",5,0xd75fa5be)
namespace shaders{

void CromaticShader_obj::__construct(){
            	HX_STACKFRAME(&_hx_pos_bf8fd884e63c055b_27_new)
HXLINE( 182)		if (::hx::IsNull( this->_hx___glFragmentSource )) {
HXLINE( 184)			this->_hx___glFragmentSource = HX_("\r\n        varying float openfl_Alphav;\n\t\tvarying vec4 openfl_ColorMultiplierv;\n\t\tvarying vec4 openfl_ColorOffsetv;\n\t\tvarying vec2 openfl_TextureCoordv;\n\n\t\tuniform bool openfl_HasColorTransform;\n\t\tuniform vec2 openfl_TextureSize;\n\t\tuniform sampler2D bitmap;\n\n\t\tuniform bool hasTransform;\n\t\tuniform bool hasColorTransform;\n\n\t\tvec4 flixel_texture2D(sampler2D bitmap, vec2 coord)\n\t\t{\n\t\t\tvec4 color = texture2D(bitmap, coord);\n\t\t\tif (!hasTransform)\n\t\t\t{\n\t\t\t\treturn color;\n\t\t\t}\n\n\t\t\tif (color.a == 0.0)\n\t\t\t{\n\t\t\t\treturn vec4(0.0, 0.0, 0.0, 0.0);\n\t\t\t}\n\n\t\t\tif (!hasColorTransform)\n\t\t\t{\n\t\t\t\treturn color * openfl_Alphav;\n\t\t\t}\n\n\t\t\tcolor = vec4(color.rgb / color.a, color.a);\n\n\t\t\tmat4 colorMultiplier = mat4(0);\n\t\t\tcolorMultiplier[0][0] = openfl_ColorMultiplierv.x;\n\t\t\tcolorMultiplier[1][1] = openfl_ColorMultiplierv.y;\n\t\t\tcolorMultiplier[2][2] = openfl_ColorMultiplierv.z;\n\t\t\tcolorMultiplier[3][3] = openfl_ColorMultiplierv.w;\n\n\t\t\tcolor = clamp(openfl_ColorOffsetv + (color * colorMultiplier), 0.0, 1.0);\n\n\t\t\tif (color.a > 0.0)\n\t\t\t{\n\t\t\t\treturn vec4(color.rgb * color.a * openfl_Alphav, color.a * openfl_Alphav);\n\t\t\t}\n\t\t\treturn vec4(0.0, 0.0, 0.0, 0.0);\n\t\t}\n\t\n\r\n\r\n        uniform vec3 iResolution;\r\n        uniform samplerXX iChannel0..3;\r\n\r\n        void main()\r\n        {\r\n            vec2 uv = fragCoord.xy / iResolution.xy;\r\n            \r\n            vec2 d = abs((uv - 0.5) * 2.0);\r\n            d = pow(d, vec2(2.0, 2.0));\r\n                \r\n            vec4 r = texture(iChannel0, uv - d * 0.015);\r\n            vec4 g = texture(iChannel0, uv);\r\n            vec4 b = texture(iChannel0, uv);\r\n            \r\n            fragColor = vec4(r.r, g.g, b.b, 1.0);\r\n        }\r\n    ",97,ad,19,0d);
            		}
HXLINE( 174)		if (::hx::IsNull( this->_hx___glVertexSource )) {
HXLINE( 176)			this->_hx___glVertexSource = HX_("\n\t\tattribute float openfl_Alpha;\n\t\tattribute vec4 openfl_ColorMultiplier;\n\t\tattribute vec4 openfl_ColorOffset;\n\t\tattribute vec4 openfl_Position;\n\t\tattribute vec2 openfl_TextureCoord;\n\n\t\tvarying float openfl_Alphav;\n\t\tvarying vec4 openfl_ColorMultiplierv;\n\t\tvarying vec4 openfl_ColorOffsetv;\n\t\tvarying vec2 openfl_TextureCoordv;\n\n\t\tuniform mat4 openfl_Matrix;\n\t\tuniform bool openfl_HasColorTransform;\n\t\tuniform vec2 openfl_TextureSize;\n\n\t\t\n\t\tattribute float alpha;\n\t\tattribute vec4 colorMultiplier;\n\t\tattribute vec4 colorOffset;\n\t\tuniform bool hasColorTransform;\n\t\t\n\t\tvoid main(void)\n\t\t{\n\t\t\topenfl_Alphav = openfl_Alpha;\n\t\topenfl_TextureCoordv = openfl_TextureCoord;\n\n\t\tif (openfl_HasColorTransform) {\n\n\t\t\topenfl_ColorMultiplierv = openfl_ColorMultiplier;\n\t\t\topenfl_ColorOffsetv = openfl_ColorOffset / 255.0;\n\n\t\t}\n\n\t\tgl_Position = openfl_Matrix * openfl_Position;\n\n\t\t\t\n\t\t\topenfl_Alphav = openfl_Alpha * alpha;\n\t\t\t\n\t\t\tif (hasColorTransform)\n\t\t\t{\n\t\t\t\topenfl_ColorOffsetv = colorOffset / 255.0;\n\t\t\t\topenfl_ColorMultiplierv = colorMultiplier;\n\t\t\t}\n\t\t}",f3,1e,fa,79);
            		}
HXLINE(  28)		super::__construct();
HXLINE(   5)		this->_hx___isGenerated = true;
HXDLIN(   5)		this->_hx___initGL();
            	}

Dynamic CromaticShader_obj::__CreateEmpty() { return new CromaticShader_obj; }

void *CromaticShader_obj::_hx_vtable = 0;

Dynamic CromaticShader_obj::__Create(::hx::DynamicArray inArgs)
{
	::hx::ObjectPtr< CromaticShader_obj > _hx_result = new CromaticShader_obj();
	_hx_result->__construct();
	return _hx_result;
}

bool CromaticShader_obj::_hx_isInstanceOf(int inClassId) {
	if (inClassId<=(int)0x1efca5b6) {
		if (inClassId<=(int)0x04f93fcd) {
			return inClassId==(int)0x00000001 || inClassId==(int)0x04f93fcd;
		} else {
			return inClassId==(int)0x1efca5b6;
		}
	} else {
		return inClassId==(int)0x40d98749 || inClassId==(int)0x78d8d737;
	}
}


::hx::ObjectPtr< CromaticShader_obj > CromaticShader_obj::__new() {
	::hx::ObjectPtr< CromaticShader_obj > __this = new CromaticShader_obj();
	__this->__construct();
	return __this;
}

::hx::ObjectPtr< CromaticShader_obj > CromaticShader_obj::__alloc(::hx::Ctx *_hx_ctx) {
	CromaticShader_obj *__this = (CromaticShader_obj*)(::hx::Ctx::alloc(_hx_ctx, sizeof(CromaticShader_obj), true, "shaders.CromaticShader"));
	*(void **)__this = CromaticShader_obj::_hx_vtable;
	__this->__construct();
	return __this;
}

CromaticShader_obj::CromaticShader_obj()
{
}

void CromaticShader_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(CromaticShader);
	HX_MARK_MEMBER_NAME(iResolution,"iResolution");
	HX_MARK_MEMBER_NAME(iChannel0,"iChannel0");
	 ::flixel::graphics::tile::FlxGraphicsShader_obj::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void CromaticShader_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(iResolution,"iResolution");
	HX_VISIT_MEMBER_NAME(iChannel0,"iChannel0");
	 ::flixel::graphics::tile::FlxGraphicsShader_obj::__Visit(HX_VISIT_ARG);
}

::hx::Val CromaticShader_obj::__Field(const ::String &inName,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"iChannel0") ) { return ::hx::Val( iChannel0 ); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"iResolution") ) { return ::hx::Val( iResolution ); }
	}
	return super::__Field(inName,inCallProp);
}

::hx::Val CromaticShader_obj::__SetField(const ::String &inName,const ::hx::Val &inValue,::hx::PropertyAccess inCallProp)
{
	switch(inName.length) {
	case 9:
		if (HX_FIELD_EQ(inName,"iChannel0") ) { iChannel0=inValue.Cast<  ::openfl::display::ShaderInput_openfl_display_BitmapData >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"iResolution") ) { iResolution=inValue.Cast<  ::openfl::display::ShaderParameter_Float >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void CromaticShader_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_("iResolution",f5,36,34,3f));
	outFields->push(HX_("iChannel0",96,77,a4,c9));
	super::__GetFields(outFields);
};

#ifdef HXCPP_SCRIPTABLE
static ::hx::StorageInfo CromaticShader_obj_sMemberStorageInfo[] = {
	{::hx::fsObject /*  ::openfl::display::ShaderParameter_Float */ ,(int)offsetof(CromaticShader_obj,iResolution),HX_("iResolution",f5,36,34,3f)},
	{::hx::fsObject /*  ::openfl::display::ShaderInput_openfl_display_BitmapData */ ,(int)offsetof(CromaticShader_obj,iChannel0),HX_("iChannel0",96,77,a4,c9)},
	{ ::hx::fsUnknown, 0, null()}
};
static ::hx::StaticInfo *CromaticShader_obj_sStaticStorageInfo = 0;
#endif

static ::String CromaticShader_obj_sMemberFields[] = {
	HX_("iResolution",f5,36,34,3f),
	HX_("iChannel0",96,77,a4,c9),
	::String(null()) };

::hx::Class CromaticShader_obj::__mClass;

void CromaticShader_obj::__register()
{
	CromaticShader_obj _hx_dummy;
	CromaticShader_obj::_hx_vtable = *(void **)&_hx_dummy;
	::hx::Static(__mClass) = new ::hx::Class_obj();
	__mClass->mName = HX_("shaders.CromaticShader",3f,1d,7c,25);
	__mClass->mSuper = &super::__SGetClass();
	__mClass->mConstructEmpty = &__CreateEmpty;
	__mClass->mConstructArgs = &__Create;
	__mClass->mGetStaticField = &::hx::Class_obj::GetNoStaticField;
	__mClass->mSetStaticField = &::hx::Class_obj::SetNoStaticField;
	__mClass->mStatics = ::hx::Class_obj::dupFunctions(0 /* sStaticFields */);
	__mClass->mMembers = ::hx::Class_obj::dupFunctions(CromaticShader_obj_sMemberFields);
	__mClass->mCanCast = ::hx::TCanCast< CromaticShader_obj >;
#ifdef HXCPP_SCRIPTABLE
	__mClass->mMemberStorageInfo = CromaticShader_obj_sMemberStorageInfo;
#endif
#ifdef HXCPP_SCRIPTABLE
	__mClass->mStaticStorageInfo = CromaticShader_obj_sStaticStorageInfo;
#endif
	::hx::_hx_RegisterClass(__mClass->mName, __mClass);
}

void CromaticShader_obj::__boot()
{
{
            	HX_STACKFRAME(&_hx_pos_bf8fd884e63c055b_5_boot)
HXDLIN(   5)		__mClass->__meta__ =  ::Dynamic(::hx::Anon_obj::Create(1)
            			->setFixed(0,HX_("fields",79,8e,8e,80), ::Dynamic(::hx::Anon_obj::Create(1)
            				->setFixed(0,HX_("_",5f,00,00,00), ::Dynamic(::hx::Anon_obj::Create(1)
            					->setFixed(0,HX_("glFragmentSource",d0,c5,ca,f7),::cpp::VirtualArray_obj::__new(1)->init(0,HX_("\r\n        #pragma header\r\n\r\n        uniform vec3 iResolution;\r\n        uniform samplerXX iChannel0..3;\r\n\r\n        void main()\r\n        {\r\n            vec2 uv = fragCoord.xy / iResolution.xy;\r\n            \r\n            vec2 d = abs((uv - 0.5) * 2.0);\r\n            d = pow(d, vec2(2.0, 2.0));\r\n                \r\n            vec4 r = texture(iChannel0, uv - d * 0.015);\r\n            vec4 g = texture(iChannel0, uv);\r\n            vec4 b = texture(iChannel0, uv);\r\n            \r\n            fragColor = vec4(r.r, g.g, b.b, 1.0);\r\n        }\r\n    ",9d,fe,6b,29))))))));
            	}
}

} // end namespace shaders
