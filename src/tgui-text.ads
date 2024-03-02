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
with TGUI.Color;

package TGUI.Text is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function getStaticExtraHorizontalPadding
     (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat;

   function getStaticExtraHorizontalOffset
     (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat;

   function getStaticExtraVerticalPadding (characterSize : tguiUint32) return tguiFloat;

   function getStaticLineHeight
     (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat;

   function getStaticLineWidth
     (text      : tguiUtf32; font : access constant tguiFont; tguiCharacterSize : tguiUint32;
      textStyle : tguiUint32) return tguiFloat;

   function findBestTextSize
     (font : access constant tguiFont; height : tguiFloat; fit : tguiInt) return tguiUint32;

   function wordWrap
     (maxWidth : tguiFloat; text : tguiUtf32; font : access constant tguiFont;
      textSize : tguiUint32; bold : tguiBool) return tguiUtf32;

   function create return access tguiText;

   procedure free (text : access tguiText);

   procedure setPosition (text : access tguiText; position : TGUI.Vector2.tguiVector2f);

   function getPosition (text : access constant tguiText) return TGUI.Vector2.tguiVector2f;

   function getSize (text : access constant tguiText) return TGUI.Vector2.tguiVector2f;

   procedure setString (text : access tguiText; string : Wide_Wide_String);

   function getString (text : access constant tguiText) return Wide_Wide_String;

   procedure setCharacterSize (text : access tguiText; size : tguiUint32);

   function getCharacterSize (text : access constant tguiText) return tguiUint32;

   procedure setColor (text : access tguiText; color : access TGUI.Color.tguiColor);

   function getColor (text : access constant tguiText) return access TGUI.Color.tguiColor;

   procedure setOpacity (text : access tguiText; opacity : tguiFloat);

   function getOpacity (text : access constant tguiText) return tguiFloat;

   procedure setFont (text : access tguiText; font : access tguiFont);

   function getFont (text : access constant tguiText) return access tguiFont;

   procedure setStyle (text : access tguiText; style : tguiUint32);

   function getStyle (text : access constant tguiText) return tguiUint32;

   procedure setOutlineColor (text : access tguiText; color : access TGUI.Color.tguiColor);

   function getOutlineColor (text : access constant tguiText) return access TGUI.Color.tguiColor;

   procedure setOutlineThickness (text : access tguiText; thickness : tguiFloat);

   function getOutlineThickness (text : access constant tguiText) return tguiFloat;

   function findCharacterPos
     (text : access constant tguiText; index : tguiSize_t) return TGUI.Vector2.tguiVector2f;

   function getExtraHorizontalPadding (text : access constant tguiText) return tguiFloat;

   function getExtraHorizontalOffset (text : access constant tguiText) return tguiFloat;

   function getLineHeight (text : access constant tguiText) return tguiFloat;

   function getLineWidth (text : access constant tguiText) return tguiFloat;

private

   pragma Import (C, getStaticExtraHorizontalPadding, "tguiText_getStaticExtraHorizontalPadding");
   pragma Import (C, getStaticExtraHorizontalOffset, "tguiText_getStaticExtraHorizontalOffset");
   pragma Import (C, getStaticExtraVerticalPadding, "tguiText_getStaticExtraVerticalPadding");
   pragma Import (C, getStaticLineHeight, "tguiText_getStaticLineHeight");
   pragma Import (C, getStaticLineWidth, "tguiText_getStaticLineWidth");
   pragma Import (C, findBestTextSize, "tguiText_findBestTextSize");
   pragma Import (C, wordWrap, "tguiText_wordWrap");
   pragma Import (C, create, "tguiText_create");
   pragma Import (C, free, "tguiText_free");
   pragma Import (C, setPosition, "tguiText_setPosition");
   pragma Import (C, getPosition, "tguiText_getPosition");
   pragma Import (C, getSize, "tguiText_getSize");
   pragma Import (C, setCharacterSize, "tguiText_setCharacterSize");
   pragma Import (C, getCharacterSize, "tguiText_getCharacterSize");
   pragma Import (C, setColor, "tguiText_setColor");
   pragma Import (C, getColor, "tguiText_getColor");
   pragma Import (C, setOpacity, "tguiText_setOpacity");
   pragma Import (C, getOpacity, "tguiText_getOpacity");
   pragma Import (C, setFont, "tguiText_setFont");
   pragma Import (C, getFont, "tguiText_getFont");
   pragma Import (C, setStyle, "tguiText_setStyle");
   pragma Import (C, getStyle, "tguiText_getStyle");
   pragma Import (C, setOutlineColor, "tguiText_setOutlineColor");
   pragma Import (C, getOutlineColor, "tguiText_getOutlineColor");
   pragma Import (C, setOutlineThickness, "tguiText_setOutlineThickness");
   pragma Import (C, getOutlineThickness, "tguiText_getOutlineThickness");
   pragma Import (C, findCharacterPos, "tguiText_findCharacterPos");
   pragma Import (C, getExtraHorizontalPadding, "tguiText_getExtraHorizontalPadding");
   pragma Import (C, getExtraHorizontalOffset, "tguiText_getExtraHorizontalOffset");
   pragma Import (C, getLineHeight, "tguiText_getLineHeight");
   pragma Import (C, getLineWidth, "tguiText_getLineWidth");

end TGUI.Text;
