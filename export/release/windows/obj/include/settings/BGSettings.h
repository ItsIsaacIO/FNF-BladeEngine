#ifndef INCLUDED_settings_BGSettings
#define INCLUDED_settings_BGSettings

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS1(settings,BGSettings)

namespace settings{


class HXCPP_CLASS_ATTRIBUTES BGSettings_obj : public ::hx::Object
{
	public:
		typedef ::hx::Object super;
		typedef BGSettings_obj OBJ_;
		BGSettings_obj();

	public:
		enum { _hx_ClassId = 0x54a23aab };

		void __construct(::String __o_stage);
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="settings.BGSettings")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"settings.BGSettings"); }
		static ::hx::ObjectPtr< BGSettings_obj > __new(::String __o_stage);
		static ::hx::ObjectPtr< BGSettings_obj > __alloc(::hx::Ctx *_hx_ctx,::String __o_stage);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~BGSettings_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		::hx::Val __SetField(const ::String &inString,const ::hx::Val &inValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		void __GetFields(Array< ::String> &outFields);
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("BGSettings",c8,3f,16,79); }

		static void __boot();
		static ::String DEFAULT_STAGE;
		::String stagePath;
		Float stageZoom;
		::cpp::VirtualArray bgPos;
		::cpp::VirtualArray bfPos;
		::cpp::VirtualArray gfPos;
		::cpp::VirtualArray dadPos;
		bool hideGF;
};

} // end namespace settings

#endif /* INCLUDED_settings_BGSettings */ 
