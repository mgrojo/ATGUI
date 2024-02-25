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

package TGUI.Widgets.ComboBox is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   type tguiExpandDirection is
     (tguiExpandDirectionDown,
      tguiExpandDirectionUp,
      tguiExpandDirectionAutomatic) with
     Convention => C;

   function create return access tguiWidget;

   procedure setItemsToDisplay (widget : access tguiWidget; itemsToDisplay : tguiSize_t);

   function getItemsToDisplay (widget : access constant tguiWidget) return tguiSize_t;

   function addItem (widget : access tguiWidget; item : tguiUtf32; id : tguiUtf32) return tguiBool;

   function getItemById (widget : access constant tguiWidget; id : tguiUtf32) return tguiUtf32;

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

   procedure setMaximumItems (widget : access tguiWidget; maxItems : tguiUint32);

   function getMaximumItems (widget : access constant tguiWidget) return tguiSize_t;

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32);

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setExpandDirection (widget : access tguiWidget; expandDirection : tguiExpandDirection);

   function getExpandDirection (widget : access constant tguiWidget) return tguiExpandDirection;

   function contains (widget : access tguiWidget; item : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiComboBox_contains";

   function containsId (widget : access tguiWidget; id : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiComboBox_containsId";

   procedure setChangeItemOnScroll (widget : access tguiWidget; changeOnScroll : tguiBool);

   function getChangeItemOnScroll (widget : access constant tguiWidget) return tguiBool;

private

   pragma Import (C, create, "tguiComboBox_create");
   pragma Import (C, setItemsToDisplay, "tguiComboBox_setItemsToDisplay");
   pragma Import (C, getItemsToDisplay, "tguiComboBox_getItemsToDisplay");
   pragma Import (C, addItem, "tguiComboBox_addItem");
   pragma Import (C, getItemById, "tguiComboBox_getItemById");
   pragma Import (C, setSelectedItem, "tguiComboBox_setSelectedItem");
   pragma Import (C, setSelectedItemById, "tguiComboBox_setSelectedItemById");
   pragma Import (C, setSelectedItemByIndex, "tguiComboBox_setSelectedItemByIndex");
   pragma Import (C, deselectItem, "tguiComboBox_deselectItem");
   pragma Import (C, removeItem, "tguiComboBox_removeItem");
   pragma Import (C, removeItemById, "tguiComboBox_removeItemById");
   pragma Import (C, removeItemByIndex, "tguiComboBox_removeItemByIndex");
   pragma Import (C, removeAllItems, "tguiComboBox_removeAllItems");
   pragma Import (C, getSelectedItem, "tguiComboBox_getSelectedItem");
   pragma Import (C, getSelectedItemId, "tguiComboBox_getSelectedItemId");
   pragma Import (C, getSelectedItemIndex, "tguiComboBox_getSelectedItemIndex");
   pragma Import (C, changeItem, "tguiComboBox_changeItem");
   pragma Import (C, changeItemById, "tguiComboBox_changeItemById");
   pragma Import (C, changeItemByIndex, "tguiComboBox_changeItemByIndex");
   pragma Import (C, getItemCount, "tguiComboBox_getItemCount");
   pragma Import (C, getItems, "tguiComboBox_getItems");
   pragma Import (C, getItemIds, "tguiComboBox_getItemIds");
   pragma Import (C, setMaximumItems, "tguiComboBox_setMaximumItems");
   pragma Import (C, getMaximumItems, "tguiComboBox_getMaximumItems");
   pragma Import (C, setDefaultText, "tguiComboBox_setDefaultText");
   pragma Import (C, getDefaultText, "tguiComboBox_getDefaultText");
   pragma Import (C, setExpandDirection, "tguiComboBox_setExpandDirection");
   pragma Import (C, getExpandDirection, "tguiComboBox_getExpandDirection");
   pragma Import (C, setChangeItemOnScroll, "tguiComboBox_setChangeItemOnScroll");
   pragma Import (C, getChangeItemOnScroll, "tguiComboBox_getChangeItemOnScroll");

end TGUI.Widgets.ComboBox;
