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

package TGUI.Renderers.EditBoxRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline);

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setCaretWidth (renderer : access tguiRenderer; width : tguiFloat);

   function getCaretWidth (renderer : access constant tguiRenderer) return tguiFloat;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setDefaultTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getDefaultTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setCaretColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getCaretColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setCaretColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getCaretColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setCaretColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getCaretColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorHover
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

   procedure setTextureFocused (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureFocused (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureDisabled (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureDisabled (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

   procedure setDefaultTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getDefaultTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

private

   pragma Import (C, create, "tguiEditBoxRenderer_create");
   pragma Import (C, copy, "tguiEditBoxRenderer_copy");
   pragma Import (C, setBorders, "tguiEditBoxRenderer_setBorders");
   pragma Import (C, getBorders, "tguiEditBoxRenderer_getBorders");
   pragma Import (C, setPadding, "tguiEditBoxRenderer_setPadding");
   pragma Import (C, getPadding, "tguiEditBoxRenderer_getPadding");
   pragma Import (C, setCaretWidth, "tguiEditBoxRenderer_setCaretWidth");
   pragma Import (C, getCaretWidth, "tguiEditBoxRenderer_getCaretWidth");
   pragma Import (C, setTextColor, "tguiEditBoxRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiEditBoxRenderer_getTextColor");
   pragma Import (C, setDefaultTextColor, "tguiEditBoxRenderer_setDefaultTextColor");
   pragma Import (C, getDefaultTextColor, "tguiEditBoxRenderer_getDefaultTextColor");
   pragma Import (C, setTextColorFocused, "tguiEditBoxRenderer_setTextColorFocused");
   pragma Import (C, getTextColorFocused, "tguiEditBoxRenderer_getTextColorFocused");
   pragma Import (C, setTextColorDisabled, "tguiEditBoxRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiEditBoxRenderer_getTextColorDisabled");
   pragma Import (C, setSelectedTextColor, "tguiEditBoxRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiEditBoxRenderer_getSelectedTextColor");
   pragma Import
     (C, setSelectedTextBackgroundColor, "tguiEditBoxRenderer_setSelectedTextBackgroundColor");
   pragma Import
     (C, getSelectedTextBackgroundColor, "tguiEditBoxRenderer_getSelectedTextBackgroundColor");
   pragma Import (C, setBackgroundColor, "tguiEditBoxRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiEditBoxRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiEditBoxRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiEditBoxRenderer_getBackgroundColorHover");
   pragma Import (C, setBackgroundColorFocused, "tguiEditBoxRenderer_setBackgroundColorFocused");
   pragma Import (C, getBackgroundColorFocused, "tguiEditBoxRenderer_getBackgroundColorFocused");
   pragma Import (C, setBackgroundColorDisabled, "tguiEditBoxRenderer_setBackgroundColorDisabled");
   pragma Import (C, getBackgroundColorDisabled, "tguiEditBoxRenderer_getBackgroundColorDisabled");
   pragma Import (C, setCaretColor, "tguiEditBoxRenderer_setCaretColor");
   pragma Import (C, getCaretColor, "tguiEditBoxRenderer_getCaretColor");
   pragma Import (C, setCaretColorHover, "tguiEditBoxRenderer_setCaretColorHover");
   pragma Import (C, getCaretColorHover, "tguiEditBoxRenderer_getCaretColorHover");
   pragma Import (C, setCaretColorFocused, "tguiEditBoxRenderer_setCaretColorFocused");
   pragma Import (C, getCaretColorFocused, "tguiEditBoxRenderer_getCaretColorFocused");
   pragma Import (C, setBorderColor, "tguiEditBoxRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiEditBoxRenderer_getBorderColor");
   pragma Import (C, setBorderColorHover, "tguiEditBoxRenderer_setBorderColorHover");
   pragma Import (C, getBorderColorHover, "tguiEditBoxRenderer_getBorderColorHover");
   pragma Import (C, setBorderColorFocused, "tguiEditBoxRenderer_setBorderColorFocused");
   pragma Import (C, getBorderColorFocused, "tguiEditBoxRenderer_getBorderColorFocused");
   pragma Import (C, setBorderColorDisabled, "tguiEditBoxRenderer_setBorderColorDisabled");
   pragma Import (C, getBorderColorDisabled, "tguiEditBoxRenderer_getBorderColorDisabled");
   pragma Import (C, setTexture, "tguiEditBoxRenderer_setTexture");
   pragma Import (C, getTexture, "tguiEditBoxRenderer_getTexture");
   pragma Import (C, setTextureHover, "tguiEditBoxRenderer_setTextureHover");
   pragma Import (C, getTextureHover, "tguiEditBoxRenderer_getTextureHover");
   pragma Import (C, setTextureFocused, "tguiEditBoxRenderer_setTextureFocused");
   pragma Import (C, getTextureFocused, "tguiEditBoxRenderer_getTextureFocused");
   pragma Import (C, setTextureDisabled, "tguiEditBoxRenderer_setTextureDisabled");
   pragma Import (C, getTextureDisabled, "tguiEditBoxRenderer_getTextureDisabled");
   pragma Import (C, setTextStyle, "tguiEditBoxRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiEditBoxRenderer_getTextStyle");
   pragma Import (C, setDefaultTextStyle, "tguiEditBoxRenderer_setDefaultTextStyle");
   pragma Import (C, getDefaultTextStyle, "tguiEditBoxRenderer_getDefaultTextStyle");

end TGUI.Renderers.EditBoxRenderer;
