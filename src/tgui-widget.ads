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
   function copy (other : access constant tguiWidget) return access tguiWidget;

   procedure free (widget : access tguiWidget);

   procedure setPosition (widget : access tguiWidget; position : TGUI.Vector2.tguiVector2f);

   procedure setPositionFromLayout (widget : access tguiWidget; layout : access tguiLayout2d);

   function getPosition (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   function getAbsolutePosition
     (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   function getWidgetOffset (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   procedure setWidth (widget : access tguiWidget; width : tguiFloat);

   procedure setWidthFromLayout (widget : access tguiWidget; layout : access tguiLayout);

   procedure setHeight (widget : access tguiWidget; height : tguiFloat);

   procedure setHeightFromLayout (widget : access tguiWidget; layout : access tguiLayout);

   procedure setSize (widget : access tguiWidget; size : TGUI.Vector2.tguiVector2f);

   procedure setSizeFromLayout (widget : access tguiWidget; layout : access tguiLayout2d);

   function getSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   function getFullSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   procedure setAutoLayout
     (widget : access constant tguiWidget; layout : TGUI.Layout.tguiAutoLayout);

   function getAutoLayout (widget : access constant tguiWidget) return TGUI.Layout.tguiAutoLayout;

   procedure setOrigin (widget : access tguiWidget; origin : TGUI.Vector2.tguiVector2f);

   function getOrigin (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   type procedureCallback is access procedure with Convention => C;

   function signalConnect
     (widget : access tguiWidget; signalName : String; callback : access procedure)
      return tguiUint32;

   -- tguiWidget_free must be called on the first parameter in the callback function
   function signalConnectEx
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : access tguiWidget; arg2 : tguiUtf32)) return tguiUint32;

   function signalIntConnect
     (widget : access tguiWidget; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   function signalUIntConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiUint32)) return tguiUint32;

   function signalBoolConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiBool)) return tguiUint32;

   function signalFloatConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiFloat)) return tguiUint32;

   function signalColorConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : TGUI.Color.tguiColor)) return tguiUint32;

   function signalStringConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiUtf32)) return tguiUint32;

   function signalVector2fConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f)) return tguiUint32;

   function signalFloatRectConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : TGUI.Rect.tguiFloatRect)) return tguiUint32;

   function signalRangeConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiFloat; arg2 : tguiFloat)) return tguiUint32;

   -- tguiWidget_free must be called on the parameter in the callback function
   function signalChildWindowConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : access tguiWidget)) return tguiUint32;

   function signalItemConnect
     (widget : access tguiWidget; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   function signalPanelListBoxItemConnect
     (widget : access tguiWidget; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32;

   -- List of strings
   function signalFileDialogPathsConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;

   function signalShowEffectConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiShowEffectType; arg2 : tguiBool))
      return tguiUint32;

   function signalAnimationTypeConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiAnimationType)) return tguiUint32;

   -- List of strings
   function signalItemHierarchyConnect
     (widget   : access tguiWidget; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;

   function signalDisconnect
     (widget : access tguiWidget; signalName : String; id : tguiUint32) return tguiBool;

   procedure signalDisconnectAll (widget : access tguiWidget; signalName : String);

   function setSignalEnabled
     (widget : access tguiWidget; signalName : String; enabled : tguiBool) return tguiBool;

   function isSignalEnabled (widget : access tguiWidget; signalName : String) return tguiBool;

   function setRenderer
     (widget : access tguiWidget; renderer : access tguiRendererData) return tguiBool;

   function getRenderer (widget : access constant tguiWidget) return access tguiRenderer;

   function getSharedRenderer (widget : access constant tguiWidget) return access tguiRenderer;

   procedure setVisible (widget : access tguiWidget; visible : tguiBool);

   function isVisible (widget : access constant tguiWidget) return tguiBool;

   procedure showWithEffect
     (widget   : access tguiWidget; effectType : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration);

   procedure hideWithEffect
     (widget   : access tguiWidget; effectType : TGUI.Animation.tguiShowEffectType;
      duration : TGUI.Duration.tguiDuration);

   procedure moveWithAnimation
     (widget   : access tguiWidget; position : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration);

   procedure resizeWithAnimation
     (widget   : access tguiWidget; size : TGUI.Vector2.tguiVector2f;
      duration : TGUI.Duration.tguiDuration);

   procedure setEnabled (widget : access tguiWidget; enabled : tguiBool);

   function isEnabled (widget : access constant tguiWidget) return tguiBool;

   procedure setFocused (widget : access tguiWidget; focused : tguiBool);

   function isFocused (widget : access constant tguiWidget) return tguiBool;

   procedure setFocusable (widget : access tguiWidget; focusable : tguiBool);

   function isFocusable (widget : access constant tguiWidget) return tguiBool;

   function getWidgetType (widget : access constant tguiWidget) return tguiUtf32;

   procedure moveToFront (widget : access tguiWidget);

   procedure moveToBack (widget : access tguiWidget);

   procedure setUserData (widget : access tguiWidget; data : Standard.System.Address);

   function getUserData (widget : access constant tguiWidget) return System.Address;

   function hasUserData (widget : access constant tguiWidget) return tguiBool;

   procedure setToolTip (widget : access tguiWidget; toolTip : access tguiWidget);

   function getToolTip (widget : access constant tguiWidget) return access tguiWidget;

   function getParent (widget : access constant tguiWidget) return access tguiWidget;

   function isAnimationPlaying (widget : access constant tguiWidget) return tguiBool;

   procedure setTextSize (widget : access tguiWidget; size : tguiUint32);

   function getTextSize (widget : access constant tguiWidget) return tguiUint32;

   procedure setWidgetName (widget : access tguiWidget; name : tguiUtf32);

   function getWidgetName (widget : access constant tguiWidget) return tguiUtf32;

   procedure setMouseCursor (widget : access tguiWidget; cursor : TGUI.Cursor.tguiCursorType);

   function getMouseCursor (widget : access constant tguiWidget) return TGUI.Cursor.tguiCursorType;

   procedure setNavigationUp (widget : access tguiWidget; widgetAbove : access constant tguiWidget);

   procedure setNavigationDown
     (widget : access tguiWidget; widgetBelow : access constant tguiWidget);

   procedure setNavigationLeft
     (widget : access tguiWidget; widgetLeft : access constant tguiWidget);

   procedure setNavigationRight
     (widget : access tguiWidget; widgetRight : access constant tguiWidget);

   function getNavigationUp (widget : access constant tguiWidget) return access tguiWidget;

   function getNavigationDown (widget : access constant tguiWidget) return access tguiWidget;

   function getNavigationLeft (widget : access constant tguiWidget) return access tguiWidget;

   function getNavigationRight (widget : access constant tguiWidget) return access tguiWidget;

   procedure finishAllAnimations (widget : access tguiWidget);

   procedure setAutoLayoutUpdateEnabled (widget : access tguiWidget; enabled : tguiBool);

   procedure updateTime (widget : access tguiWidget; duration : TGUI.Duration.tguiDuration);

   function isMouseDown (widget : access constant tguiWidget) return tguiBool;

   function isMouseOnWidget
     (widget : access constant tguiWidget; pos : TGUI.Vector2.tguiVector2f) return tguiBool;

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
   pragma Import (C, signalConnectEx, "tguiWidget_signalConnectEx");
   pragma Import (C, signalIntConnect, "tguiWidget_signalIntConnect");
   pragma Import (C, signalUIntConnect, "tguiWidget_signalUIntConnect");
   pragma Import (C, signalBoolConnect, "tguiWidget_signalBoolConnect");
   pragma Import (C, signalFloatConnect, "tguiWidget_signalFloatConnect");
   pragma Import (C, signalColorConnect, "tguiWidget_signalColorConnect");
   pragma Import (C, signalStringConnect, "tguiWidget_signalStringConnect");
   pragma Import (C, signalVector2fConnect, "tguiWidget_signalVector2fConnect");
   pragma Import (C, signalFloatRectConnect, "tguiWidget_signalFloatRectConnect");
   pragma Import (C, signalRangeConnect, "tguiWidget_signalRangeConnect");
   pragma Import (C, signalChildWindowConnect, "tguiWidget_signalChildWindowConnect");
   pragma Import (C, signalItemConnect, "tguiWidget_signalItemConnect");
   pragma Import (C, signalPanelListBoxItemConnect, "tguiWidget_signalPanelListBoxItemConnect");
   pragma Import (C, signalFileDialogPathsConnect, "tguiWidget_signalFileDialogPathsConnect");
   pragma Import (C, signalShowEffectConnect, "tguiWidget_signalShowEffectConnect");
   pragma Import (C, signalAnimationTypeConnect, "tguiWidget_signalAnimationTypeConnect");
   pragma Import (C, signalItemHierarchyConnect, "tguiWidget_signalItemHierarchyConnect");
   pragma Import (C, signalDisconnect, "tguiWidget_signalDisconnect");
   pragma Import (C, signalDisconnectAll, "tguiWidget_signalDisconnectAll");
   pragma Import (C, setSignalEnabled, "tguiWidget_setSignalEnabled");
   pragma Import (C, isSignalEnabled, "tguiWidget_isSignalEnabled");
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
