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

package TGUI.Widgets.TreeView is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_create";

   function addItem
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32;
      createParents : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_addItem";

   procedure expand
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_expand";

   procedure collapse
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_collapse";

   procedure expandAll (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_expandAll";

   procedure collapseAll (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_collapseAll";

   function selectItem
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_selectItem";

   function removeItem
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32;
      removeParentsWhenEmpty : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_removeItem";

   procedure removeAllItems (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_removeAllItems";

   procedure deselectItem (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_deselectItem";

   procedure setItemHeight (widget : access tguiWidget; itemHeight : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_setItemHeight";

   function getItemHeight (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_getItemHeight";

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_setVerticalScrollbarValue";

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_getVerticalScrollbarValue";

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_setHorizontalScrollbarValue";

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeView_getHorizontalScrollbarValue";

private



end TGUI.Widgets.TreeView;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
