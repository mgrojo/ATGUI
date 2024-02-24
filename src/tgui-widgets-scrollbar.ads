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



package TGUI.Widgets.Scrollbar is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_create";

   procedure setViewportSize (widget : access tguiWidget; viewport : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setViewportSize";

   function getViewportSize (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getViewportSize";

   procedure setMaximum (widget : access tguiWidget; maximum : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setMaximum";

   function getMaximum (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getMaximum";

   procedure setValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setValue";

   function getValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getValue";

   procedure setScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setScrollAmount";

   function getScrollAmount (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getScrollAmount";

   procedure setAutoHide (widget : access tguiWidget; autoHide : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setAutoHide";

   function getAutoHide (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getAutoHide";

   procedure setVerticalScroll (widget : access tguiWidget; vertical : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_setVerticalScroll";

   function getVerticalScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getVerticalScroll";

   function getDefaultWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbar_getDefaultWidth";

private



end TGUI.Widgets.Scrollbar;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
