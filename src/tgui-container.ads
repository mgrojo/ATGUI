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

with System;
with TGUI.Vector2;

package TGUI.Container is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure add
     (container : access tguiWidget; widget : access tguiWidget; widgetName : tguiUtf32);

   function get (container : access tguiWidget; widgetName : tguiUtf32) return access tguiWidget;

   -- tguiWidget_free must be called on each element in the returned list
   function getWidgets
     (container : access tguiWidget; count : access tguiSize_t) return System.Address;

   function remove (container : access tguiWidget; widget : access tguiWidget) return tguiBool;

   procedure removeAllWidgets (container : access tguiWidget);

   procedure moveWidgetToFront (container : access tguiWidget; widget : access tguiWidget);

   procedure moveWidgetToBack (container : access tguiWidget; widget : access tguiWidget);

   function moveWidgetForward
     (container : access tguiWidget; widget : access tguiWidget) return tguiSize_t;

   function moveWidgetBackward
     (container : access tguiWidget; widget : access tguiWidget) return tguiSize_t;

   function setWidgetIndex
     (container : access tguiWidget; widget : access tguiWidget; index : tguiSize_t)
      return tguiBool;

   function getWidgetIndex
     (container : access tguiWidget; widget : access tguiWidget) return tguiInt;

   function getFocusedChild (container : access tguiWidget) return access tguiWidget;

   function getFocusedLeaf (container : access tguiWidget) return access tguiWidget;

   function getWidgetAtPosition
     (container : access tguiWidget; x : tguiFloat; y : tguiFloat; recursive : tguiBool)
      return access tguiWidget;

   function focusNextWidget (container : access tguiWidget) return tguiBool;

   function focusPreviousWidget (container : access tguiWidget) return tguiBool;

   function getInnerSize (container : access tguiWidget) return TGUI.Vector2.tguiVector2f;

   function getChildWidgetsOffset (container : access tguiWidget) return TGUI.Vector2.tguiVector2f;

   function loadWidgetsFromFile
     (container : access tguiWidget; filename : String; replaceExisting : tguiBool) return tguiBool;

   function saveWidgetsToFile (container : access tguiWidget; filename : String) return tguiBool;

private

   pragma Import (C, add, "tguiContainer_add");
   pragma Import (C, get, "tguiContainer_get");
   pragma Import (C, getWidgets, "tguiContainer_getWidgets");
   pragma Import (C, remove, "tguiContainer_remove");
   pragma Import (C, removeAllWidgets, "tguiContainer_removeAllWidgets");
   pragma Import (C, moveWidgetToFront, "tguiContainer_moveWidgetToFront");
   pragma Import (C, moveWidgetToBack, "tguiContainer_moveWidgetToBack");
   pragma Import (C, moveWidgetForward, "tguiContainer_moveWidgetForward");
   pragma Import (C, moveWidgetBackward, "tguiContainer_moveWidgetBackward");
   pragma Import (C, setWidgetIndex, "tguiContainer_setWidgetIndex");
   pragma Import (C, getWidgetIndex, "tguiContainer_getWidgetIndex");
   pragma Import (C, getFocusedChild, "tguiContainer_getFocusedChild");
   pragma Import (C, getFocusedLeaf, "tguiContainer_getFocusedLeaf");
   pragma Import (C, getWidgetAtPosition, "tguiContainer_getWidgetAtPosition");
   pragma Import (C, focusNextWidget, "tguiContainer_focusNextWidget");
   pragma Import (C, focusPreviousWidget, "tguiContainer_focusPreviousWidget");
   pragma Import (C, getInnerSize, "tguiContainer_getInnerSize");
   pragma Import (C, getChildWidgetsOffset, "tguiContainer_getChildWidgetsOffset");
   pragma Import (C, saveWidgetsToFile, "tguiContainer_saveWidgetsToFile");

end TGUI.Container;
