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
   function create return access tguiWidget;

   procedure setViewportSize (widget : access tguiWidget; viewport : tguiUint32);

   function getViewportSize (widget : access constant tguiWidget) return tguiUint32;

   procedure setMaximum (widget : access tguiWidget; maximum : tguiUint32);

   function getMaximum (widget : access constant tguiWidget) return tguiUint32;

   procedure setValue (widget : access tguiWidget; value : tguiUint32);

   function getValue (widget : access constant tguiWidget) return tguiUint32;

   procedure setScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32);

   function getScrollAmount (widget : access constant tguiWidget) return tguiUint32;

   procedure setAutoHide (widget : access tguiWidget; autoHide : tguiBool);

   function getAutoHide (widget : access constant tguiWidget) return tguiBool;

   procedure setVerticalScroll (widget : access tguiWidget; vertical : tguiBool);

   function getVerticalScroll (widget : access constant tguiWidget) return tguiBool;

   function getDefaultWidth (widget : access constant tguiWidget) return tguiFloat;

private

   pragma Import (C, create, "tguiScrollbar_create");
   pragma Import (C, setViewportSize, "tguiScrollbar_setViewportSize");
   pragma Import (C, getViewportSize, "tguiScrollbar_getViewportSize");
   pragma Import (C, setMaximum, "tguiScrollbar_setMaximum");
   pragma Import (C, getMaximum, "tguiScrollbar_getMaximum");
   pragma Import (C, setValue, "tguiScrollbar_setValue");
   pragma Import (C, getValue, "tguiScrollbar_getValue");
   pragma Import (C, setScrollAmount, "tguiScrollbar_setScrollAmount");
   pragma Import (C, getScrollAmount, "tguiScrollbar_getScrollAmount");
   pragma Import (C, setAutoHide, "tguiScrollbar_setAutoHide");
   pragma Import (C, getAutoHide, "tguiScrollbar_getAutoHide");
   pragma Import (C, setVerticalScroll, "tguiScrollbar_setVerticalScroll");
   pragma Import (C, getVerticalScroll, "tguiScrollbar_getVerticalScroll");
   pragma Import (C, getDefaultWidth, "tguiScrollbar_getDefaultWidth");

end TGUI.Widgets.Scrollbar;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
