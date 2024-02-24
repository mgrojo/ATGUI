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

package TGUI.Widgets.ListBox is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_create";

   function addItem
     (widget : access tguiWidget;
      item : tguiUtf32;
      id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_addItem";

   function getItemById (widget : access constant tguiWidget; id : tguiUtf32) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItemById";

   function getItemByIndex (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItemByIndex";

   function getIndexById (widget : access constant tguiWidget; id : tguiUtf32) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getIndexById";

   function getIdByIndex (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getIdByIndex";

   function setSelectedItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setSelectedItem";

   function setSelectedItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setSelectedItemById";

   function setSelectedItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setSelectedItemByIndex";

   procedure deselectItem (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_deselectItem";

   function removeItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_removeItem";

   function removeItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_removeItemById";

   function removeItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_removeItemByIndex";

   procedure removeAllItems (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_removeAllItems";

   function getSelectedItem (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getSelectedItem";

   function getSelectedItemId (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getSelectedItemId";

   function getSelectedItemIndex (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getSelectedItemIndex";

   function changeItem
     (widget : access tguiWidget;
      originalValue : tguiUtf32;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_changeItem";

   function changeItemById
     (widget : access tguiWidget;
      id : tguiUtf32;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_changeItemById";

   function changeItemByIndex
     (widget : access tguiWidget;
      index : tguiSize_t;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_changeItemByIndex";

   function getItemCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItemCount";

   function getItems (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItems";

   function getItemIds (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItemIds";

   procedure setItemHeight (widget : access tguiWidget; height : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setItemHeight";

   function getItemHeight (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getItemHeight";

   procedure setMaximumItems (widget : access tguiWidget; maxItems : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setMaximumItems";

   function getMaximumItems (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getMaximumItems";

   procedure setAutoScroll (widget : access tguiWidget; autoScroll : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setAutoScroll";

   function getAutoScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getAutoScroll";

   procedure setScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_setScrollbarValue";

   function getScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_getScrollbarValue";

   function contains (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_contains";

   function containsId (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListBox_containsId";

private



end TGUI.Widgets.ListBox;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
