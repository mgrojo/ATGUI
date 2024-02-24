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
with TGUI.Color;


package TGUI.Text is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function getStaticExtraHorizontalPadding (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStaticExtraHorizontalPadding";

   function getStaticExtraHorizontalOffset (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStaticExtraHorizontalOffset";

   function getStaticExtraVerticalPadding (characterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStaticExtraVerticalPadding";

   function getStaticLineHeight (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStaticLineHeight";

   function getStaticLineWidth
     (text : tguiUtf32;
      font : access constant tguiFont;
      tguiCharacterSize : tguiUint32;
      textStyle : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStaticLineWidth";

   function findBestTextSize
     (font : access constant tguiFont;
      height : tguiFloat;
      fit : tguiInt) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiText_findBestTextSize";

   function wordWrap
     (maxWidth : tguiFloat;
      text : tguiUtf32;
      font : access constant tguiFont;
      textSize : tguiUint32;
      bold : tguiBool) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiText_wordWrap";

   function create return access tguiText
   with Import => True,
        Convention => C,
        External_Name => "tguiText_create";

   procedure free (text : access tguiText)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_free";

   procedure setPosition (text : access tguiText; position : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setPosition";

   function getPosition (text : access constant tguiText) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getPosition";

   function getSize (text : access constant tguiText) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getSize";

   procedure setString (text : access tguiText; string : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setString";

   function getString (text : access constant tguiText) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getString";

   procedure setCharacterSize (text : access tguiText; size : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setCharacterSize";

   function getCharacterSize (text : access constant tguiText) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getCharacterSize";

   procedure setColor (text : access tguiText; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setColor";

   function getColor (text : access constant tguiText) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getColor";

   procedure setOpacity (text : access tguiText; opacity : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setOpacity";

   function getOpacity (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getOpacity";

   procedure setFont (text : access tguiText; font : access tguiFont)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setFont";

   function getFont (text : access constant tguiText) return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getFont";

   procedure setStyle (text : access tguiText; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setStyle";

   function getStyle (text : access constant tguiText) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getStyle";

   procedure setOutlineColor (text : access tguiText; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setOutlineColor";

   function getOutlineColor (text : access constant tguiText) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getOutlineColor";

   procedure setOutlineThickness (text : access tguiText; thickness : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiText_setOutlineThickness";

   function getOutlineThickness (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getOutlineThickness";

   function findCharacterPos (text : access constant tguiText; index : tguiSize_t) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiText_findCharacterPos";

   function getExtraHorizontalPadding (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getExtraHorizontalPadding";

   function getExtraHorizontalOffset (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getExtraHorizontalOffset";

   function getLineHeight (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getLineHeight";

   function getLineWidth (text : access constant tguiText) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiText_getLineWidth";

private



end TGUI.Text;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
