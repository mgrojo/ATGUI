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

package TGUI.Widgets.MenuBar is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_create";

   procedure addMenu (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_addMenu";

   function addMenuItem
     (widget : access tguiWidget;
      menu : tguiUtf32;
      text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_addMenuItem";

   function addMenuItemToLastMenu (widget : access tguiWidget; text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_addMenuItemToLastMenu";

   function addMenuItemHierarchy
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32;
      createParents : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_addMenuItemHierarchy";

   function removeMenu (widget : access tguiWidget; menu : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_removeMenu";

   function removeMenuItem
     (widget : access tguiWidget;
      menu : tguiUtf32;
      menuItem : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_removeMenuItem";

   function removeMenuItemHierarchy
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32;
      removeParentsWhenEmpty : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_removeMenuItemHierarchy";

   procedure removeAllMenus (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_removeAllMenus";

   function setMenuEnabled
     (widget : access tguiWidget;
      text : tguiUtf32;
      enabled : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_setMenuEnabled";

   function getMenuEnabled (widget : access tguiWidget; text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_getMenuEnabled";

   function setMenuItemEnabled
     (widget : access tguiWidget;
      menu : tguiUtf32;
      text : tguiUtf32;
      enabled : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_setMenuItemEnabled";

   function getMenuItemEnabled
     (widget : access tguiWidget;
      menu : tguiUtf32;
      text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_getMenuItemEnabled";

   function setMenuItemEnabledHierarchy
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32;
      enabled : tguiBool) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_setMenuItemEnabledHierarchy";

   function getMenuItemEnabledHierarchy
     (widget : access tguiWidget;
      hierarcy : System.Address;
      hierarchyLength : tguiUint32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_getMenuItemEnabledHierarchy";

   procedure setMinimumSubMenuWidth (widget : access tguiWidget; minimumWidth : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_setMinimumSubMenuWidth";

   function getMinimumSubMenuWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_getMinimumSubMenuWidth";

   procedure setInvertedMenuDirection (widget : access tguiWidget; invertDirection : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_setInvertedMenuDirection";

   function getInvertedMenuDirection (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_getInvertedMenuDirection";

   procedure closeMenu (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiMenuBar_closeMenu";

private



end TGUI.Widgets.MenuBar;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
