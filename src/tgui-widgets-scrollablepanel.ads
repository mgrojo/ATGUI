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


with TGUI.Vector2;
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.ScrollablePanel is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_create";

   procedure setContentSize (widget : access tguiWidget; contentSize : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setContentSize";

   function getContentSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getContentSize";

   function getScrollbarWidth (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getScrollbarWidth";

   procedure setVerticalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setVerticalScrollbarPolicy";

   function getVerticalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getVerticalScrollbarPolicy";

   procedure setHorizontalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setHorizontalScrollbarPolicy";

   function getHorizontalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getHorizontalScrollbarPolicy";

   procedure setVerticalScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setVerticalScrollAmount";

   function getVerticalScrollAmount (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getVerticalScrollAmount";

   procedure setHorizontalScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setHorizontalScrollAmount";

   function getHorizontalScrollAmount (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getHorizontalScrollAmount";

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setVerticalScrollbarValue";

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getVerticalScrollbarValue";

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_setHorizontalScrollbarValue";

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getHorizontalScrollbarValue";

   function getContentOffset (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollablePanel_getContentOffset";

private



end TGUI.Widgets.ScrollablePanel;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
