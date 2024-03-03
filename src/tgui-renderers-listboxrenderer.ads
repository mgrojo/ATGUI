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

with TGUI.Color;

package TGUI.Renderers.ListBoxRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setPadding (renderer : tguiRenderer_Ptr; padding : tguiOutline_Ptr);

   function getPadding (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColor
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyle (renderer : tguiRenderer_Cons) return tguiUint32;

   procedure setSelectedTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getSelectedTextStyle (renderer : tguiRenderer_Cons) return tguiUint32;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiListBoxRenderer_create");
   pragma Import (C, copy, "tguiListBoxRenderer_copy");
   pragma Import (C, setBorders, "tguiListBoxRenderer_setBorders");
   pragma Import (C, getBorders, "tguiListBoxRenderer_getBorders");
   pragma Import (C, setPadding, "tguiListBoxRenderer_setPadding");
   pragma Import (C, getPadding, "tguiListBoxRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiListBoxRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiListBoxRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiListBoxRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiListBoxRenderer_getBackgroundColorHover");
   pragma Import (C, setSelectedBackgroundColor, "tguiListBoxRenderer_setSelectedBackgroundColor");
   pragma Import (C, getSelectedBackgroundColor, "tguiListBoxRenderer_getSelectedBackgroundColor");
   pragma Import
     (C, setSelectedBackgroundColorHover, "tguiListBoxRenderer_setSelectedBackgroundColorHover");
   pragma Import
     (C, getSelectedBackgroundColorHover, "tguiListBoxRenderer_getSelectedBackgroundColorHover");
   pragma Import (C, setTextColor, "tguiListBoxRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiListBoxRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiListBoxRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiListBoxRenderer_getTextColorHover");
   pragma Import (C, setSelectedTextColor, "tguiListBoxRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiListBoxRenderer_getSelectedTextColor");
   pragma Import (C, setSelectedTextColorHover, "tguiListBoxRenderer_setSelectedTextColorHover");
   pragma Import (C, getSelectedTextColorHover, "tguiListBoxRenderer_getSelectedTextColorHover");
   pragma Import (C, setBorderColor, "tguiListBoxRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiListBoxRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiListBoxRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiListBoxRenderer_getTextureBackground");
   pragma Import (C, setTextStyle, "tguiListBoxRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiListBoxRenderer_getTextStyle");
   pragma Import (C, setSelectedTextStyle, "tguiListBoxRenderer_setSelectedTextStyle");
   pragma Import (C, getSelectedTextStyle, "tguiListBoxRenderer_getSelectedTextStyle");
   pragma Import (C, setScrollbar, "tguiListBoxRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiListBoxRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiListBoxRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiListBoxRenderer_getScrollbarWidth");

end TGUI.Renderers.ListBoxRenderer;
