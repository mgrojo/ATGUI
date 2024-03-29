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

package TGUI.Widgets.MenuBar is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure addMenu (widget : access tguiWidget; text : tguiUtf32);

   function addMenuItem
     (widget : access tguiWidget; menu : tguiUtf32; text : tguiUtf32) return tguiBool;

   function addMenuItemToLastMenu (widget : access tguiWidget; text : tguiUtf32) return tguiBool;

   function addMenuItemHierarchy
     (widget        : access tguiWidget; hierarchy : System.Address; hierarchyLength : tguiUint32;
      createParents : tguiBool) return tguiBool;

   function removeMenu (widget : access tguiWidget; menu : tguiUtf32) return tguiBool;

   function removeMenuItem
     (widget : access tguiWidget; menu : tguiUtf32; menuItem : tguiUtf32) return tguiBool;

   function removeMenuItemHierarchy
     (widget : access tguiWidget; hierarchy : System.Address; hierarchyLength : tguiUint32;
      removeParentsWhenEmpty : tguiBool) return tguiBool;

   procedure removeAllMenus (widget : access tguiWidget);

   function setMenuEnabled
     (widget : access tguiWidget; text : tguiUtf32; enabled : tguiBool) return tguiBool;

   function getMenuEnabled (widget : access tguiWidget; text : tguiUtf32) return tguiBool;

   function setMenuItemEnabled
     (widget : access tguiWidget; menu : tguiUtf32; text : tguiUtf32; enabled : tguiBool)
      return tguiBool;

   function getMenuItemEnabled
     (widget : access tguiWidget; menu : tguiUtf32; text : tguiUtf32) return tguiBool;

   function setMenuItemEnabledHierarchy
     (widget  : access tguiWidget; hierarchy : System.Address; hierarchyLength : tguiUint32;
      enabled : tguiBool) return tguiBool;

   function getMenuItemEnabledHierarchy
     (widget : access tguiWidget; hierarchy : System.Address; hierarchyLength : tguiUint32)
      return tguiBool;

   procedure setMinimumSubMenuWidth (widget : access tguiWidget; minimumWidth : tguiFloat);

   function getMinimumSubMenuWidth (widget : access constant tguiWidget) return tguiFloat;

   procedure setInvertedMenuDirection (widget : access tguiWidget; invertDirection : tguiBool);

   function getInvertedMenuDirection (widget : access constant tguiWidget) return tguiBool;

   procedure closeMenu (widget : access tguiWidget);

private

   pragma Import (C, create, "tguiMenuBar_create");
   pragma Import (C, addMenu, "tguiMenuBar_addMenu");
   pragma Import (C, addMenuItem, "tguiMenuBar_addMenuItem");
   pragma Import (C, addMenuItemToLastMenu, "tguiMenuBar_addMenuItemToLastMenu");
   pragma Import (C, addMenuItemHierarchy, "tguiMenuBar_addMenuItemHierarchy");
   pragma Import (C, removeMenu, "tguiMenuBar_removeMenu");
   pragma Import (C, removeMenuItem, "tguiMenuBar_removeMenuItem");
   pragma Import (C, removeMenuItemHierarchy, "tguiMenuBar_removeMenuItemHierarchy");
   pragma Import (C, removeAllMenus, "tguiMenuBar_removeAllMenus");
   pragma Import (C, setMenuEnabled, "tguiMenuBar_setMenuEnabled");
   pragma Import (C, getMenuEnabled, "tguiMenuBar_getMenuEnabled");
   pragma Import (C, setMenuItemEnabled, "tguiMenuBar_setMenuItemEnabled");
   pragma Import (C, getMenuItemEnabled, "tguiMenuBar_getMenuItemEnabled");
   pragma Import (C, setMenuItemEnabledHierarchy, "tguiMenuBar_setMenuItemEnabledHierarchy");
   pragma Import (C, getMenuItemEnabledHierarchy, "tguiMenuBar_getMenuItemEnabledHierarchy");
   pragma Import (C, setMinimumSubMenuWidth, "tguiMenuBar_setMinimumSubMenuWidth");
   pragma Import (C, getMinimumSubMenuWidth, "tguiMenuBar_getMinimumSubMenuWidth");
   pragma Import (C, setInvertedMenuDirection, "tguiMenuBar_setInvertedMenuDirection");
   pragma Import (C, getInvertedMenuDirection, "tguiMenuBar_getInvertedMenuDirection");
   pragma Import (C, closeMenu, "tguiMenuBar_closeMenu");

end TGUI.Widgets.MenuBar;
