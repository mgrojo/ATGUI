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

package TGUI.Widgets.ListBox is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   function addItem (widget : access tguiWidget; item : tguiUtf32; id : tguiUtf32) return tguiBool;

   function getItemById (widget : access constant tguiWidget; id : tguiUtf32) return tguiUtf32;

   function getItemByIndex
     (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32;

   function getIndexById (widget : access constant tguiWidget; id : tguiUtf32) return tguiInt;

   function getIdByIndex (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32;

   function setSelectedItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool;

   function setSelectedItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool;

   function setSelectedItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   procedure deselectItem (widget : access tguiWidget);

   function removeItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool;

   function removeItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool;

   function removeItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   procedure removeAllItems (widget : access tguiWidget);

   function getSelectedItem (widget : access constant tguiWidget) return tguiUtf32;

   function getSelectedItemId (widget : access constant tguiWidget) return tguiUtf32;

   function getSelectedItemIndex (widget : access constant tguiWidget) return tguiInt;

   function changeItem
     (widget : access tguiWidget; originalValue : tguiUtf32; newValue : tguiUtf32) return tguiBool;

   function changeItemById
     (widget : access tguiWidget; id : tguiUtf32; newValue : tguiUtf32) return tguiBool;

   function changeItemByIndex
     (widget : access tguiWidget; index : tguiSize_t; newValue : tguiUtf32) return tguiBool;

   function getItemCount (widget : access constant tguiWidget) return tguiSize_t;

   function getItems
     (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address;

   function getItemIds
     (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address;

   procedure setItemHeight (widget : access tguiWidget; height : tguiUint32);

   function getItemHeight (widget : access constant tguiWidget) return tguiUint32;

   procedure setMaximumItems (widget : access tguiWidget; maxItems : tguiSize_t);

   function getMaximumItems (widget : access constant tguiWidget) return tguiSize_t;

   procedure setAutoScroll (widget : access tguiWidget; autoScroll : tguiBool);

   function getAutoScroll (widget : access constant tguiWidget) return tguiBool;

   procedure setScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   function contains (widget : access tguiWidget; item : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiListBox_contains";

   function containsId (widget : access tguiWidget; id : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiListBox_containsId";

private

   pragma Import (C, create, "tguiListBox_create");
   pragma Import (C, addItem, "tguiListBox_addItem");
   pragma Import (C, getItemById, "tguiListBox_getItemById");
   pragma Import (C, getItemByIndex, "tguiListBox_getItemByIndex");
   pragma Import (C, getIndexById, "tguiListBox_getIndexById");
   pragma Import (C, getIdByIndex, "tguiListBox_getIdByIndex");
   pragma Import (C, setSelectedItem, "tguiListBox_setSelectedItem");
   pragma Import (C, setSelectedItemById, "tguiListBox_setSelectedItemById");
   pragma Import (C, setSelectedItemByIndex, "tguiListBox_setSelectedItemByIndex");
   pragma Import (C, deselectItem, "tguiListBox_deselectItem");
   pragma Import (C, removeItem, "tguiListBox_removeItem");
   pragma Import (C, removeItemById, "tguiListBox_removeItemById");
   pragma Import (C, removeItemByIndex, "tguiListBox_removeItemByIndex");
   pragma Import (C, removeAllItems, "tguiListBox_removeAllItems");
   pragma Import (C, getSelectedItem, "tguiListBox_getSelectedItem");
   pragma Import (C, getSelectedItemId, "tguiListBox_getSelectedItemId");
   pragma Import (C, getSelectedItemIndex, "tguiListBox_getSelectedItemIndex");
   pragma Import (C, changeItem, "tguiListBox_changeItem");
   pragma Import (C, changeItemById, "tguiListBox_changeItemById");
   pragma Import (C, changeItemByIndex, "tguiListBox_changeItemByIndex");
   pragma Import (C, getItemCount, "tguiListBox_getItemCount");
   pragma Import (C, getItems, "tguiListBox_getItems");
   pragma Import (C, getItemIds, "tguiListBox_getItemIds");
   pragma Import (C, setItemHeight, "tguiListBox_setItemHeight");
   pragma Import (C, getItemHeight, "tguiListBox_getItemHeight");
   pragma Import (C, setMaximumItems, "tguiListBox_setMaximumItems");
   pragma Import (C, getMaximumItems, "tguiListBox_getMaximumItems");
   pragma Import (C, setAutoScroll, "tguiListBox_setAutoScroll");
   pragma Import (C, getAutoScroll, "tguiListBox_getAutoScroll");
   pragma Import (C, setScrollbarValue, "tguiListBox_setScrollbarValue");
   pragma Import (C, getScrollbarValue, "tguiListBox_getScrollbarValue");

end TGUI.Widgets.ListBox;
