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

package TGUI.Widgets.Scrollbar is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiWidget_Ptr;

   procedure setViewportSize (widget : tguiWidget_Ptr; viewport : tguiUint32);

   function getViewportSize (widget : tguiWidget_Cons) return tguiUint32;

   procedure setMaximum (widget : tguiWidget_Ptr; maximum : tguiUint32);

   function getMaximum (widget : tguiWidget_Cons) return tguiUint32;

   procedure setValue (widget : tguiWidget_Ptr; value : tguiUint32);

   function getValue (widget : tguiWidget_Cons) return tguiUint32;

   procedure setScrollAmount (widget : tguiWidget_Ptr; scrollAmount : tguiUint32);

   function getScrollAmount (widget : tguiWidget_Cons) return tguiUint32;

   procedure setAutoHide (widget : tguiWidget_Ptr; autoHide : tguiBool);

   function getAutoHide (widget : tguiWidget_Cons) return tguiBool;

   procedure setVerticalScroll (widget : tguiWidget_Ptr; vertical : tguiBool);

   function getVerticalScroll (widget : tguiWidget_Cons) return tguiBool;

   function getDefaultWidth (widget : tguiWidget_Cons) return tguiFloat;

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
