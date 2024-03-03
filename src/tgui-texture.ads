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

with TGUI.Vector2;

with TGUI.Color;

package TGUI.Texture is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function createNull return tguiTexture_Ptr;

   function createFromFile
     (filename : tguiUtf32; partRect : TGUI.Rect.tguiUIntRect; middleRect : TGUI.Rect.tguiUIntRect)
      return tguiTexture_Ptr;

   function createFromFileEx
     (filename  : tguiUtf32; partRect : TGUI.Rect.tguiUIntRect; middleRect : TGUI.Rect.tguiUIntRect;
      smoothing : tguiBool) return tguiTexture_Ptr;

   function createFromMemory
     (data       : access tguiUint8; dataSize : tguiSize_t; partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return tguiTexture_Ptr;

   function createFromMemoryEx
     (data       : access tguiUint8; dataSize : tguiSize_t; partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect; smoothing : tguiBool) return tguiTexture_Ptr;

   function createFromPixelData
     (size : TGUI.Vector2.tguiVector2u; pixels : access tguiUint8; partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect) return tguiTexture_Ptr;

   function createFromPixelDataEx
     (size : TGUI.Vector2.tguiVector2u; pixels : access tguiUint8; partRect : TGUI.Rect.tguiUIntRect;
      middleRect : TGUI.Rect.tguiUIntRect; smoothing : tguiBool) return tguiTexture_Ptr;

   function createFromBase64
     (imageAsBase64 : String; partRect : TGUI.Rect.tguiUIntRect;
      middleRect    : TGUI.Rect.tguiUIntRect) return tguiTexture_Ptr;

   function createFromBase64Ex
     (imageAsBase64 : String; partRect : TGUI.Rect.tguiUIntRect;
      middleRect    : TGUI.Rect.tguiUIntRect; smoothing : tguiBool) return tguiTexture_Ptr;

   procedure free (texture : tguiTexture_Ptr);

   function getId (texture : tguiTexture_Cons) return tguiUtf32;

   function getImageSize (texture : tguiTexture_Cons) return TGUI.Vector2.tguiVector2u;

   function getPartRect (texture : tguiTexture_Cons) return TGUI.Rect.tguiUIntRect;

   function getMiddleRect (texture : tguiTexture_Cons) return TGUI.Rect.tguiUIntRect;

   function isSmooth (texture : tguiTexture_Cons) return tguiBool;

   procedure setColor (texture : tguiTexture_Ptr; color : access TGUI.Color.tguiColor);

   function getColor (texture : tguiTexture_Cons) return access TGUI.Color.tguiColor;

   function isTransparentPixel
     (texture : tguiTexture_Cons; pos : TGUI.Vector2.tguiVector2u) return tguiBool;

   procedure setDefaultSmooth (smooth : tguiBool);

   function getDefaultSmooth return tguiBool;

private

   pragma Import (C, createNull, "tguiTexture_createNull");
   pragma Import (C, createFromFile, "tguiTexture_createFromFile");
   pragma Import (C, createFromFileEx, "tguiTexture_createFromFileEx");
   pragma Import (C, createFromMemory, "tguiTexture_createFromMemory");
   pragma Import (C, createFromMemoryEx, "tguiTexture_createFromMemoryEx");
   pragma Import (C, createFromPixelData, "tguiTexture_createFromPixelData");
   pragma Import (C, createFromPixelDataEx, "tguiTexture_createFromPixelDataEx");
   pragma Import (C, createFromBase64, "tguiTexture_createFromBase64");
   pragma Import (C, createFromBase64Ex, "tguiTexture_createFromBase64Ex");
   pragma Import (C, free, "tguiTexture_free");
   pragma Import (C, getId, "tguiTexture_getId");
   pragma Import (C, getImageSize, "tguiTexture_getImageSize");
   pragma Import (C, getPartRect, "tguiTexture_getPartRect");
   pragma Import (C, getMiddleRect, "tguiTexture_getMiddleRect");
   pragma Import (C, isSmooth, "tguiTexture_isSmooth");
   pragma Import (C, setColor, "tguiTexture_setColor");
   pragma Import (C, getColor, "tguiTexture_getColor");
   pragma Import (C, isTransparentPixel, "tguiTexture_isTransparentPixel");
   pragma Import (C, setDefaultSmooth, "tguiTexture_setDefaultSmooth");
   pragma Import (C, getDefaultSmooth, "tguiTexture_getDefaultSmooth");

end TGUI.Texture;
