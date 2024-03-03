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

with TGUI.Rect;

with System;
with TGUI.Vector2;

with TGUI.Cursor;
with TGUI.Color;

package TGUI.Gui is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure setAbsoluteViewport (gui : tguiGui_Ptr; viewport : TGUI.Rect.tguiFloatRect);

   procedure setRelativeViewport (gui : tguiGui_Ptr; viewport : TGUI.Rect.tguiFloatRect);

   function getViewport (gui : tguiGui_Cons) return TGUI.Rect.tguiFloatRect;

   procedure setAbsoluteView (gui : tguiGui_Ptr; view : TGUI.Rect.tguiFloatRect);

   procedure setRelativeView (gui : tguiGui_Ptr; view : TGUI.Rect.tguiFloatRect);

   function getView (gui : tguiGui_Cons) return TGUI.Rect.tguiFloatRect;

   procedure setTabKeyUsageEnabled (gui : tguiGui_Ptr; enabled : tguiBool);

   function isTabKeyUsageEnabled (gui : tguiGui_Ptr) return tguiBool;

   procedure draw (gui : tguiGui_Ptr);

   procedure setFont (gui : tguiGui_Ptr; font : tguiFont_Ptr);

   function getFont (gui : tguiGui_Cons) return tguiFont_Ptr;

   procedure add (gui : tguiGui_Ptr; widget : tguiWidget_Ptr; widgetName : Wide_Wide_String);

   function get (gui : tguiGui_Ptr; widgetName : tguiUtf32) return tguiWidget_Ptr;

   -- tguiWidget_free must be called on each element in the returned
   function getWidgets (gui : tguiGui_Ptr; count : out tguiSize_t) return System.Address;

   function remove (gui : tguiGui_Ptr; widget : tguiWidget_Ptr) return tguiBool;

   procedure removeAllWidgets (gui : tguiGui_Ptr);

   function getFocusedChild (gui : tguiGui_Ptr) return tguiWidget_Ptr;

   function getFocusedLeaf (gui : tguiGui_Ptr) return tguiWidget_Ptr;

   function getWidgetAtPos
     (gui : tguiGui_Ptr; pos : TGUI.Vector2.tguiVector2f; recursive : tguiBool)
      return tguiWidget_Ptr;

   function getWidgetBelowMouseCursor
     (gui : tguiGui_Ptr; mousePos : TGUI.Vector2.tguiVector2i; recursive : tguiBool)
      return tguiWidget_Ptr;

   function focusNextWidget (gui : tguiGui_Ptr; recursive : tguiBool) return tguiBool;

   function focusPreviousWidget (gui : tguiGui_Ptr; recursive : tguiBool) return tguiBool;

   procedure unfocusAllWidgets (gui : tguiGui_Ptr);

   procedure moveWidgetToFront (gui : tguiGui_Ptr; widget : tguiWidget_Ptr);

   procedure moveWidgetToBack (gui : tguiGui_Ptr; widget : tguiWidget_Ptr);

   function moveWidgetForward (gui : tguiGui_Ptr; widget : tguiWidget_Ptr) return tguiSize_t;

   function moveWidgetBackward (gui : tguiGui_Ptr; widget : tguiWidget_Ptr) return tguiSize_t;

   function setWidgetIndex
     (gui : tguiGui_Ptr; widget : tguiWidget_Ptr; index : tguiSize_t) return tguiBool;

   function getWidgetIndex (gui : tguiGui_Ptr; widget : tguiWidget_Ptr) return tguiInt;

   procedure setOpacity (gui : tguiGui_Ptr; alpha : tguiFloat);

   function getOpacity (gui : tguiGui_Cons) return tguiFloat;

   procedure setTextSize (gui : tguiGui_Ptr; size : tguiUint32);

   function getTextSize (gui : tguiGui_Cons) return tguiUint32;

   function loadWidgetsFromFile
     (gui : tguiGui_Ptr; filename : String; replaceExisting : tguiBool) return tguiBool;

   function saveWidgetsToFile (gui : tguiGui_Ptr; filename : String) return tguiBool;

   procedure setDrawingUpdatesTime (gui : tguiGui_Ptr; drawUpdatesTime : tguiBool);

   function updateTime (gui : tguiGui_Ptr) return tguiBool;

   procedure setOverrideMouseCursor (gui : tguiGui_Ptr; cursorType : TGUI.Cursor.tguiCursorType);

   procedure restoreOverrideMouseCursor (gui : tguiGui_Ptr);

   procedure requestMouseCursor (gui : tguiGui_Ptr; cursorType : TGUI.Cursor.tguiCursorType);

   function mapPixelToCoords
     (gui : tguiGui_Cons; pixel : TGUI.Vector2.tguiVector2i) return TGUI.Vector2.tguiVector2f;

   function mapCoordsToPixel
     (gui : tguiGui_Cons; coord : TGUI.Vector2.tguiVector2f) return TGUI.Vector2.tguiVector2f;

   procedure setKeyboardNavigationEnabled (gui : tguiGui_Ptr; enabled : tguiBool);

   function isKeyboardNavigationEnabled (gui : tguiGui_Cons) return tguiBool;

   procedure mainLoop (gui : tguiGui_Ptr; clearColor : access TGUI.Color.tguiColor);

----------------------------------------------------------------------------
private

   pragma Import (C, setAbsoluteViewport, "tguiGui_setAbsoluteViewport");
   pragma Import (C, setRelativeViewport, "tguiGui_setRelativeViewport");
   pragma Import (C, getViewport, "tguiGui_getViewport");
   pragma Import (C, setAbsoluteView, "tguiGui_setAbsoluteView");
   pragma Import (C, setRelativeView, "tguiGui_setRelativeView");
   pragma Import (C, getView, "tguiGui_getView");
   pragma Import (C, setTabKeyUsageEnabled, "tguiGui_setTabKeyUsageEnabled");
   pragma Import (C, isTabKeyUsageEnabled, "tguiGui_isTabKeyUsageEnabled");
   pragma Import (C, draw, "tguiGui_draw");
   pragma Import (C, setFont, "tguiGui_setFont");
   pragma Import (C, getFont, "tguiGui_getFont");
   pragma Import (C, get, "tguiGui_get");
   pragma Import (C, getWidgets, "tguiGui_getWidgets");
   pragma Import (C, remove, "tguiGui_remove");
   pragma Import (C, removeAllWidgets, "tguiGui_removeAllWidgets");
   pragma Import (C, getFocusedChild, "tguiGui_getFocusedChild");
   pragma Import (C, getFocusedLeaf, "tguiGui_getFocusedLeaf");
   pragma Import (C, getWidgetAtPos, "tguiGui_getWidgetAtPos");
   pragma Import (C, getWidgetBelowMouseCursor, "tguiGui_getWidgetBelowMouseCursor");
   pragma Import (C, focusNextWidget, "tguiGui_focusNextWidget");
   pragma Import (C, focusPreviousWidget, "tguiGui_focusPreviousWidget");
   pragma Import (C, unfocusAllWidgets, "tguiGui_unfocusAllWidgets");
   pragma Import (C, moveWidgetToFront, "tguiGui_moveWidgetToFront");
   pragma Import (C, moveWidgetToBack, "tguiGui_moveWidgetToBack");
   pragma Import (C, moveWidgetForward, "tguiGui_moveWidgetForward");
   pragma Import (C, moveWidgetBackward, "tguiGui_moveWidgetBackward");
   pragma Import (C, setWidgetIndex, "tguiGui_setWidgetIndex");
   pragma Import (C, getWidgetIndex, "tguiGui_getWidgetIndex");
   pragma Import (C, setOpacity, "tguiGui_setOpacity");
   pragma Import (C, getOpacity, "tguiGui_getOpacity");
   pragma Import (C, setTextSize, "tguiGui_setTextSize");
   pragma Import (C, getTextSize, "tguiGui_getTextSize");
   pragma Import (C, setDrawingUpdatesTime, "tguiGui_setDrawingUpdatesTime");
   pragma Import (C, updateTime, "tguiGui_updateTime");
   pragma Import (C, setOverrideMouseCursor, "tguiGui_setOverrideMouseCursor");
   pragma Import (C, restoreOverrideMouseCursor, "tguiGui_restoreOverrideMouseCursor");
   pragma Import (C, requestMouseCursor, "tguiGui_requestMouseCursor");
   pragma Import (C, mapPixelToCoords, "tguiGui_mapPixelToCoords");
   pragma Import (C, mapCoordsToPixel, "tguiGui_mapCoordsToPixel");
   pragma Import (C, setKeyboardNavigationEnabled, "tguiGui_setKeyboardNavigationEnabled");
   pragma Import (C, isKeyboardNavigationEnabled, "tguiGui_isKeyboardNavigationEnabled");
   pragma Import (C, mainLoop, "tguiGui_mainLoop");

end TGUI.Gui;
