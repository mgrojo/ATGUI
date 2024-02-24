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



with TGUI.Alignment;

package TGUI.Widgets.Grid is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_create";

   procedure setAutoSize (widget : access tguiWidget; autoSize : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_setAutoSize";

   function getAutoSize (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getAutoSize";

   procedure addWidget
     (grid : access tguiWidget;
      widget : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment;
      padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_addWidget";

   function getWidget
     (grid : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t) return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getWidget";

   procedure setWidgetPadding
     (grid : access tguiWidget;
      widget : access tguiWidget;
      padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_setWidgetPadding";

   procedure setWidgetPaddingByCell
     (grid : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t;
      padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_setWidgetPaddingByCell";

   function getWidgetPadding (grid : access tguiWidget; widget : access tguiWidget) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getWidgetPadding";

   function getWidgetPaddingByCell
     (grid : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getWidgetPaddingByCell";

   procedure setWidgetAlignment
     (grid : access tguiWidget;
      widget : access tguiWidget;
      alignment : TGUI.Alignment.tguiAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_setWidgetAlignment";

   procedure setWidgetAlignmentByCell
     (grid : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t;
      alignment : TGUI.Alignment.tguiAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_setWidgetAlignmentByCell";

   function getWidgetAlignment (grid : access tguiWidget; widget : access tguiWidget) return TGUI.Alignment.tguiAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getWidgetAlignment";

   function getWidgetAlignmentByCell
     (grid : access tguiWidget;
      row : tguiSize_t;
      col : tguiSize_t) return TGUI.Alignment.tguiAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiGrid_getWidgetAlignmentByCell";

private



end TGUI.Widgets.Grid;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
