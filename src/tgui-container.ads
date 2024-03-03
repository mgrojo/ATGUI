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
   procedure add (container : tguiWidget_Ptr; widget : tguiWidget_Ptr; widgetName : tguiUtf32);

   function get (container : tguiWidget_Ptr; widgetName : tguiUtf32) return tguiWidget_Ptr;

   -- tguiWidget_free must be called on each element in the returned list
   function getWidgets (container : tguiWidget_Ptr; count : access tguiSize_t) return System.Address;

   function remove (container : tguiWidget_Ptr; widget : tguiWidget_Ptr) return tguiBool;

   procedure removeAllWidgets (container : tguiWidget_Ptr);

   procedure moveWidgetToFront (container : tguiWidget_Ptr; widget : tguiWidget_Ptr);

   procedure moveWidgetToBack (container : tguiWidget_Ptr; widget : tguiWidget_Ptr);

   function moveWidgetForward
     (container : tguiWidget_Ptr; widget : tguiWidget_Ptr) return tguiSize_t;

   function moveWidgetBackward
     (container : tguiWidget_Ptr; widget : tguiWidget_Ptr) return tguiSize_t;

   function setWidgetIndex
     (container : tguiWidget_Ptr; widget : tguiWidget_Ptr; index : tguiSize_t) return tguiBool;

   function getWidgetIndex (container : tguiWidget_Ptr; widget : tguiWidget_Ptr) return tguiInt;

   function getFocusedChild (container : tguiWidget_Ptr) return tguiWidget_Ptr;

   function getFocusedLeaf (container : tguiWidget_Ptr) return tguiWidget_Ptr;

   function getWidgetAtPosition
     (container : tguiWidget_Ptr; x : tguiFloat; y : tguiFloat; recursive : tguiBool)
      return tguiWidget_Ptr;

   function focusNextWidget (container : tguiWidget_Ptr) return tguiBool;

   function focusPreviousWidget (container : tguiWidget_Ptr) return tguiBool;

   function getInnerSize (container : tguiWidget_Ptr) return TGUI.Vector2.tguiVector2f;

   function getChildWidgetsOffset (container : tguiWidget_Ptr) return TGUI.Vector2.tguiVector2f;

   function loadWidgetsFromFile
     (container : tguiWidget_Ptr; filename : String; replaceExisting : tguiBool) return tguiBool;

   function saveWidgetsToFile (container : tguiWidget_Ptr; filename : String) return tguiBool;

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

end TGUI.Container;
