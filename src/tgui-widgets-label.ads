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
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.Label is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_create";

   procedure setText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setText";

   function getText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getText";

   procedure setHorizontalAlignment (widget : access tguiWidget; alignment : TGUI.Alignment.tguiHorizontalAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setHorizontalAlignment";

   function getHorizontalAlignment (widget : access constant tguiWidget) return TGUI.Alignment.tguiHorizontalAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getHorizontalAlignment";

   procedure setVerticalAlignment (widget : access tguiWidget; alignment : TGUI.Alignment.tguiVerticalAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setVerticalAlignment";

   function getVerticalAlignment (widget : access constant tguiWidget) return TGUI.Alignment.tguiVerticalAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getVerticalAlignment";

   procedure setAutoSize (widget : access tguiWidget; autoSize : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setAutoSize";

   function getAutoSize (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getAutoSize";

   procedure setMaximumTextWidth (widget : access tguiWidget; maximumTextWidth : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setMaximumTextWidth";

   function getMaximumTextWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getMaximumTextWidth";

   procedure ignoreMouseEvents (widget : access tguiWidget; ignore : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_ignoreMouseEvents";

   function isIgnoringMouseEvents (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_isIgnoringMouseEvents";

   procedure setScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_setScrollbarPolicy";

   function getScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiLabel_getScrollbarPolicy";

private



end TGUI.Widgets.Label;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
