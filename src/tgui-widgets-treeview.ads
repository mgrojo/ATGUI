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

package TGUI.Widgets.TreeView is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiWidget_Ptr;

   function addItem
     (widget        : tguiWidget_Ptr; hierarchy : System.Address; hierarchyLength : tguiUint32;
      createParents : tguiBool) return tguiBool;

   procedure expand
     (widget : tguiWidget_Ptr; hierarchy : System.Address; hierarchyLength : tguiUint32);

   procedure collapse
     (widget : tguiWidget_Ptr; hierarchy : System.Address; hierarchyLength : tguiUint32);

   procedure expandAll (widget : tguiWidget_Ptr);

   procedure collapseAll (widget : tguiWidget_Ptr);

   function selectItem
     (widget : tguiWidget_Ptr; hierarchy : System.Address; hierarchyLength : tguiUint32)
      return tguiBool;

   function removeItem
     (widget : tguiWidget_Ptr; hierarchy : System.Address; hierarchyLength : tguiUint32;
      removeParentsWhenEmpty : tguiBool) return tguiBool;

   procedure removeAllItems (widget : tguiWidget_Ptr);

   procedure deselectItem (widget : tguiWidget_Ptr);

   procedure setItemHeight (widget : tguiWidget_Ptr; itemHeight : tguiUint32);

   function getItemHeight (widget : tguiWidget_Cons) return tguiUint32;

   procedure setVerticalScrollbarValue (widget : tguiWidget_Ptr; value : tguiUint32);

   function getVerticalScrollbarValue (widget : tguiWidget_Cons) return tguiUint32;

   procedure setHorizontalScrollbarValue (widget : tguiWidget_Ptr; value : tguiUint32);

   function getHorizontalScrollbarValue (widget : tguiWidget_Cons) return tguiUint32;

private

   pragma Import (C, create, "tguiTreeView_create");
   pragma Import (C, addItem, "tguiTreeView_addItem");
   pragma Import (C, expand, "tguiTreeView_expand");
   pragma Import (C, collapse, "tguiTreeView_collapse");
   pragma Import (C, expandAll, "tguiTreeView_expandAll");
   pragma Import (C, collapseAll, "tguiTreeView_collapseAll");
   pragma Import (C, selectItem, "tguiTreeView_selectItem");
   pragma Import (C, removeItem, "tguiTreeView_removeItem");
   pragma Import (C, removeAllItems, "tguiTreeView_removeAllItems");
   pragma Import (C, deselectItem, "tguiTreeView_deselectItem");
   pragma Import (C, setItemHeight, "tguiTreeView_setItemHeight");
   pragma Import (C, getItemHeight, "tguiTreeView_getItemHeight");
   pragma Import (C, setVerticalScrollbarValue, "tguiTreeView_setVerticalScrollbarValue");
   pragma Import (C, getVerticalScrollbarValue, "tguiTreeView_getVerticalScrollbarValue");
   pragma Import (C, setHorizontalScrollbarValue, "tguiTreeView_setHorizontalScrollbarValue");
   pragma Import (C, getHorizontalScrollbarValue, "tguiTreeView_getHorizontalScrollbarValue");

end TGUI.Widgets.TreeView;
