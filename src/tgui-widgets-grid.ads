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

package TGUI.Widgets.Grid is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setAutoSize (widget : access tguiWidget; autoSize : tguiBool);

   function getAutoSize (widget : access constant tguiWidget) return tguiBool;

   procedure addWidget
     (grid      : access tguiWidget; widget : access tguiWidget; row : tguiSize_t; col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment; padding : access tguiOutline);

   function getWidget
     (grid : access tguiWidget; row : tguiSize_t; col : tguiSize_t) return access tguiWidget;

   procedure setWidgetPadding
     (grid : access tguiWidget; widget : access tguiWidget; padding : access tguiOutline);

   procedure setWidgetPaddingByCell
     (grid : access tguiWidget; row : tguiSize_t; col : tguiSize_t; padding : access tguiOutline);

   function getWidgetPadding
     (grid : access tguiWidget; widget : access tguiWidget) return access tguiOutline;

   function getWidgetPaddingByCell
     (grid : access tguiWidget; row : tguiSize_t; col : tguiSize_t) return access tguiOutline;

   procedure setWidgetAlignment
     (grid      : access tguiWidget; widget : access tguiWidget;
      alignment : TGUI.Alignment.tguiAlignment);

   procedure setWidgetAlignmentByCell
     (grid      : access tguiWidget; row : tguiSize_t; col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment);

   function getWidgetAlignment
     (grid : access tguiWidget; widget : access tguiWidget) return TGUI.Alignment.tguiAlignment;

   function getWidgetAlignmentByCell
     (grid : access tguiWidget; row : tguiSize_t; col : tguiSize_t)
      return TGUI.Alignment.tguiAlignment;

private

   pragma Import (C, create, "tguiGrid_create");
   pragma Import (C, setAutoSize, "tguiGrid_setAutoSize");
   pragma Import (C, getAutoSize, "tguiGrid_getAutoSize");
   pragma Import (C, addWidget, "tguiGrid_addWidget");
   pragma Import (C, getWidget, "tguiGrid_getWidget");
   pragma Import (C, setWidgetPadding, "tguiGrid_setWidgetPadding");
   pragma Import (C, setWidgetPaddingByCell, "tguiGrid_setWidgetPaddingByCell");
   pragma Import (C, getWidgetPadding, "tguiGrid_getWidgetPadding");
   pragma Import (C, getWidgetPaddingByCell, "tguiGrid_getWidgetPaddingByCell");
   pragma Import (C, setWidgetAlignment, "tguiGrid_setWidgetAlignment");
   pragma Import (C, setWidgetAlignmentByCell, "tguiGrid_setWidgetAlignmentByCell");
   pragma Import (C, getWidgetAlignment, "tguiGrid_getWidgetAlignment");
   pragma Import (C, getWidgetAlignmentByCell, "tguiGrid_getWidgetAlignmentByCell");

end TGUI.Widgets.Grid;
