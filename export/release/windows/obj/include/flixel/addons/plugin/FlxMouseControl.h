#ifndef INCLUDED_flixel_addons_plugin_FlxMouseControl
#define INCLUDED_flixel_addons_plugin_FlxMouseControl

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#ifndef INCLUDED_flixel_FlxBasic
#include <flixel/FlxBasic.h>
#endif
HX_DECLARE_CLASS1(flixel,FlxBasic)
HX_DECLARE_CLASS1(flixel,FlxObject)
HX_DECLARE_CLASS1(flixel,FlxSprite)
HX_DECLARE_CLASS3(flixel,addons,display,FlxExtendedSprite)
HX_DECLARE_CLASS3(flixel,addons,plugin,FlxMouseControl)
HX_DECLARE_CLASS2(flixel,math,FlxPoint)
HX_DECLARE_CLASS2(flixel,math,FlxRect)
HX_DECLARE_CLASS2(flixel,util,IFlxDestroyable)
HX_DECLARE_CLASS2(flixel,util,IFlxPooled)

namespace flixel{
namespace addons{
namespace plugin{


class HXCPP_CLASS_ATTRIBUTES FlxMouseControl_obj : public  ::flixel::FlxBasic_obj
{
	public:
		typedef  ::flixel::FlxBasic_obj super;
		typedef FlxMouseControl_obj OBJ_;
		FlxMouseControl_obj();

	public:
		enum { _hx_ClassId = 0x070266e8 };

		void __construct();
		inline void *operator new(size_t inSize, bool inContainer=true,const char *inName="flixel.addons.plugin.FlxMouseControl")
			{ return ::hx::Object::operator new(inSize,inContainer,inName); }
		inline void *operator new(size_t inSize, int extra)
			{ return ::hx::Object::operator new(inSize+extra,true,"flixel.addons.plugin.FlxMouseControl"); }
		static ::hx::ObjectPtr< FlxMouseControl_obj > __new();
		static ::hx::ObjectPtr< FlxMouseControl_obj > __alloc(::hx::Ctx *_hx_ctx);
		static void * _hx_vtable;
		static Dynamic __CreateEmpty();
		static Dynamic __Create(::hx::DynamicArray inArgs);
		//~FlxMouseControl_obj();

		HX_DO_RTTI_ALL;
		::hx::Val __Field(const ::String &inString, ::hx::PropertyAccess inCallProp);
		static bool __GetStatic(const ::String &inString, Dynamic &outValue, ::hx::PropertyAccess inCallProp);
		static bool __SetStatic(const ::String &inString, Dynamic &ioValue, ::hx::PropertyAccess inCallProp);
		static void __register();
		bool _hx_isInstanceOf(int inClassId);
		::String __ToString() const { return HX_("FlxMouseControl",2a,b7,60,53); }

		static void __boot();
		static int ASCENDING;
		static int DESCENDING;
		static ::String sortIndex;
		static int sortOrder;
		static bool isDragging;
		static  ::flixel::addons::display::FlxExtendedSprite dragTarget;
		static  ::flixel::addons::display::FlxExtendedSprite clickTarget;
		static int speedX;
		static int speedY;
		static  ::flixel::math::FlxRect mouseZone;
		static bool linkToDeadZone;
		static ::Array< ::Dynamic> _clickStack;
		static  ::flixel::math::FlxPoint _clickCoords;
		static bool _hasClickTarget;
		static int _oldX;
		static int _oldY;
		static void addToStack( ::flixel::addons::display::FlxExtendedSprite Item);
		static ::Dynamic addToStack_dyn();

		static void clear();
		static ::Dynamic clear_dyn();

		void update(Float elapsed);

		void releaseMouse();
		::Dynamic releaseMouse_dyn();

		void assignClickedSprite();
		::Dynamic assignClickedSprite_dyn();

		int sortHandler( ::flixel::addons::display::FlxExtendedSprite Item1, ::flixel::addons::display::FlxExtendedSprite Item2);
		::Dynamic sortHandler_dyn();

		void destroy();

};

} // end namespace flixel
} // end namespace addons
} // end namespace plugin

#endif /* INCLUDED_flixel_addons_plugin_FlxMouseControl */ 
