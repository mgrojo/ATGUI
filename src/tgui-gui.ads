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


with TGUI.Rect;

with System;
with TGUI.Vector2;

with TGUI.Cursor;
with TGUI.Color;

package TGUI.Gui is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   procedure setAbsoluteViewport (gui : access tguiGui; viewport : TGUI.Rect.tguiFloatRect)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setAbsoluteViewport";

   procedure setRelativeViewport (gui : access tguiGui; viewport : TGUI.Rect.tguiFloatRect)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setRelativeViewport";

   function getViewport (gui : access constant tguiGui) return TGUI.Rect.tguiFloatRect
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getViewport";

   procedure setAbsoluteView (gui : access tguiGui; view : TGUI.Rect.tguiFloatRect)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setAbsoluteView";

   procedure setRelativeView (gui : access tguiGui; view : TGUI.Rect.tguiFloatRect)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setRelativeView";

   function getView (gui : access constant tguiGui) return TGUI.Rect.tguiFloatRect
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getView";

   procedure setTabKeyUsageEnabled (gui : access tguiGui; enabled : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setTabKeyUsageEnabled";

   function isTabKeyUsageEnabled (gui : access tguiGui) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_isTabKeyUsageEnabled";

   procedure draw (gui : access tguiGui)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_draw";

   procedure setFont (gui : access tguiGui; font : access tguiFont)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setFont";

   function getFont (gui : access constant tguiGui) return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getFont";

   procedure add
     (gui : access tguiGui;
      widget : access tguiWidget;
      widgetName : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_add";

   function get (gui : access tguiGui; widgetName : tguiUtf32) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_get";

   -- tguiWidget_free must be called on each element in the returned
   function getWidgets (gui : access tguiGui; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getWidgets";

   function remove (gui : access tguiGui; widget : access tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_remove";

   procedure removeAllWidgets (gui : access tguiGui)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_removeAllWidgets";

   function getFocusedChild (gui : access tguiGui) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getFocusedChild";

   function getFocusedLeaf (gui : access tguiGui) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getFocusedLeaf";

   function getWidgetAtPos
     (gui : access tguiGui;
      pos : TGUI.Vector2.tguiVector2f;
      recursive : tguiBool) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getWidgetAtPos";

   function getWidgetBelowMouseCursor
     (gui : access tguiGui;
      mousePos : TGUI.Vector2.tguiVector2i;
      recursive : tguiBool) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getWidgetBelowMouseCursor";

   function focusNextWidget (gui : access tguiGui; recursive : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_focusNextWidget";

   function focusPreviousWidget (gui : access tguiGui; recursive : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_focusPreviousWidget";

   procedure unfocusAllWidgets (gui : access tguiGui)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_unfocusAllWidgets";

   procedure moveWidgetToFront (gui : access tguiGui; widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_moveWidgetToFront";

   procedure moveWidgetToBack (gui : access tguiGui; widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_moveWidgetToBack";

   function moveWidgetForward (gui : access tguiGui; widget : access tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_moveWidgetForward";

   function moveWidgetBackward (gui : access tguiGui; widget : access tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_moveWidgetBackward";

   function setWidgetIndex
     (gui : access tguiGui;
      widget : access tguiWidget;
      index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setWidgetIndex";

   function getWidgetIndex (gui : access tguiGui; widget : access tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getWidgetIndex";

   procedure setOpacity (gui : access tguiGui; alpha : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setOpacity";

   function getOpacity (gui : access constant tguiGui) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getOpacity";

   procedure setTextSize (gui : access tguiGui; size : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setTextSize";

   function getTextSize (gui : access constant tguiGui) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_getTextSize";

   function loadWidgetsFromFile
     (gui : access tguiGui;
      filename : String;
      replaceExisting : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_loadWidgetsFromFile";

   function saveWidgetsToFile (gui : access tguiGui; filename : String) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_saveWidgetsToFile";

   procedure setDrawingUpdatesTime (gui : access tguiGui; drawUpdatesTime : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setDrawingUpdatesTime";

   function updateTime (gui : access tguiGui) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_updateTime";

   procedure setOverrideMouseCursor (gui : access tguiGui; c_type : TGUI.Cursor.tguiCursorType)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setOverrideMouseCursor";

   procedure restoreOverrideMouseCursor (gui : access tguiGui)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_restoreOverrideMouseCursor";

   procedure requestMouseCursor (gui : access tguiGui; c_type : TGUI.Cursor.tguiCursorType)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_requestMouseCursor";

   function mapPixelToCoords (gui : access constant tguiGui; pixel : TGUI.Vector2.tguiVector2i) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_mapPixelToCoords";

   function mapCoordsToPixel (gui : access constant tguiGui; coord : TGUI.Vector2.tguiVector2f) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_mapCoordsToPixel";

   procedure setKeyboardNavigationEnabled (gui : access tguiGui; enabled : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_setKeyboardNavigationEnabled";

   function isKeyboardNavigationEnabled (gui : access constant tguiGui) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_isKeyboardNavigationEnabled";

   procedure mainLoop (gui : access tguiGui; clearColor : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiGui_mainLoop";

   ----------------------------------------------------------------------------
private



end TGUI.Gui;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
