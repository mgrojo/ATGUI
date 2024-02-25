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

package TGUI.Renderers.LabelRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline);

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextOutlineColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextOutlineColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextOutlineThickness (renderer : access tguiRenderer; thickness : tguiFloat);

   function getTextOutlineThickness (renderer : access constant tguiRenderer) return tguiFloat;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access tguiRenderer) return tguiUint32;

   procedure setScrollbar (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getScrollbar (renderer : access constant tguiRenderer) return access tguiRendererData;

   procedure setScrollbarWidth (renderer : access tguiRenderer; width : tguiFloat);

   function getScrollbarWidth (renderer : access constant tguiRenderer) return tguiFloat;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

private

   pragma Import (C, create, "tguiLabelRenderer_create");
   pragma Import (C, copy, "tguiLabelRenderer_copy");
   pragma Import (C, setBorders, "tguiLabelRenderer_setBorders");
   pragma Import (C, getBorders, "tguiLabelRenderer_getBorders");
   pragma Import (C, setPadding, "tguiLabelRenderer_setPadding");
   pragma Import (C, getPadding, "tguiLabelRenderer_getPadding");
   pragma Import (C, setTextColor, "tguiLabelRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiLabelRenderer_getTextColor");
   pragma Import (C, setTextOutlineColor, "tguiLabelRenderer_setTextOutlineColor");
   pragma Import (C, getTextOutlineColor, "tguiLabelRenderer_getTextOutlineColor");
   pragma Import (C, setTextOutlineThickness, "tguiLabelRenderer_setTextOutlineThickness");
   pragma Import (C, getTextOutlineThickness, "tguiLabelRenderer_getTextOutlineThickness");
   pragma Import (C, setBackgroundColor, "tguiLabelRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiLabelRenderer_getBackgroundColor");
   pragma Import (C, setBorderColor, "tguiLabelRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiLabelRenderer_getBorderColor");
   pragma Import (C, setTextStyle, "tguiLabelRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiLabelRenderer_getTextStyle");
   pragma Import (C, setScrollbar, "tguiLabelRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiLabelRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiLabelRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiLabelRenderer_getScrollbarWidth");
   pragma Import (C, setTextureBackground, "tguiLabelRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiLabelRenderer_getTextureBackground");

end TGUI.Renderers.LabelRenderer;
