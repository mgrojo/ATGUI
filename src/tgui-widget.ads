------------------------------------------------------------
-- Texus' Graphical User Interface
-- Copyright (C) 2012-2024 Bruno Van de Velde (vdv_b@tgui.eu)
-- Copyright (C) 2024 Manuel Gomez (mgrojo@gmail.com)
-- This software is provided 'as-is', without any express or implied warranty.
-- In no event will the authors be held liable for any damages arising from the use of this software.
-- Permission is granted to anyone to use this software for any purpose,
-- including commercial applications, and to alter it and redistribute it freely,
-- subject to the following restrictions:
-- 1. The origin of this software must not be misrepresented;
--    you must not claim that you wrote the original software.
--    If you use this software in a product, an acknowledgment
--    in the product documentation would be appreciated but is not required.
-- 2. Altered source versions must be plainly marked as such,
--    and must not be misrepresented as being the original software.
-- 3. This notice may not be removed or altered from any source distribution.
------------------------------------------------------------


--//////////////////////////////////////////////////////////
pragma Warnings (Off, "-gnatwu");


with TGUI.Vector2;
with TGUI.Layout;

with TGUI.Color;
with TGUI.Rect;

with System;
with TGUI.Animation;
with TGUI.Duration;
with TGUI.Cursor;

package TGUI.Widget is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function copy (other : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_copy";

   procedure free (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_free";

   procedure setPosition (widget : access tguiWidget; position : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setPosition";

   procedure setPositionFromLayout (widget : access tguiWidget; layout : access tguiLayout2d)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setPositionFromLayout";

   function getPosition (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getPosition";

   function getAbsolutePosition (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getAbsolutePosition";

   function getWidgetOffset (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getWidgetOffset";

   procedure setWidth (widget : access tguiWidget; width : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setWidth";

   procedure setWidthFromLayout (widget : access tguiWidget; layout : access tguiLayout)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setWidthFromLayout";

   procedure setHeight (widget : access tguiWidget; height : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setHeight";

   procedure setHeightFromLayout (widget : access tguiWidget; layout : access tguiLayout)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setHeightFromLayout";

   procedure setSize (widget : access tguiWidget; size : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setSize";

   procedure setSizeFromLayout (widget : access tguiWidget; layout : access tguiLayout2d)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setSizeFromLayout";

   function getSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getSize";

   function getFullSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getFullSize";

   procedure setAutoLayout (widget : access constant tguiWidget; layout : TGUI.Layout.tguiAutoLayout)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setAutoLayout";

   function getAutoLayout (widget : access constant tguiWidget) return TGUI.Layout.tguiAutoLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getAutoLayout";

   procedure setOrigin (widget : access tguiWidget; origin : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setOrigin";

   function getOrigin (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getOrigin";

   function signalConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalConnect";

   -- tguiWidget_free must be called on the first parameter in the callback function
   function signalConnectEx
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : access tguiWidget; arg2 : tguiUtf32)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalConnectEx";

   function signalIntConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiInt)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalIntConnect";

   function signalUIntConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiUint32)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalUIntConnect";

   function signalBoolConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiBool)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalBoolConnect";

   function signalFloatConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiFloat)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalFloatConnect";

   function signalColorConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : TGUI.Color.tguiColor)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalColorConnect";

   function signalStringConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiUtf32)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalStringConnect";

   function signalVector2fConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalVector2fConnect";

   function signalFloatRectConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : TGUI.Rect.tguiFloatRect)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalFloatRectConnect";

   function signalRangeConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiFloat; arg2 : tguiFloat)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalRangeConnect";

   -- tguiWidget_free must be called on the parameter in the callback function
   function signalChildWindowConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : access tguiWidget)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalChildWindowConnect";

   function signalItemConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiInt)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalItemConnect";

   function signalPanelListBoxItemConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiInt)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalPanelListBoxItemConnect";

   -- List of strings
   function signalFileDialogPathsConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalFileDialogPathsConnect";

   function signalShowEffectConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : TGUI.Animation.tguiShowEffectType; arg2 : tguiBool)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalShowEffectConnect";

   function signalAnimationTypeConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : TGUI.Animation.tguiAnimationType)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalAnimationTypeConnect";

   -- List of strings
   function signalItemHierarchyConnect
     (widget : access tguiWidget;
      signalName : String;
      c_function : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalItemHierarchyConnect";

   function signalDisconnect
     (widget : access tguiWidget;
      signalName : String;
      id : tguiUint32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalDisconnect";

   procedure signalDisconnectAll (widget : access tguiWidget; signalName : String)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_signalDisconnectAll";

   function setSignalEnabled
     (widget : access tguiWidget;
      signalName : String;
      enabled : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setSignalEnabled";

   function isSignalEnabled (widget : access tguiWidget; signalName : String) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isSignalEnabled";

   function setRenderer (widget : access tguiWidget; renderer : access tguiRendererData) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setRenderer";

   function getRenderer (widget : access constant tguiWidget) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getRenderer";

   function getSharedRenderer (widget : access constant tguiWidget) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getSharedRenderer";

   procedure setVisible (widget : access tguiWidget; visible : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setVisible";

   function isVisible (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isVisible";

   procedure showWithEffect
     (widget : access tguiWidget;
      c_type : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_showWithEffect";

   procedure hideWithEffect
     (widget : access tguiWidget;
      c_type : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_hideWithEffect";

   procedure moveWithAnimation
     (widget : access tguiWidget;
      position : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_moveWithAnimation";

   procedure resizeWithAnimation
     (widget : access tguiWidget;
      size : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_resizeWithAnimation";

   procedure setEnabled (widget : access tguiWidget; enabled : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setEnabled";

   function isEnabled (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isEnabled";

   procedure setFocused (widget : access tguiWidget; focused : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setFocused";

   function isFocused (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isFocused";

   procedure setFocusable (widget : access tguiWidget; focusable : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setFocusable";

   function isFocusable (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isFocusable";

   function getWidgetType (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getWidgetType";

   procedure moveToFront (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_moveToFront";

   procedure moveToBack (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_moveToBack";

   procedure setUserData (widget : access tguiWidget; data : Standard.System.Address)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setUserData";

   function getUserData (widget : access constant tguiWidget) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getUserData";

   function hasUserData (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_hasUserData";

   procedure setToolTip (widget : access tguiWidget; toolTip : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setToolTip";

   function getToolTip (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getToolTip";

   function getParent (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getParent";

   function isAnimationPlaying (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isAnimationPlaying";

   procedure setTextSize (widget : access tguiWidget; size : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setTextSize";

   function getTextSize (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getTextSize";

   procedure setWidgetName (widget : access tguiWidget; name : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setWidgetName";

   function getWidgetName (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getWidgetName";

   procedure setMouseCursor (widget : access tguiWidget; cursor : TGUI.Cursor.tguiCursorType)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setMouseCursor";

   function getMouseCursor (widget : access constant tguiWidget) return TGUI.Cursor.tguiCursorType
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getMouseCursor";

   procedure setNavigationUp (widget : access tguiWidget; widgetAbove : access constant tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setNavigationUp";

   procedure setNavigationDown (widget : access tguiWidget; widgetBelow : access constant tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setNavigationDown";

   procedure setNavigationLeft (widget : access tguiWidget; widgetLeft : access constant tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setNavigationLeft";

   procedure setNavigationRight (widget : access tguiWidget; widgetRight : access constant tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setNavigationRight";

   function getNavigationUp (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getNavigationUp";

   function getNavigationDown (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getNavigationDown";

   function getNavigationLeft (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getNavigationLeft";

   function getNavigationRight (widget : access constant tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_getNavigationRight";

   procedure finishAllAnimations (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_finishAllAnimations";

   procedure setAutoLayoutUpdateEnabled (widget : access tguiWidget; enabled : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_setAutoLayoutUpdateEnabled";

   procedure updateTime (widget : access tguiWidget; duration : TGUI.Duration.tguiDuration)
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_updateTime";

   function isMouseDown (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isMouseDown";

   function isMouseOnWidget (widget : access constant tguiWidget; pos : TGUI.Vector2.tguiVector2f) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiWidget_isMouseOnWidget";

private



end TGUI.Widget;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
