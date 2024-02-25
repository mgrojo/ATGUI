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

package TGUI.Renderers.ButtonRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDown (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDown
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDown
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDown
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorDown
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorDown
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTexture (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTexture (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureHover (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureDown (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureDown (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureFocused (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureFocused (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureDisabled (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureDisabled (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access tguiRenderer) return tguiUint32;

   procedure setTextStyleHover (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyleHover (renderer : access tguiRenderer) return tguiUint32;

   procedure setTextStyleDown (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyleDown (renderer : access tguiRenderer) return tguiUint32;

   procedure setTextStyleFocused (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyleFocused (renderer : access tguiRenderer) return tguiUint32;

   procedure setTextStyleDisabled (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyleDisabled (renderer : access tguiRenderer) return tguiUint32;

   procedure setTextOutlineColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextOutlineColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextOutlineThickness (renderer : access tguiRenderer; thickness : tguiFloat);

   function getTextOutlineThickness (renderer : access constant tguiRenderer) return tguiFloat;

private

   pragma Import (C, create, "tguiButtonRenderer_create");
   pragma Import (C, copy, "tguiButtonRenderer_copy");
   pragma Import (C, setBorders, "tguiButtonRenderer_setBorders");
   pragma Import (C, getBorders, "tguiButtonRenderer_getBorders");
   pragma Import (C, setTextColor, "tguiButtonRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiButtonRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiButtonRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiButtonRenderer_getTextColorHover");
   pragma Import (C, setTextColorDown, "tguiButtonRenderer_setTextColorDown");
   pragma Import (C, getTextColorDown, "tguiButtonRenderer_getTextColorDown");
   pragma Import (C, setTextColorFocused, "tguiButtonRenderer_setTextColorFocused");
   pragma Import (C, getTextColorFocused, "tguiButtonRenderer_getTextColorFocused");
   pragma Import (C, setTextColorDisabled, "tguiButtonRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiButtonRenderer_getTextColorDisabled");
   pragma Import (C, setBackgroundColor, "tguiButtonRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiButtonRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiButtonRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiButtonRenderer_getBackgroundColorHover");
   pragma Import (C, setBackgroundColorDown, "tguiButtonRenderer_setBackgroundColorDown");
   pragma Import (C, getBackgroundColorDown, "tguiButtonRenderer_getBackgroundColorDown");
   pragma Import (C, setBackgroundColorFocused, "tguiButtonRenderer_setBackgroundColorFocused");
   pragma Import (C, getBackgroundColorFocused, "tguiButtonRenderer_getBackgroundColorFocused");
   pragma Import (C, setBackgroundColorDisabled, "tguiButtonRenderer_setBackgroundColorDisabled");
   pragma Import (C, getBackgroundColorDisabled, "tguiButtonRenderer_getBackgroundColorDisabled");
   pragma Import (C, setBorderColor, "tguiButtonRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiButtonRenderer_getBorderColor");
   pragma Import (C, setBorderColorHover, "tguiButtonRenderer_setBorderColorHover");
   pragma Import (C, getBorderColorHover, "tguiButtonRenderer_getBorderColorHover");
   pragma Import (C, setBorderColorDown, "tguiButtonRenderer_setBorderColorDown");
   pragma Import (C, getBorderColorDown, "tguiButtonRenderer_getBorderColorDown");
   pragma Import (C, setBorderColorFocused, "tguiButtonRenderer_setBorderColorFocused");
   pragma Import (C, getBorderColorFocused, "tguiButtonRenderer_getBorderColorFocused");
   pragma Import (C, setBorderColorDisabled, "tguiButtonRenderer_setBorderColorDisabled");
   pragma Import (C, getBorderColorDisabled, "tguiButtonRenderer_getBorderColorDisabled");
   pragma Import (C, setTexture, "tguiButtonRenderer_setTexture");
   pragma Import (C, getTexture, "tguiButtonRenderer_getTexture");
   pragma Import (C, setTextureHover, "tguiButtonRenderer_setTextureHover");
   pragma Import (C, getTextureHover, "tguiButtonRenderer_getTextureHover");
   pragma Import (C, setTextureDown, "tguiButtonRenderer_setTextureDown");
   pragma Import (C, getTextureDown, "tguiButtonRenderer_getTextureDown");
   pragma Import (C, setTextureFocused, "tguiButtonRenderer_setTextureFocused");
   pragma Import (C, getTextureFocused, "tguiButtonRenderer_getTextureFocused");
   pragma Import (C, setTextureDisabled, "tguiButtonRenderer_setTextureDisabled");
   pragma Import (C, getTextureDisabled, "tguiButtonRenderer_getTextureDisabled");
   pragma Import (C, setTextStyle, "tguiButtonRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiButtonRenderer_getTextStyle");
   pragma Import (C, setTextStyleHover, "tguiButtonRenderer_setTextStyleHover");
   pragma Import (C, getTextStyleHover, "tguiButtonRenderer_getTextStyleHover");
   pragma Import (C, setTextStyleDown, "tguiButtonRenderer_setTextStyleDown");
   pragma Import (C, getTextStyleDown, "tguiButtonRenderer_getTextStyleDown");
   pragma Import (C, setTextStyleFocused, "tguiButtonRenderer_setTextStyleFocused");
   pragma Import (C, getTextStyleFocused, "tguiButtonRenderer_getTextStyleFocused");
   pragma Import (C, setTextStyleDisabled, "tguiButtonRenderer_setTextStyleDisabled");
   pragma Import (C, getTextStyleDisabled, "tguiButtonRenderer_getTextStyleDisabled");
   pragma Import (C, setTextOutlineColor, "tguiButtonRenderer_setTextOutlineColor");
   pragma Import (C, getTextOutlineColor, "tguiButtonRenderer_getTextOutlineColor");
   pragma Import (C, setTextOutlineThickness, "tguiButtonRenderer_setTextOutlineThickness");
   pragma Import (C, getTextOutlineThickness, "tguiButtonRenderer_getTextOutlineThickness");

end TGUI.Renderers.ButtonRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
