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
   procedure setAbsoluteViewport (gui : access tguiGui; viewport : TGUI.Rect.tguiFloatRect);

   procedure setRelativeViewport (gui : access tguiGui; viewport : TGUI.Rect.tguiFloatRect);

   function getViewport (gui : access constant tguiGui) return TGUI.Rect.tguiFloatRect;

   procedure setAbsoluteView (gui : access tguiGui; view : TGUI.Rect.tguiFloatRect);

   procedure setRelativeView (gui : access tguiGui; view : TGUI.Rect.tguiFloatRect);

   function getView (gui : access constant tguiGui) return TGUI.Rect.tguiFloatRect;

   procedure setTabKeyUsageEnabled (gui : access tguiGui; enabled : tguiBool);

   function isTabKeyUsageEnabled (gui : access tguiGui) return tguiBool;

   procedure draw (gui : access tguiGui);

   procedure setFont (gui : access tguiGui; font : access tguiFont);

   function getFont (gui : access constant tguiGui) return access tguiFont;

   procedure add (gui : access tguiGui; widget : access tguiWidget; widgetName : tguiUtf32);

   function get (gui : access tguiGui; widgetName : tguiUtf32) return access tguiWidget;

   -- tguiWidget_free must be called on each element in the returned
   function getWidgets (gui : access tguiGui; count : access tguiSize_t) return System.Address;

   function remove (gui : access tguiGui; widget : access tguiWidget) return tguiBool;

   procedure removeAllWidgets (gui : access tguiGui);

   function getFocusedChild (gui : access tguiGui) return access tguiWidget;

   function getFocusedLeaf (gui : access tguiGui) return access tguiWidget;

   function getWidgetAtPos
     (gui : access tguiGui; pos : TGUI.Vector2.tguiVector2f; recursive : tguiBool)
      return access tguiWidget;

   function getWidgetBelowMouseCursor
     (gui : access tguiGui; mousePos : TGUI.Vector2.tguiVector2i; recursive : tguiBool)
      return access tguiWidget;

   function focusNextWidget (gui : access tguiGui; recursive : tguiBool) return tguiBool;

   function focusPreviousWidget (gui : access tguiGui; recursive : tguiBool) return tguiBool;

   procedure unfocusAllWidgets (gui : access tguiGui);

   procedure moveWidgetToFront (gui : access tguiGui; widget : access tguiWidget);

   procedure moveWidgetToBack (gui : access tguiGui; widget : access tguiWidget);

   function moveWidgetForward (gui : access tguiGui; widget : access tguiWidget) return tguiSize_t;

   function moveWidgetBackward (gui : access tguiGui; widget : access tguiWidget) return tguiSize_t;

   function setWidgetIndex
     (gui : access tguiGui; widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   function getWidgetIndex (gui : access tguiGui; widget : access tguiWidget) return tguiInt;

   procedure setOpacity (gui : access tguiGui; alpha : tguiFloat);

   function getOpacity (gui : access constant tguiGui) return tguiFloat;

   procedure setTextSize (gui : access tguiGui; size : tguiUint32);

   function getTextSize (gui : access constant tguiGui) return tguiUint32;

   function loadWidgetsFromFile
     (gui : access tguiGui; filename : String; replaceExisting : tguiBool) return tguiBool;

   function saveWidgetsToFile (gui : access tguiGui; filename : String) return tguiBool;

   procedure setDrawingUpdatesTime (gui : access tguiGui; drawUpdatesTime : tguiBool);

   function updateTime (gui : access tguiGui) return tguiBool;

   procedure setOverrideMouseCursor (gui : access tguiGui; c_type : TGUI.Cursor.tguiCursorType);

   procedure restoreOverrideMouseCursor (gui : access tguiGui);

   procedure requestMouseCursor (gui : access tguiGui; c_type : TGUI.Cursor.tguiCursorType);

   function mapPixelToCoords
     (gui : access constant tguiGui; pixel : TGUI.Vector2.tguiVector2i)
      return TGUI.Vector2.tguiVector2f;

   function mapCoordsToPixel
     (gui : access constant tguiGui; coord : TGUI.Vector2.tguiVector2f)
      return TGUI.Vector2.tguiVector2f;

   procedure setKeyboardNavigationEnabled (gui : access tguiGui; enabled : tguiBool);

   function isKeyboardNavigationEnabled (gui : access constant tguiGui) return tguiBool;

   procedure mainLoop (gui : access tguiGui; clearColor : access TGUI.Color.tguiColor);

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
   pragma Import (C, add, "tguiGui_add");
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
   pragma Import (C, loadWidgetsFromFile, "tguiGui_loadWidgetsFromFile");
   pragma Import (C, saveWidgetsToFile, "tguiGui_saveWidgetsToFile");
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
