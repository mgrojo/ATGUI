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


with TGUI.Alignment;

with System;
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.ListView is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_create";

   function addColumn
     (widget : access tguiWidget;
      text : tguiUtf32;
      width : tguiFloat;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_addColumn";

   procedure setColumnText
     (widget : access tguiWidget;
      index : tguiSize_t;
      text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setColumnText";

   function getColumnText (widget : access tguiWidget; index : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getColumnText";

   procedure setColumnWidth
     (widget : access tguiWidget;
      index : tguiSize_t;
      width : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setColumnWidth";

   function getColumnWidth (widget : access tguiWidget; index : tguiSize_t) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getColumnWidth";

   procedure setColumnAlignment
     (widget : access tguiWidget;
      index : tguiSize_t;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setColumnAlignment";

   function getColumnAlignment (widget : access tguiWidget; index : tguiSize_t) return TGUI.Alignment.tguiHorizontalAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getColumnAlignment";

   procedure removeAllColumns (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_removeAllColumns";

   function getColumnCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getColumnCount";

   procedure setHeaderHeight (widget : access tguiWidget; height : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHeaderHeight";

   function getHeaderHeight (widget : access tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHeaderHeight";

   function getCurrentHeaderHeight (widget : access tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getCurrentHeaderHeight";

   procedure setHeaderVisible (widget : access tguiWidget; showHeader : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHeaderVisible";

   function getHeaderVisible (widget : access tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHeaderVisible";

   function addItem (widget : access tguiWidget; text : tguiUtf32) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_addItem";

   function addItemRow
     (widget : access tguiWidget;
      item : System.Address;
      itemLength : tguiUint32) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_addItemRow";

   function changeItem
     (widget : access tguiWidget;
      index : tguiSize_t;
      item : System.Address;
      itemLength : tguiUint32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_changeItem";

   function changeSubItem
     (widget : access tguiWidget;
      index : tguiSize_t;
      column : tguiSize_t;
      text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_changeSubItem";

   function removeItem (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_removeItem";

   procedure removeAllItems (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_removeAllItems";

   procedure setSelectedItem (widget : access tguiWidget; index : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setSelectedItem";

   procedure setSelectedItems
     (widget : access tguiWidget;
      indices : access tguiSize_t;
      indicesLength : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setSelectedItems";

   function getSelectedItemIndex (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getSelectedItemIndex";

   function getSelectedItemIndices (widget : access constant tguiWidget; count : access tguiSize_t) return access tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getSelectedItemIndices";

   procedure deselectItems (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_deselectItems";

   procedure setMultiSelect (widget : access tguiWidget; multiSelect : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setMultiSelect";

   function getMultiSelect (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getMultiSelect";

   procedure setItemIcon
     (widget : access tguiWidget;
      index : tguiSize_t;
      texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setItemIcon";

   function getItemCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItemCount";

   function getItem (widget : access tguiWidget; index : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItem";

   function getItemCell
     (widget : access tguiWidget;
      rowIndex : tguiSize_t;
      columnIndex : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItemCell";

   function getItemRow
     (widget : access constant tguiWidget;
      index : tguiSize_t;
      count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItemRow";

   function getItems (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItems";

   procedure setItemHeight (widget : access tguiWidget; height : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setItemHeight";

   function getItemHeight (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getItemHeight";

   procedure setHeaderTextSize (widget : access tguiWidget; size : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHeaderTextSize";

   function getHeaderTextSize (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHeaderTextSize";

   procedure setSeparatorWidth (widget : access tguiWidget; width : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setSeparatorWidth";

   function getSeparatorWidth (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getSeparatorWidth";

   procedure setHeaderSeparatorHeight (widget : access tguiWidget; height : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHeaderSeparatorHeight";

   function getHeaderSeparatorHeight (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHeaderSeparatorHeight";

   procedure setGridLinesWidth (widget : access tguiWidget; width : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setGridLinesWidth";

   function getGridLinesWidth (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getGridLinesWidth";

   procedure setAutoScroll (widget : access tguiWidget; autoScroll : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setAutoScroll";

   function getAutoScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getAutoScroll";

   procedure setShowVerticalGridLines (widget : access tguiWidget; showGridLines : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setShowVerticalGridLines";

   function getShowVerticalGridLines (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getShowVerticalGridLines";

   procedure setShowHorizontalGridLines (widget : access tguiWidget; showGridLines : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setShowHorizontalGridLines";

   function getShowHorizontalGridLines (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getShowHorizontalGridLines";

   procedure setExpandLastColumn (widget : access tguiWidget; expand : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setExpandLastColumn";

   function getExpandLastColumn (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getExpandLastColumn";

   procedure setVerticalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setVerticalScrollbarPolicy";

   function getVerticalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getVerticalScrollbarPolicy";

   procedure setHorizontalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHorizontalScrollbarPolicy";

   function getHorizontalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHorizontalScrollbarPolicy";

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setVerticalScrollbarValue";

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getVerticalScrollbarValue";

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_setHorizontalScrollbarValue";

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_getHorizontalScrollbarValue";

   procedure sort
     (widget : access tguiWidget;
      index : tguiSize_t;
      c_function : access function (arg1 : tguiUtf32; arg2 : tguiUtf32) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiListView_sort";

private



end TGUI.Widgets.ListView;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
