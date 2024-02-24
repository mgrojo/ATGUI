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



with System;
with TGUI.Vector2;


package TGUI.Container is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   procedure add
     (container : access tguiWidget;
      widget : access tguiWidget;
      widgetName : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_add";

   function get (container : access tguiWidget; widgetName : tguiUtf32) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_get";

   -- tguiWidget_free must be called on each element in the returned list
   function getWidgets (container : access tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getWidgets";

   function remove (container : access tguiWidget; widget : access tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_remove";

   procedure removeAllWidgets (container : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_removeAllWidgets";

   procedure moveWidgetToFront (container : access tguiWidget; widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_moveWidgetToFront";

   procedure moveWidgetToBack (container : access tguiWidget; widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_moveWidgetToBack";

   function moveWidgetForward (container : access tguiWidget; widget : access tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_moveWidgetForward";

   function moveWidgetBackward (container : access tguiWidget; widget : access tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_moveWidgetBackward";

   function setWidgetIndex
     (container : access tguiWidget;
      widget : access tguiWidget;
      index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_setWidgetIndex";

   function getWidgetIndex (container : access tguiWidget; widget : access tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getWidgetIndex";

   function getFocusedChild (container : access tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getFocusedChild";

   function getFocusedLeaf (container : access tguiWidget) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getFocusedLeaf";

   function getWidgetAtPosition
     (container : access tguiWidget;
      x : tguiFloat;
      y : tguiFloat;
      recursive : tguiBool) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getWidgetAtPosition";

   function focusNextWidget (container : access tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_focusNextWidget";

   function focusPreviousWidget (container : access tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_focusPreviousWidget";

   function getInnerSize (container : access tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getInnerSize";

   function getChildWidgetsOffset (container : access tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_getChildWidgetsOffset";

   function loadWidgetsFromFile
     (container : access tguiWidget;
      filename : String;
      replaceExisting : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_loadWidgetsFromFile";

   function saveWidgetsToFile (container : access tguiWidget; filename : String) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiContainer_saveWidgetsToFile";

private



end TGUI.Container;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
