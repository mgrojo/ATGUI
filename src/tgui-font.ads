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

with TGUI.Rect;



package TGUI.Font is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  --!< Offset to move horizontally to the next tguiCharacter
  --!< Bounding rectangle of the glyph, in coordinates relative to the baseline
  --!< Texture coordinates of the glyph inside the font's texture
   type tguiFontGlyph is record
      advance : aliased tguiFloat;
      bounds : aliased TGUI.Rect.tguiFloatRect;
      textureRect : aliased TGUI.Rect.tguiUIntRect;
   end record
   with Convention => C_Pass_By_Copy;

   procedure setGlobalFont (font : access tguiFont)
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_setGlobalFont";

   function getGlobalFont return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getGlobalFont";

   function createNull return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_createNull";

   function createFromFile (filename : tguiUtf32) return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_createFromFile";

   function createFromMemory (data : access tguiUint8; dataSize : tguiSize_t) return access tguiFont
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_createFromMemory";

   procedure free (font : access tguiFont)
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_free";

   function getId (font : access constant tguiFont) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getId";

   function getGlyph
     (font : access constant tguiFont;
      tguiCharacterSize : tguiUint32;
      bold : tguiBool;
      outlineThickness : tguiFloat) return tguiFontGlyph
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getGlyph";

   function getKerning
     (font : access constant tguiFont;
      first : tguiUint32;
      second : tguiUint32;
      tguiCharacterSize : tguiUint32;
      bold : tguiBool) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getKerning";

   function getLineSpacing (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getLineSpacing";

   function getFontHeight (font : access constant tguiFont; tguiCharacterSize : tguiUint32) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_getFontHeight";

   procedure setSmooth (font : access tguiFont; smooth : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_setSmooth";

   function isSmooth (font : access constant tguiFont) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiFont_isSmooth";

private



end TGUI.Font;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
