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

with TGUI.Alignment;

with System;
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.ListView is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   function addColumn
     (widget          : access tguiWidget; text : tguiUtf32; width : tguiFloat;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment) return tguiSize_t;

   procedure setColumnText (widget : access tguiWidget; index : tguiSize_t; text : tguiUtf32);

   function getColumnText (widget : access tguiWidget; index : tguiSize_t) return tguiUtf32;

   procedure setColumnWidth (widget : access tguiWidget; index : tguiSize_t; width : tguiFloat);

   function getColumnWidth (widget : access tguiWidget; index : tguiSize_t) return tguiFloat;

   procedure setColumnAlignment
     (widget          : access tguiWidget; index : tguiSize_t;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getColumnAlignment
     (widget : access tguiWidget; index : tguiSize_t) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure removeAllColumns (widget : access tguiWidget);

   function getColumnCount (widget : access constant tguiWidget) return tguiSize_t;

   procedure setHeaderHeight (widget : access tguiWidget; height : tguiFloat);

   function getHeaderHeight (widget : access tguiWidget) return tguiFloat;

   function getCurrentHeaderHeight (widget : access tguiWidget) return tguiFloat;

   procedure setHeaderVisible (widget : access tguiWidget; showHeader : tguiBool);

   function getHeaderVisible (widget : access tguiWidget) return tguiBool;

   function addItem (widget : access tguiWidget; text : tguiUtf32) return tguiSize_t;

   function addItemRow
     (widget : access tguiWidget; item : System.Address; itemLength : tguiUint32) return tguiSize_t;

   function changeItem
     (widget     : access tguiWidget; index : tguiSize_t; item : System.Address;
      itemLength : tguiUint32) return tguiBool;

   function changeSubItem
     (widget : access tguiWidget; index : tguiSize_t; column : tguiSize_t; text : tguiUtf32)
      return tguiBool;

   function removeItem (widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   procedure removeAllItems (widget : access tguiWidget);

   procedure setSelectedItem (widget : access tguiWidget; index : tguiSize_t);

   procedure setSelectedItems
     (widget : access tguiWidget; indices : access tguiSize_t; indicesLength : tguiUint32);

   function getSelectedItemIndex (widget : access constant tguiWidget) return tguiInt;

   function getSelectedItemIndices
     (widget : access constant tguiWidget; count : access tguiSize_t) return access tguiSize_t;

   procedure deselectItems (widget : access tguiWidget);

   procedure setMultiSelect (widget : access tguiWidget; multiSelect : tguiBool);

   function getMultiSelect (widget : access constant tguiWidget) return tguiBool;

   procedure setItemIcon
     (widget : access tguiWidget; index : tguiSize_t; texture : access tguiTexture);

   function getItemCount (widget : access constant tguiWidget) return tguiSize_t;

   function getItem (widget : access tguiWidget; index : tguiSize_t) return tguiUtf32;

   function getItemCell
     (widget : access tguiWidget; rowIndex : tguiSize_t; columnIndex : tguiSize_t) return tguiUtf32;

   function getItemRow
     (widget : access constant tguiWidget; index : tguiSize_t; count : access tguiSize_t)
      return System.Address;

   function getItems
     (widget : access constant tguiWidget; count : access tguiSize_t) return System.Address;

   procedure setItemHeight (widget : access tguiWidget; height : tguiUint32);

   function getItemHeight (widget : access constant tguiWidget) return tguiUint32;

   procedure setHeaderTextSize (widget : access tguiWidget; size : tguiUint32);

   function getHeaderTextSize (widget : access constant tguiWidget) return tguiUint32;

   procedure setSeparatorWidth (widget : access tguiWidget; width : tguiUint32);

   function getSeparatorWidth (widget : access constant tguiWidget) return tguiUint32;

   procedure setHeaderSeparatorHeight (widget : access tguiWidget; height : tguiUint32);

   function getHeaderSeparatorHeight (widget : access constant tguiWidget) return tguiUint32;

   procedure setGridLinesWidth (widget : access tguiWidget; width : tguiUint32);

   function getGridLinesWidth (widget : access constant tguiWidget) return tguiUint32;

   procedure setAutoScroll (widget : access tguiWidget; autoScroll : tguiBool);

   function getAutoScroll (widget : access constant tguiWidget) return tguiBool;

   procedure setShowVerticalGridLines (widget : access tguiWidget; showGridLines : tguiBool);

   function getShowVerticalGridLines (widget : access constant tguiWidget) return tguiBool;

   procedure setShowHorizontalGridLines (widget : access tguiWidget; showGridLines : tguiBool);

   function getShowHorizontalGridLines (widget : access constant tguiWidget) return tguiBool;

   procedure setExpandLastColumn (widget : access tguiWidget; expand : tguiBool);

   function getExpandLastColumn (widget : access constant tguiWidget) return tguiBool;

   procedure setVerticalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getVerticalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setHorizontalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getHorizontalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   procedure sort
     (widget   : access tguiWidget; index : tguiSize_t;
      callback : access function (arg1 : tguiUtf32; arg2 : tguiUtf32) return tguiBool);

private

   pragma Import (C, create, "tguiListView_create");
   pragma Import (C, addColumn, "tguiListView_addColumn");
   pragma Import (C, setColumnText, "tguiListView_setColumnText");
   pragma Import (C, getColumnText, "tguiListView_getColumnText");
   pragma Import (C, setColumnWidth, "tguiListView_setColumnWidth");
   pragma Import (C, getColumnWidth, "tguiListView_getColumnWidth");
   pragma Import (C, setColumnAlignment, "tguiListView_setColumnAlignment");
   pragma Import (C, getColumnAlignment, "tguiListView_getColumnAlignment");
   pragma Import (C, removeAllColumns, "tguiListView_removeAllColumns");
   pragma Import (C, getColumnCount, "tguiListView_getColumnCount");
   pragma Import (C, setHeaderHeight, "tguiListView_setHeaderHeight");
   pragma Import (C, getHeaderHeight, "tguiListView_getHeaderHeight");
   pragma Import (C, getCurrentHeaderHeight, "tguiListView_getCurrentHeaderHeight");
   pragma Import (C, setHeaderVisible, "tguiListView_setHeaderVisible");
   pragma Import (C, getHeaderVisible, "tguiListView_getHeaderVisible");
   pragma Import (C, addItem, "tguiListView_addItem");
   pragma Import (C, addItemRow, "tguiListView_addItemRow");
   pragma Import (C, changeItem, "tguiListView_changeItem");
   pragma Import (C, changeSubItem, "tguiListView_changeSubItem");
   pragma Import (C, removeItem, "tguiListView_removeItem");
   pragma Import (C, removeAllItems, "tguiListView_removeAllItems");
   pragma Import (C, setSelectedItem, "tguiListView_setSelectedItem");
   pragma Import (C, setSelectedItems, "tguiListView_setSelectedItems");
   pragma Import (C, getSelectedItemIndex, "tguiListView_getSelectedItemIndex");
   pragma Import (C, getSelectedItemIndices, "tguiListView_getSelectedItemIndices");
   pragma Import (C, deselectItems, "tguiListView_deselectItems");
   pragma Import (C, setMultiSelect, "tguiListView_setMultiSelect");
   pragma Import (C, getMultiSelect, "tguiListView_getMultiSelect");
   pragma Import (C, setItemIcon, "tguiListView_setItemIcon");
   pragma Import (C, getItemCount, "tguiListView_getItemCount");
   pragma Import (C, getItem, "tguiListView_getItem");
   pragma Import (C, getItemCell, "tguiListView_getItemCell");
   pragma Import (C, getItemRow, "tguiListView_getItemRow");
   pragma Import (C, getItems, "tguiListView_getItems");
   pragma Import (C, setItemHeight, "tguiListView_setItemHeight");
   pragma Import (C, getItemHeight, "tguiListView_getItemHeight");
   pragma Import (C, setHeaderTextSize, "tguiListView_setHeaderTextSize");
   pragma Import (C, getHeaderTextSize, "tguiListView_getHeaderTextSize");
   pragma Import (C, setSeparatorWidth, "tguiListView_setSeparatorWidth");
   pragma Import (C, getSeparatorWidth, "tguiListView_getSeparatorWidth");
   pragma Import (C, setHeaderSeparatorHeight, "tguiListView_setHeaderSeparatorHeight");
   pragma Import (C, getHeaderSeparatorHeight, "tguiListView_getHeaderSeparatorHeight");
   pragma Import (C, setGridLinesWidth, "tguiListView_setGridLinesWidth");
   pragma Import (C, getGridLinesWidth, "tguiListView_getGridLinesWidth");
   pragma Import (C, setAutoScroll, "tguiListView_setAutoScroll");
   pragma Import (C, getAutoScroll, "tguiListView_getAutoScroll");
   pragma Import (C, setShowVerticalGridLines, "tguiListView_setShowVerticalGridLines");
   pragma Import (C, getShowVerticalGridLines, "tguiListView_getShowVerticalGridLines");
   pragma Import (C, setShowHorizontalGridLines, "tguiListView_setShowHorizontalGridLines");
   pragma Import (C, getShowHorizontalGridLines, "tguiListView_getShowHorizontalGridLines");
   pragma Import (C, setExpandLastColumn, "tguiListView_setExpandLastColumn");
   pragma Import (C, getExpandLastColumn, "tguiListView_getExpandLastColumn");
   pragma Import (C, setVerticalScrollbarPolicy, "tguiListView_setVerticalScrollbarPolicy");
   pragma Import (C, getVerticalScrollbarPolicy, "tguiListView_getVerticalScrollbarPolicy");
   pragma Import (C, setHorizontalScrollbarPolicy, "tguiListView_setHorizontalScrollbarPolicy");
   pragma Import (C, getHorizontalScrollbarPolicy, "tguiListView_getHorizontalScrollbarPolicy");
   pragma Import (C, setVerticalScrollbarValue, "tguiListView_setVerticalScrollbarValue");
   pragma Import (C, getVerticalScrollbarValue, "tguiListView_getVerticalScrollbarValue");
   pragma Import (C, setHorizontalScrollbarValue, "tguiListView_setHorizontalScrollbarValue");
   pragma Import (C, getHorizontalScrollbarValue, "tguiListView_getHorizontalScrollbarValue");
   pragma Import (C, sort, "tguiListView_sort");

end TGUI.Widgets.ListView;
