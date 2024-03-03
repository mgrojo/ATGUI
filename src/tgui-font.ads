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

with TGUI.Rect;

package TGUI.Font is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   --!< Offset to move horizontally to the next tguiCharacter
   --!< Bounding rectangle of the glyph, in coordinates relative to the baseline
   --!< Texture coordinates of the glyph inside the font's texture
   type tguiFontGlyph is record
      advance     : aliased tguiFloat;
      bounds      : aliased TGUI.Rect.tguiFloatRect;
      textureRect : aliased TGUI.Rect.tguiUIntRect;
   end record with
     Convention => C_Pass_By_Copy;

   procedure setGlobalFont (font : tguiFont_Ptr);

   function getGlobalFont return tguiFont_Ptr;

   function createNull return tguiFont_Ptr;

   function createFromFile (filename : tguiUtf32) return tguiFont_Ptr;

   function createFromMemory (data : access tguiUint8; dataSize : tguiSize_t) return tguiFont_Ptr;

   procedure free (font : tguiFont_Ptr);

   function getId (font : tguiFont_Cons) return tguiUtf32;

   function getGlyph
     (font             : tguiFont_Cons; tguiCharacterSize : tguiUint32; bold : tguiBool;
      outlineThickness : tguiFloat) return tguiFontGlyph;

   function getKerning
     (font : tguiFont_Cons; first : tguiUint32; second : tguiUint32; tguiCharacterSize : tguiUint32;
      bold : tguiBool) return tguiFloat;

   function getLineSpacing (font : tguiFont_Cons; tguiCharacterSize : tguiUint32) return tguiFloat;

   function getFontHeight (font : tguiFont_Cons; tguiCharacterSize : tguiUint32) return tguiFloat;

   procedure setSmooth (font : tguiFont_Ptr; smooth : tguiBool);

   function isSmooth (font : tguiFont_Cons) return tguiBool;

private

   pragma Import (C, setGlobalFont, "tguiFont_setGlobalFont");
   pragma Import (C, getGlobalFont, "tguiFont_getGlobalFont");
   pragma Import (C, createNull, "tguiFont_createNull");
   pragma Import (C, createFromFile, "tguiFont_createFromFile");
   pragma Import (C, createFromMemory, "tguiFont_createFromMemory");
   pragma Import (C, free, "tguiFont_free");
   pragma Import (C, getId, "tguiFont_getId");
   pragma Import (C, getGlyph, "tguiFont_getGlyph");
   pragma Import (C, getKerning, "tguiFont_getKerning");
   pragma Import (C, getLineSpacing, "tguiFont_getLineSpacing");
   pragma Import (C, getFontHeight, "tguiFont_getFontHeight");
   pragma Import (C, setSmooth, "tguiFont_setSmooth");
   pragma Import (C, isSmooth, "tguiFont_isSmooth");

end TGUI.Font;
