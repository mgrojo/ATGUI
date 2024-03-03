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
   function create return tguiRenderer_Ptr;

   function copy (other : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setPadding (renderer : tguiRenderer_Ptr; padding : tguiOutline_Ptr);

   function getPadding (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextOutlineColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextOutlineColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextOutlineThickness (renderer : tguiRenderer_Ptr; thickness : tguiFloat);

   function getTextOutlineThickness (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyle (renderer : tguiRenderer_Ptr) return tguiUint32;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

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
