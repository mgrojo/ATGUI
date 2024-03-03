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
   function create return tguiWidget_Ptr;

   function addColumn
     (widget          : tguiWidget_Ptr; text : tguiUtf32; width : tguiFloat;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment) return tguiSize_t;

   procedure setColumnText (widget : tguiWidget_Ptr; index : tguiSize_t; text : tguiUtf32);

   function getColumnText (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiUtf32;

   procedure setColumnWidth (widget : tguiWidget_Ptr; index : tguiSize_t; width : tguiFloat);

   function getColumnWidth (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiFloat;

   procedure setColumnAlignment
     (widget          : tguiWidget_Ptr; index : tguiSize_t;
      columnAlignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getColumnAlignment
     (widget : tguiWidget_Ptr; index : tguiSize_t) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure removeAllColumns (widget : tguiWidget_Ptr);

   function getColumnCount (widget : tguiWidget_Cons) return tguiSize_t;

   procedure setHeaderHeight (widget : tguiWidget_Ptr; height : tguiFloat);

   function getHeaderHeight (widget : tguiWidget_Ptr) return tguiFloat;

   function getCurrentHeaderHeight (widget : tguiWidget_Ptr) return tguiFloat;

   procedure setHeaderVisible (widget : tguiWidget_Ptr; showHeader : tguiBool);

   function getHeaderVisible (widget : tguiWidget_Ptr) return tguiBool;

   function addItem (widget : tguiWidget_Ptr; text : tguiUtf32) return tguiSize_t;

   function addItemRow
     (widget : tguiWidget_Ptr; item : System.Address; itemLength : tguiUint32) return tguiSize_t;

   function changeItem
     (widget : tguiWidget_Ptr; index : tguiSize_t; item : System.Address; itemLength : tguiUint32)
      return tguiBool;

   function changeSubItem
     (widget : tguiWidget_Ptr; index : tguiSize_t; column : tguiSize_t; text : tguiUtf32)
      return tguiBool;

   function removeItem (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiBool;

   procedure removeAllItems (widget : tguiWidget_Ptr);

   procedure setSelectedItem (widget : tguiWidget_Ptr; index : tguiSize_t);

   procedure setSelectedItems
     (widget : tguiWidget_Ptr; indices : access tguiSize_t; indicesLength : tguiUint32);

   function getSelectedItemIndex (widget : tguiWidget_Cons) return tguiInt;

   function getSelectedItemIndices
     (widget : tguiWidget_Cons; count : access tguiSize_t) return access tguiSize_t;

   procedure deselectItems (widget : tguiWidget_Ptr);

   procedure setMultiSelect (widget : tguiWidget_Ptr; multiSelect : tguiBool);

   function getMultiSelect (widget : tguiWidget_Cons) return tguiBool;

   procedure setItemIcon (widget : tguiWidget_Ptr; index : tguiSize_t; texture : tguiTexture_Ptr);

   function getItemCount (widget : tguiWidget_Cons) return tguiSize_t;

   function getItem (widget : tguiWidget_Ptr; index : tguiSize_t) return tguiUtf32;

   function getItemCell
     (widget : tguiWidget_Ptr; rowIndex : tguiSize_t; columnIndex : tguiSize_t) return tguiUtf32;

   function getItemRow
     (widget : tguiWidget_Cons; index : tguiSize_t; count : access tguiSize_t) return System.Address;

   function getItems (widget : tguiWidget_Cons; count : access tguiSize_t) return System.Address;

   procedure setItemHeight (widget : tguiWidget_Ptr; height : tguiUint32);

   function getItemHeight (widget : tguiWidget_Cons) return tguiUint32;

   procedure setHeaderTextSize (widget : tguiWidget_Ptr; size : tguiUint32);

   function getHeaderTextSize (widget : tguiWidget_Cons) return tguiUint32;

   procedure setSeparatorWidth (widget : tguiWidget_Ptr; width : tguiUint32);

   function getSeparatorWidth (widget : tguiWidget_Cons) return tguiUint32;

   procedure setHeaderSeparatorHeight (widget : tguiWidget_Ptr; height : tguiUint32);

   function getHeaderSeparatorHeight (widget : tguiWidget_Cons) return tguiUint32;

   procedure setGridLinesWidth (widget : tguiWidget_Ptr; width : tguiUint32);

   function getGridLinesWidth (widget : tguiWidget_Cons) return tguiUint32;

   procedure setAutoScroll (widget : tguiWidget_Ptr; autoScroll : tguiBool);

   function getAutoScroll (widget : tguiWidget_Cons) return tguiBool;

   procedure setShowVerticalGridLines (widget : tguiWidget_Ptr; showGridLines : tguiBool);

   function getShowVerticalGridLines (widget : tguiWidget_Cons) return tguiBool;

   procedure setShowHorizontalGridLines (widget : tguiWidget_Ptr; showGridLines : tguiBool);

   function getShowHorizontalGridLines (widget : tguiWidget_Cons) return tguiBool;

   procedure setExpandLastColumn (widget : tguiWidget_Ptr; expand : tguiBool);

   function getExpandLastColumn (widget : tguiWidget_Cons) return tguiBool;

   procedure setVerticalScrollbarPolicy
     (widget : tguiWidget_Ptr; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getVerticalScrollbarPolicy
     (widget : tguiWidget_Cons) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setHorizontalScrollbarPolicy
     (widget : tguiWidget_Ptr; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getHorizontalScrollbarPolicy
     (widget : tguiWidget_Cons) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setVerticalScrollbarValue (widget : tguiWidget_Ptr; value : tguiUint32);

   function getVerticalScrollbarValue (widget : tguiWidget_Cons) return tguiUint32;

   procedure setHorizontalScrollbarValue (widget : tguiWidget_Ptr; value : tguiUint32);

   function getHorizontalScrollbarValue (widget : tguiWidget_Cons) return tguiUint32;

   procedure sort
     (widget   : tguiWidget_Ptr; index : tguiSize_t;
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
