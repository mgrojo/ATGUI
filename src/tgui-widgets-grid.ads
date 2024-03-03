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
   function create return tguiWidget_Ptr;

   procedure setAutoSize (widget : tguiWidget_Ptr; autoSize : tguiBool);

   function getAutoSize (widget : tguiWidget_Cons) return tguiBool;

   procedure addWidget
     (grid      : tguiWidget_Ptr; widget : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment; padding : tguiOutline_Ptr);

   function getWidget
     (grid : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t) return tguiWidget_Ptr;

   procedure setWidgetPadding
     (grid : tguiWidget_Ptr; widget : tguiWidget_Ptr; padding : tguiOutline_Ptr);

   procedure setWidgetPaddingByCell
     (grid : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t; padding : tguiOutline_Ptr);

   function getWidgetPadding
     (grid : tguiWidget_Ptr; widget : tguiWidget_Ptr) return tguiOutline_Ptr;

   function getWidgetPaddingByCell
     (grid : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t) return tguiOutline_Ptr;

   procedure setWidgetAlignment
     (grid : tguiWidget_Ptr; widget : tguiWidget_Ptr; alignment : TGUI.Alignment.tguiAlignment);

   procedure setWidgetAlignmentByCell
     (grid      : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment);

   function getWidgetAlignment
     (grid : tguiWidget_Ptr; widget : tguiWidget_Ptr) return TGUI.Alignment.tguiAlignment;

   function getWidgetAlignmentByCell
     (grid : tguiWidget_Ptr; row : tguiSize_t; col : tguiSize_t)
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
