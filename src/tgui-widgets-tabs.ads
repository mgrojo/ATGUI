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
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_create";

   procedure setAutoSize (widget : access tguiWidget; autoSize : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_setAutoSize";

   function getAutoSize (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getAutoSize";

   function add
     (widget : access tguiWidget;
      text : tguiUtf32;
      c_select : tguiBool) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_add";

   procedure insert
     (widget : access tguiWidget;
      index : tguiSize_t;
      text : tguiUtf32;
      c_select : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_insert";

   function getText (widget : access constant tguiWidget; index : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getText";

   function changeText
     (widget : access tguiWidget;
      index : tguiSize_t;
      text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_changeText";

   function selectByText (widget : access tguiWidget; text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_selectByText";

   function selectByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_selectByIndex";

   procedure deselect (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_deselect";

   function removeByText (widget : access tguiWidget; text : tguiUtf32) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_removeByText";

   function removeByIndex (widget : access tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_removeByIndex";

   procedure removeAll (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_removeAll";

   function getSelected (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getSelected";

   function getSelectedIndex (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getSelectedIndex";

   function getTabsCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getTabsCount";

   procedure setTabVisible
     (widget : access tguiWidget;
      index : tguiSize_t;
      visible : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_setTabVisible";

   function getTabVisible (widget : access constant tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getTabVisible";

   procedure setTabEnabled
     (widget : access tguiWidget;
      index : tguiSize_t;
      enabled : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_setTabEnabled";

   function getTabEnabled (widget : access constant tguiWidget; index : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getTabEnabled";

   procedure setMaximumTabWidth (widget : access tguiWidget; maximumTabWidth : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_setMaximumTabWidth";

   function getMaximumTabWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getMaximumTabWidth";

   procedure setMinimumTabWidth (widget : access tguiWidget; minimumTabWidth : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_setMinimumTabWidth";

   function getMinimumTabWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiTabs_getMinimumTabWidth";

private



end TGUI.Widgets.Tabs;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
