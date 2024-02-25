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

package TGUI.Widgets.Tabs is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setAutoSize (widget : access tguiWidget; autoSize : tguiBool);

   function getAutoSize (widget : access constant tguiWidget) return tguiBool;

   function add
     (widget : access tguiWidget; text : tguiUtf32; c_select : tguiBool) return tguiSize_t;

   procedure insert
     (widget : access tguiWidget; index : tguiSize_t; text : tguiUtf32; c_select : tguiBool);

   function getText (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32;

   function changeText
     (widget : access tguiWidget; index : tguiSize_t; text : tguiUtf32) return tguiBool;

   function selectByText (widget : access tguiWidget; text : tguiUtf32) return tguiBool;

   function selectByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   procedure deselect (widget : access tguiWidget);

   function removeByText (widget : access tguiWidget; text : tguiUtf32) return tguiBool;

   function removeByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool;

   procedure removeAll (widget : access tguiWidget);

   function getSelected (widget : access constant tguiWidget) return tguiUtf32;

   function getSelectedIndex (widget : access constant tguiWidget) return tguiInt;

   function getTabsCount (widget : access constant tguiWidget) return tguiSize_t;

   procedure setTabVisible (widget : access tguiWidget; index : tguiSize_t; visible : tguiBool);

   function getTabVisible (widget : access constant tguiWidget; index : tguiSize_t) return tguiBool;

   procedure setTabEnabled (widget : access tguiWidget; index : tguiSize_t; enabled : tguiBool);

   function getTabEnabled (widget : access constant tguiWidget; index : tguiSize_t) return tguiBool;

   procedure setMaximumTabWidth (widget : access tguiWidget; maximumTabWidth : tguiFloat);

   function getMaximumTabWidth (widget : access constant tguiWidget) return tguiFloat;

   procedure setMinimumTabWidth (widget : access tguiWidget; minimumTabWidth : tguiFloat);

   function getMinimumTabWidth (widget : access constant tguiWidget) return tguiFloat;

private

   pragma Import (C, create, "tguiTabs_create");
   pragma Import (C, setAutoSize, "tguiTabs_setAutoSize");
   pragma Import (C, getAutoSize, "tguiTabs_getAutoSize");
   pragma Import (C, add, "tguiTabs_add");
   pragma Import (C, insert, "tguiTabs_insert");
   pragma Import (C, getText, "tguiTabs_getText");
   pragma Import (C, changeText, "tguiTabs_changeText");
   pragma Import (C, selectByText, "tguiTabs_selectByText");
   pragma Import (C, selectByIndex, "tguiTabs_selectByIndex");
   pragma Import (C, deselect, "tguiTabs_deselect");
   pragma Import (C, removeByText, "tguiTabs_removeByText");
   pragma Import (C, removeByIndex, "tguiTabs_removeByIndex");
   pragma Import (C, removeAll, "tguiTabs_removeAll");
   pragma Import (C, getSelected, "tguiTabs_getSelected");
   pragma Import (C, getSelectedIndex, "tguiTabs_getSelectedIndex");
   pragma Import (C, getTabsCount, "tguiTabs_getTabsCount");
   pragma Import (C, setTabVisible, "tguiTabs_setTabVisible");
   pragma Import (C, getTabVisible, "tguiTabs_getTabVisible");
   pragma Import (C, setTabEnabled, "tguiTabs_setTabEnabled");
   pragma Import (C, getTabEnabled, "tguiTabs_getTabEnabled");
   pragma Import (C, setMaximumTabWidth, "tguiTabs_setMaximumTabWidth");
   pragma Import (C, getMaximumTabWidth, "tguiTabs_getMaximumTabWidth");
   pragma Import (C, setMinimumTabWidth, "tguiTabs_setMinimumTabWidth");
   pragma Import (C, getMinimumTabWidth, "tguiTabs_getMinimumTabWidth");

end TGUI.Widgets.Tabs;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
