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
with TGUI.ScrollbarPolicy;

package TGUI.Widgets.Label is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiWidget_Ptr;

   procedure setText (widget : tguiWidget_Ptr; text : tguiUtf32);

   function getText (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setHorizontalAlignment
     (widget : tguiWidget_Ptr; alignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getHorizontalAlignment
     (widget : tguiWidget_Cons) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure setVerticalAlignment
     (widget : tguiWidget_Ptr; alignment : TGUI.Alignment.tguiVerticalAlignment);

   function getVerticalAlignment
     (widget : tguiWidget_Cons) return TGUI.Alignment.tguiVerticalAlignment;

   procedure setAutoSize (widget : tguiWidget_Ptr; autoSize : tguiBool);

   function getAutoSize (widget : tguiWidget_Cons) return tguiBool;

   procedure setMaximumTextWidth (widget : tguiWidget_Ptr; maximumTextWidth : tguiFloat);

   function getMaximumTextWidth (widget : tguiWidget_Cons) return tguiFloat;

   procedure ignoreMouseEvents (widget : tguiWidget_Ptr; ignore : tguiBool);

   function isIgnoringMouseEvents (widget : tguiWidget_Cons) return tguiBool;

   procedure setScrollbarPolicy
     (widget : tguiWidget_Ptr; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getScrollbarPolicy
     (widget : tguiWidget_Cons) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

private

   pragma Import (C, create, "tguiLabel_create");
   pragma Import (C, setText, "tguiLabel_setText");
   pragma Import (C, getText, "tguiLabel_getText");
   pragma Import (C, setHorizontalAlignment, "tguiLabel_setHorizontalAlignment");
   pragma Import (C, getHorizontalAlignment, "tguiLabel_getHorizontalAlignment");
   pragma Import (C, setVerticalAlignment, "tguiLabel_setVerticalAlignment");
   pragma Import (C, getVerticalAlignment, "tguiLabel_getVerticalAlignment");
   pragma Import (C, setAutoSize, "tguiLabel_setAutoSize");
   pragma Import (C, getAutoSize, "tguiLabel_getAutoSize");
   pragma Import (C, setMaximumTextWidth, "tguiLabel_setMaximumTextWidth");
   pragma Import (C, getMaximumTextWidth, "tguiLabel_getMaximumTextWidth");
   pragma Import (C, ignoreMouseEvents, "tguiLabel_ignoreMouseEvents");
   pragma Import (C, isIgnoringMouseEvents, "tguiLabel_isIgnoringMouseEvents");
   pragma Import (C, setScrollbarPolicy, "tguiLabel_setScrollbarPolicy");
   pragma Import (C, getScrollbarPolicy, "tguiLabel_getScrollbarPolicy");

end TGUI.Widgets.Label;
