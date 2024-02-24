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

with TGUI.Vector2;

with TGUI.Color;

package TGUI.Texture is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function createNull return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createNull";

   function createFromFile
     (filename : tguiUtf32;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromFile";

   function createFromFileEx
     (filename : tguiUtf32;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect;
      smoothing : tguiBool) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromFileEx";

   function createFromMemory
     (data : access tguiUint8;
      dataSize : tguiSize_t;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromMemory";

   function createFromMemoryEx
     (data : access tguiUint8;
      dataSize : tguiSize_t;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect;
      smoothing : tguiBool) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromMemoryEx";

   function createFromPixelData
     (size : TGUI.Vector2.tguiVector2u;
      pixels : access tguiUint8;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromPixelData";

   function createFromPixelDataEx
     (size : TGUI.Vector2.tguiVector2u;
      pixels : access tguiUint8;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect;
      smoothing : tguiBool) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromPixelDataEx";

   function createFromBase64
     (imageAsBase64 : String;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromBase64";

   function createFromBase64Ex
     (imageAsBase64 : String;
      partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect;
      smoothing : tguiBool) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_createFromBase64Ex";

   procedure free (texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_free";

   function getId (texture : access constant tguiTexture) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getId";

   function getImageSize (texture : access constant tguiTexture) return TGUI.Vector2.tguiVector2u
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getImageSize";

   function getPartRect (texture : access constant tguiTexture) return TGUI.Rect.tguiUIntRect
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getPartRect";

   function getMiddleRect (texture : access constant tguiTexture) return TGUI.Rect.tguiUIntRect
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getMiddleRect";

   function isSmooth (texture : access constant tguiTexture) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_isSmooth";

   procedure setColor (texture : access tguiTexture; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_setColor";

   function getColor (texture : access constant tguiTexture) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getColor";

   function isTransparentPixel (texture : access constant tguiTexture; pos : TGUI.Vector2.tguiVector2u) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_isTransparentPixel";

   procedure setDefaultSmooth (smooth : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_setDefaultSmooth";

   function getDefaultSmooth return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTexture_getDefaultSmooth";

private



end TGUI.Texture;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
