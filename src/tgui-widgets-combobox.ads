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

   function create return tguiWidget_Ptr;

   procedure setItemsToDisplay (widget : tguiWidget_Ptr; itemsToDisplay : tguiSize_t);

   function getItemsToDisplay (widget : tguiWidget_Cons) return tguiSize_t;

   function addItem (widget : tguiWidget_Ptr; item : tguiUtf32; id : tguiUtf32) return tguiBool;

   function getItemById (widget : tguiWidget_Cons; id : tguiUtf32) return tguiUtf32;

   function setSelectedItem (widget : tguiWidget_Ptr; item : tguiUtf32) return tguiBool;

   function setSelectedItemById (widget : tguiWidget_Ptr; id : tguiUtf32) return tguiBool;

   function setSelectedItemByIndex (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiBool;

   procedure deselectItem (widget : tguiWidget_Ptr);

   function removeItem (widget : tguiWidget_Ptr; item : tguiUtf32) return tguiBool;

   function removeItemById (widget : tguiWidget_Ptr; id : tguiUtf32) return tguiBool;

   function removeItemByIndex (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiBool;

   procedure removeAllItems (widget : tguiWidget_Ptr);

   function getSelectedItem (widget : tguiWidget_Cons) return tguiUtf32;

   function getSelectedItemId (widget : tguiWidget_Cons) return tguiUtf32;

   function getSelectedItemIndex (widget : tguiWidget_Cons) return tguiInt;

   function changeItem
     (widget : tguiWidget_Ptr; originalValue : tguiUtf32; newValue : tguiUtf32) return tguiBool;

   function changeItemById
     (widget : tguiWidget_Ptr; id : tguiUtf32; newValue : tguiUtf32) return tguiBool;

   function changeItemByIndex
     (widget : tguiWidget_Ptr; index : tguiSize_t; newValue : tguiUtf32) return tguiBool;

   function getItemCount (widget : tguiWidget_Cons) return tguiSize_t;

   function getItems (widget : tguiWidget_Cons; count : access tguiSize_t) return System.Address;

   function getItemIds (widget : tguiWidget_Cons; count : access tguiSize_t) return System.Address;

   procedure setMaximumItems (widget : tguiWidget_Ptr; maxItems : tguiUint32);

   function getMaximumItems (widget : tguiWidget_Cons) return tguiSize_t;

   procedure setDefaultText (widget : tguiWidget_Ptr; text : tguiUtf32);

   function getDefaultText (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setExpandDirection (widget : tguiWidget_Ptr; expandDirection : tguiExpandDirection);

   function getExpandDirection (widget : tguiWidget_Cons) return tguiExpandDirection;

   function contains (widget : tguiWidget_Ptr; item : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiComboBox_contains";

   function containsId (widget : tguiWidget_Ptr; id : tguiUtf32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiComboBox_containsId";

   procedure setChangeItemOnScroll (widget : tguiWidget_Ptr; changeOnScroll : tguiBool);

   function getChangeItemOnScroll (widget : tguiWidget_Cons) return tguiBool;

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
