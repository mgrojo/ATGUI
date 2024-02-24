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

package TGUI.Widgets.ComboBox is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   type tguiExpandDirection is
     (tguiExpandDirectionDown,
      tguiExpandDirectionUp,
      tguiExpandDirectionAutomatic)
   with Convention => C;

   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_create";

   procedure setItemsToDisplay (widget : access tguiWidget; itemsToDisplay : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setItemsToDisplay";

   function getItemsToDisplay (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getItemsToDisplay";

   function addItem
     (widget : access tguiWidget;
      item : tguiUtf32;
      id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_addItem";

   function getItemById (widget : access constant tguiWidget; id : tguiUtf32) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getItemById";

   function setSelectedItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setSelectedItem";

   function setSelectedItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setSelectedItemById";

   function setSelectedItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setSelectedItemByIndex";

   procedure deselectItem (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_deselectItem";

   function removeItem (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_removeItem";

   function removeItemById (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_removeItemById";

   function removeItemByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_removeItemByIndex";

   procedure removeAllItems (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_removeAllItems";

   function getSelectedItem (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getSelectedItem";

   function getSelectedItemId (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getSelectedItemId";

   function getSelectedItemIndex (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getSelectedItemIndex";

   function changeItem
     (widget : access tguiWidget;
      originalValue : tguiUtf32;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_changeItem";

   function changeItemById
     (widget : access tguiWidget;
      id : tguiUtf32;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_changeItemById";

   function changeItemByIndex
     (widget : access tguiWidget;
      index : tguiSize_t;
      newValue : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_changeItemByIndex";

   function getItemCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getItemCount";

   function getItems (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getItems";

   function getItemIds (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getItemIds";

   procedure setMaximumItems (widget : access tguiWidget; maxItems : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setMaximumItems";

   function getMaximumItems (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getMaximumItems";

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setDefaultText";

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getDefaultText";

   procedure setExpandDirection (widget : access tguiWidget; expandDirection : tguiExpandDirection)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setExpandDirection";

   function getExpandDirection (widget : access constant tguiWidget) return tguiExpandDirection
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getExpandDirection";

   function contains (widget : access tguiWidget; item : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_contains";

   function containsId (widget : access tguiWidget; id : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_containsId";

   procedure setChangeItemOnScroll (widget : access tguiWidget; changeOnScroll : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_setChangeItemOnScroll";

   function getChangeItemOnScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBox_getChangeItemOnScroll";

private



end TGUI.Widgets.ComboBox;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
