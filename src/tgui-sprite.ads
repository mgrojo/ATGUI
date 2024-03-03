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
with TGUI.Rect;

package TGUI.Sprite is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   --!< The image is not split and scaled normally
   --!< Image is split in Left, Middle and Right parts. Left and Right keep ratio, Middle gets stretched
   --!< Image is split in Top, Middle and Bottom parts. Top and Bottom keep ratio, Middle gets stretched
   --!< Image is split in 9 parts. Corners keep size, sides are stretched in one direction, middle is stretched in both directions
   type tguiSpriteScalingType is
     (tguiSpriteScalingTypeNormal,
      tguiSpriteScalingTypeHorizontal,
      tguiSpriteScalingTypeVertical,
      tguiSpriteScalingTypeNineSlice) with
     Convention => C;

   ----------------------------------------------------------------------------
   function createNull return tguiSprite_Ptr;

   -- The texture is copied by this function, the caller still keeps ownership of the passed value and thus the caller is still responsible for freeing it.
   function createFromTexture (texture : tguiTexture_Ptr) return tguiSprite_Ptr;

   procedure free (sprite : tguiSprite_Ptr);

   -- The texture is copied by this function, the caller still keeps ownership of the passed value and thus the caller is still responsible for freeing it.
   procedure setTexture (sprite : tguiSprite_Ptr; texture : tguiTexture_Ptr);

   function isSet (sprite : tguiSprite_Cons) return tguiBool;

   procedure setSize (sprite : tguiSprite_Ptr; size : TGUI.Vector2.tguiVector2f);

   function getSize (sprite : tguiSprite_Cons) return TGUI.Vector2.tguiVector2f;

   procedure setOpacity (sprite : tguiSprite_Ptr; opacity : tguiFloat);

   function getOpacity (sprite : tguiSprite_Cons) return tguiFloat;

   procedure setVisibleRect (sprite : tguiSprite_Ptr; visibleRect : TGUI.Rect.tguiFloatRect);

   function getVisibleRect (sprite : tguiSprite_Cons) return TGUI.Rect.tguiFloatRect;

   procedure setPosition (sprite : tguiSprite_Ptr; position : TGUI.Vector2.tguiVector2f);

   function getPosition (sprite : tguiSprite_Cons) return TGUI.Vector2.tguiVector2f;

   procedure setRotation (sprite : tguiSprite_Ptr; angle : tguiFloat);

   function getRotation (sprite : tguiSprite_Cons) return tguiFloat;

   function isTransparentPixel
     (sprite : tguiSprite_Cons; pos : TGUI.Vector2.tguiVector2f) return tguiBool;

   function getScalingType (sprite : tguiSprite_Cons) return tguiSpriteScalingType;

private

   pragma Import (C, createNull, "tguiSprite_createNull");
   pragma Import (C, createFromTexture, "tguiSprite_createFromTexture");
   pragma Import (C, free, "tguiSprite_free");
   pragma Import (C, setTexture, "tguiSprite_setTexture");
   pragma Import (C, isSet, "tguiSprite_isSet");
   pragma Import (C, setSize, "tguiSprite_setSize");
   pragma Import (C, getSize, "tguiSprite_getSize");
   pragma Import (C, setOpacity, "tguiSprite_setOpacity");
   pragma Import (C, getOpacity, "tguiSprite_getOpacity");
   pragma Import (C, setVisibleRect, "tguiSprite_setVisibleRect");
   pragma Import (C, getVisibleRect, "tguiSprite_getVisibleRect");
   pragma Import (C, setPosition, "tguiSprite_setPosition");
   pragma Import (C, getPosition, "tguiSprite_getPosition");
   pragma Import (C, setRotation, "tguiSprite_setRotation");
   pragma Import (C, getRotation, "tguiSprite_getRotation");
   pragma Import (C, isTransparentPixel, "tguiSprite_isTransparentPixel");
   pragma Import (C, getScalingType, "tguiSprite_getScalingType");

end TGUI.Sprite;
