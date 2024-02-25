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

with TGUI.Color;

package TGUI.Renderers.ListBoxRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline);

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

   procedure setSelectedTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getSelectedTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

   procedure setScrollbar (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getScrollbar (renderer : access constant tguiRenderer) return access tguiRendererData;

   procedure setScrollbarWidth (renderer : access tguiRenderer; width : tguiFloat);

   function getScrollbarWidth (renderer : access constant tguiRenderer) return tguiFloat;

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

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
