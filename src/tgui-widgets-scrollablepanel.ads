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

with TGUI.Vector2;
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.ScrollablePanel is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setContentSize (widget : access tguiWidget; contentSize : TGUI.Vector2.tguiVector2f);

   function getContentSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   function getScrollbarWidth (widget : access constant tguiWidget) return tguiFloat;

   procedure setVerticalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getVerticalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setHorizontalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getHorizontalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setVerticalScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32);

   function getVerticalScrollAmount (widget : access constant tguiWidget) return tguiUint32;

   procedure setHorizontalScrollAmount (widget : access tguiWidget; scrollAmount : tguiUint32);

   function getHorizontalScrollAmount (widget : access constant tguiWidget) return tguiUint32;

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   function getContentOffset (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

private

   pragma Import (C, create, "tguiScrollablePanel_create");
   pragma Import (C, setContentSize, "tguiScrollablePanel_setContentSize");
   pragma Import (C, getContentSize, "tguiScrollablePanel_getContentSize");
   pragma Import (C, getScrollbarWidth, "tguiScrollablePanel_getScrollbarWidth");
   pragma Import (C, setVerticalScrollbarPolicy, "tguiScrollablePanel_setVerticalScrollbarPolicy");
   pragma Import (C, getVerticalScrollbarPolicy, "tguiScrollablePanel_getVerticalScrollbarPolicy");
   pragma Import
     (C, setHorizontalScrollbarPolicy, "tguiScrollablePanel_setHorizontalScrollbarPolicy");
   pragma Import
     (C, getHorizontalScrollbarPolicy, "tguiScrollablePanel_getHorizontalScrollbarPolicy");
   pragma Import (C, setVerticalScrollAmount, "tguiScrollablePanel_setVerticalScrollAmount");
   pragma Import (C, getVerticalScrollAmount, "tguiScrollablePanel_getVerticalScrollAmount");
   pragma Import (C, setHorizontalScrollAmount, "tguiScrollablePanel_setHorizontalScrollAmount");
   pragma Import (C, getHorizontalScrollAmount, "tguiScrollablePanel_getHorizontalScrollAmount");
   pragma Import (C, setVerticalScrollbarValue, "tguiScrollablePanel_setVerticalScrollbarValue");
   pragma Import (C, getVerticalScrollbarValue, "tguiScrollablePanel_getVerticalScrollbarValue");
   pragma Import
     (C, setHorizontalScrollbarValue, "tguiScrollablePanel_setHorizontalScrollbarValue");
   pragma Import
     (C, getHorizontalScrollbarValue, "tguiScrollablePanel_getHorizontalScrollbarValue");
   pragma Import (C, getContentOffset, "tguiScrollablePanel_getContentOffset");

end TGUI.Widgets.ScrollablePanel;
