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
   function copy (other : tguiWidget_Cons) return tguiWidget_Ptr;

   procedure free (widget : tguiWidget_Ptr);

   procedure setPosition (widget : tguiWidget_Ptr; position : TGUI.Vector2.tguiVector2f);

   procedure setPositionFromLayout (widget : tguiWidget_Ptr; layout : tguiLayout2d_Ptr);

   function getPosition (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   function getAbsolutePosition (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   function getWidgetOffset (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   procedure setWidth (widget : tguiWidget_Ptr; width : tguiFloat);

   procedure setWidthFromLayout (widget : tguiWidget_Ptr; layout : tguiLayout_Ptr);

   procedure setHeight (widget : tguiWidget_Ptr; height : tguiFloat);

   procedure setHeightFromLayout (widget : tguiWidget_Ptr; layout : tguiLayout_Ptr);

   procedure setSize (widget : tguiWidget_Ptr; size : TGUI.Vector2.tguiVector2f);

   procedure setSizeFromLayout (widget : tguiWidget_Ptr; layout : tguiLayout2d_Ptr);

   function getSize (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   function getFullSize (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   procedure setAutoLayout (widget : tguiWidget_Cons; layout : TGUI.Layout.tguiAutoLayout);

   function getAutoLayout (widget : tguiWidget_Cons) return TGUI.Layout.tguiAutoLayout;

   procedure setOrigin (widget : tguiWidget_Ptr; origin : TGUI.Vector2.tguiVector2f);

   function getOrigin (widget : tguiWidget_Cons) return TGUI.Vector2.tguiVector2f;

   function signalConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure) return tguiUint32;

   -- tguiWidget_free must be called on the first parameter in the callback function
   function signalConnectEx
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiWidget_Ptr; arg2 : tguiUtf32)) return tguiUint32;

   function signalIntConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   function signalUIntConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiUint32))
      return tguiUint32;

   function signalBoolConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiBool))
      return tguiUint32;

   function signalFloatConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiFloat))
      return tguiUint32;

   function signalColorConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Color.tguiColor)) return tguiUint32;

   function signalStringConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiUtf32))
      return tguiUint32;

   function signalVector2fConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f)) return tguiUint32;

   function signalFloatRectConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Rect.tguiFloatRect)) return tguiUint32;

   function signalRangeConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiFloat; arg2 : tguiFloat)) return tguiUint32;

   -- tguiWidget_free must be called on the parameter in the callback function
   function signalChildWindowConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiWidget_Ptr)) return tguiUint32;

   function signalItemConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   function signalPanelListBoxItemConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   -- List of strings
   function signalFileDialogPathsConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;

   function signalShowEffectConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiShowEffectType; arg2 : tguiBool))
      return tguiUint32;

   function signalAnimationTypeConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiAnimationType)) return tguiUint32;

   -- List of strings
   function signalItemHierarchyConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;

   function signalDisconnect
     (widget : tguiWidget_Ptr; signalName : String; id : tguiUint32) return tguiBool;

   procedure signalDisconnectAll (widget : tguiWidget_Ptr; signalName : String);

   function setSignalEnabled
     (widget : tguiWidget_Ptr; signalName : String; enabled : tguiBool) return tguiBool;

   function isSignalEnabled (widget : tguiWidget_Ptr; signalName : String) return tguiBool;

   function setRenderer (widget : tguiWidget_Ptr; renderer : tguiRendererData_Ptr) return tguiBool;

   function getRenderer (widget : tguiWidget_Cons) return tguiRenderer_Ptr;

   function getSharedRenderer (widget : tguiWidget_Cons) return tguiRenderer_Ptr;

   procedure setVisible (widget : tguiWidget_Ptr; visible : tguiBool);

   function isVisible (widget : tguiWidget_Cons) return tguiBool;

   procedure showWithEffect
     (widget   : tguiWidget_Ptr; effectType : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration);

   procedure hideWithEffect
     (widget   : tguiWidget_Ptr; effectType : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration);

   procedure moveWithAnimation
     (widget   : tguiWidget_Ptr; position : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration);

   procedure resizeWithAnimation
     (widget   : tguiWidget_Ptr; size : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration);

   procedure setEnabled (widget : tguiWidget_Ptr; enabled : tguiBool);

   function isEnabled (widget : tguiWidget_Cons) return tguiBool;

   procedure setFocused (widget : tguiWidget_Ptr; focused : tguiBool);

   function isFocused (widget : tguiWidget_Cons) return tguiBool;

   procedure setFocusable (widget : tguiWidget_Ptr; focusable : tguiBool);

   function isFocusable (widget : tguiWidget_Cons) return tguiBool;

   function getWidgetType (widget : tguiWidget_Cons) return tguiUtf32;

   procedure moveToFront (widget : tguiWidget_Ptr);

   procedure moveToBack (widget : tguiWidget_Ptr);

   procedure setUserData (widget : tguiWidget_Ptr; data : Standard.System.Address);

   function getUserData (widget : tguiWidget_Cons) return System.Address;

   function hasUserData (widget : tguiWidget_Cons) return tguiBool;

   procedure setToolTip (widget : tguiWidget_Ptr; toolTip : tguiWidget_Ptr);

   function getToolTip (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   function getParent (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   function isAnimationPlaying (widget : tguiWidget_Cons) return tguiBool;

   procedure setTextSize (widget : tguiWidget_Ptr; size : tguiUint32);

   function getTextSize (widget : tguiWidget_Cons) return tguiUint32;

   procedure setWidgetName (widget : tguiWidget_Ptr; name : tguiUtf32);

   function getWidgetName (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setMouseCursor (widget : tguiWidget_Ptr; cursor : TGUI.Cursor.tguiCursorType);

   function getMouseCursor (widget : tguiWidget_Cons) return TGUI.Cursor.tguiCursorType;

   procedure setNavigationUp (widget : tguiWidget_Ptr; widgetAbove : tguiWidget_Cons);

   procedure setNavigationDown (widget : tguiWidget_Ptr; widgetBelow : tguiWidget_Cons);

   procedure setNavigationLeft (widget : tguiWidget_Ptr; widgetLeft : tguiWidget_Cons);

   procedure setNavigationRight (widget : tguiWidget_Ptr; widgetRight : tguiWidget_Cons);

   function getNavigationUp (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   function getNavigationDown (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   function getNavigationLeft (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   function getNavigationRight (widget : tguiWidget_Cons) return tguiWidget_Ptr;

   procedure finishAllAnimations (widget : tguiWidget_Ptr);

   procedure setAutoLayoutUpdateEnabled (widget : tguiWidget_Ptr; enabled : tguiBool);

   procedure updateTime (widget : tguiWidget_Ptr; duration : TGUI.Duration.tguiDuration);

   function isMouseDown (widget : tguiWidget_Cons) return tguiBool;

   function isMouseOnWidget
     (widget : tguiWidget_Cons; pos : TGUI.Vector2.tguiVector2f) return tguiBool;

private

   pragma Import (C, copy, "tguiWidget_copy");
   pragma Import (C, free, "tguiWidget_free");
   pragma Import (C, setPosition, "tguiWidget_setPosition");
   pragma Import (C, setPositionFromLayout, "tguiWidget_setPositionFromLayout");
   pragma Import (C, getPosition, "tguiWidget_getPosition");
   pragma Import (C, getAbsolutePosition, "tguiWidget_getAbsolutePosition");
   pragma Import (C, getWidgetOffset, "tguiWidget_getWidgetOffset");
   pragma Import (C, setWidth, "tguiWidget_setWidth");
   pragma Import (C, setWidthFromLayout, "tguiWidget_setWidthFromLayout");
   pragma Import (C, setHeight, "tguiWidget_setHeight");
   pragma Import (C, setHeightFromLayout, "tguiWidget_setHeightFromLayout");
   pragma Import (C, setSize, "tguiWidget_setSize");
   pragma Import (C, setSizeFromLayout, "tguiWidget_setSizeFromLayout");
   pragma Import (C, getSize, "tguiWidget_getSize");
   pragma Import (C, getFullSize, "tguiWidget_getFullSize");
   pragma Import (C, setAutoLayout, "tguiWidget_setAutoLayout");
   pragma Import (C, getAutoLayout, "tguiWidget_getAutoLayout");
   pragma Import (C, setOrigin, "tguiWidget_setOrigin");
   pragma Import (C, getOrigin, "tguiWidget_getOrigin");
   pragma Import (C, setRenderer, "tguiWidget_setRenderer");
   pragma Import (C, getRenderer, "tguiWidget_getRenderer");
   pragma Import (C, getSharedRenderer, "tguiWidget_getSharedRenderer");
   pragma Import (C, setVisible, "tguiWidget_setVisible");
   pragma Import (C, isVisible, "tguiWidget_isVisible");
   pragma Import (C, showWithEffect, "tguiWidget_showWithEffect");
   pragma Import (C, hideWithEffect, "tguiWidget_hideWithEffect");
   pragma Import (C, moveWithAnimation, "tguiWidget_moveWithAnimation");
   pragma Import (C, resizeWithAnimation, "tguiWidget_resizeWithAnimation");
   pragma Import (C, setEnabled, "tguiWidget_setEnabled");
   pragma Import (C, isEnabled, "tguiWidget_isEnabled");
   pragma Import (C, setFocused, "tguiWidget_setFocused");
   pragma Import (C, isFocused, "tguiWidget_isFocused");
   pragma Import (C, setFocusable, "tguiWidget_setFocusable");
   pragma Import (C, isFocusable, "tguiWidget_isFocusable");
   pragma Import (C, getWidgetType, "tguiWidget_getWidgetType");
   pragma Import (C, moveToFront, "tguiWidget_moveToFront");
   pragma Import (C, moveToBack, "tguiWidget_moveToBack");
   pragma Import (C, setUserData, "tguiWidget_setUserData");
   pragma Import (C, getUserData, "tguiWidget_getUserData");
   pragma Import (C, hasUserData, "tguiWidget_hasUserData");
   pragma Import (C, setToolTip, "tguiWidget_setToolTip");
   pragma Import (C, getToolTip, "tguiWidget_getToolTip");
   pragma Import (C, getParent, "tguiWidget_getParent");
   pragma Import (C, isAnimationPlaying, "tguiWidget_isAnimationPlaying");
   pragma Import (C, setTextSize, "tguiWidget_setTextSize");
   pragma Import (C, getTextSize, "tguiWidget_getTextSize");
   pragma Import (C, setWidgetName, "tguiWidget_setWidgetName");
   pragma Import (C, getWidgetName, "tguiWidget_getWidgetName");
   pragma Import (C, setMouseCursor, "tguiWidget_setMouseCursor");
   pragma Import (C, getMouseCursor, "tguiWidget_getMouseCursor");
   pragma Import (C, setNavigationUp, "tguiWidget_setNavigationUp");
   pragma Import (C, setNavigationDown, "tguiWidget_setNavigationDown");
   pragma Import (C, setNavigationLeft, "tguiWidget_setNavigationLeft");
   pragma Import (C, setNavigationRight, "tguiWidget_setNavigationRight");
   pragma Import (C, getNavigationUp, "tguiWidget_getNavigationUp");
   pragma Import (C, getNavigationDown, "tguiWidget_getNavigationDown");
   pragma Import (C, getNavigationLeft, "tguiWidget_getNavigationLeft");
   pragma Import (C, getNavigationRight, "tguiWidget_getNavigationRight");
   pragma Import (C, finishAllAnimations, "tguiWidget_finishAllAnimations");
   pragma Import (C, setAutoLayoutUpdateEnabled, "tguiWidget_setAutoLayoutUpdateEnabled");
   pragma Import (C, updateTime, "tguiWidget_updateTime");
   pragma Import (C, isMouseDown, "tguiWidget_isMouseDown");
   pragma Import (C, isMouseOnWidget, "tguiWidget_isMouseOnWidget");

end TGUI.Widget;
