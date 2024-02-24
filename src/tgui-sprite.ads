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
      tguiSpriteScalingTypeNineSlice)
   with Convention => C;

   ----------------------------------------------------------------------------
   function createNull return access tguiSprite
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_createNull";

   -- The texture is copied by this function, the caller still keeps ownership of the passed value and thus the caller is still responsible for freeing it.
   function createFromTexture (texture : access tguiTexture) return access tguiSprite
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_createFromTexture";

   procedure free (sprite : access tguiSprite)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_free";

   -- The texture is copied by this function, the caller still keeps ownership of the passed value and thus the caller is still responsible for freeing it.
   procedure setTexture (sprite : access tguiSprite; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setTexture";

   function isSet (sprite : access constant tguiSprite) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_isSet";

   procedure setSize (sprite : access tguiSprite; size : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setSize";

   function getSize (sprite : access constant tguiSprite) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getSize";

   procedure setOpacity (sprite : access tguiSprite; opacity : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setOpacity";

   function getOpacity (sprite : access constant tguiSprite) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getOpacity";

   procedure setVisibleRect (sprite : access tguiSprite; visibleRect : TGUI.Rect.tguiFloatRect)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setVisibleRect";

   function getVisibleRect (sprite : access constant tguiSprite) return TGUI.Rect.tguiFloatRect
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getVisibleRect";

   procedure setPosition (sprite : access tguiSprite; position : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setPosition";

   function getPosition (sprite : access constant tguiSprite) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getPosition";

   procedure setRotation (sprite : access tguiSprite; angle : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_setRotation";

   function getRotation (sprite : access constant tguiSprite) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getRotation";

   function isTransparentPixel (sprite : access constant tguiSprite; pos : TGUI.Vector2.tguiVector2f) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_isTransparentPixel";

   function getScalingType (sprite : access constant tguiSprite) return tguiSpriteScalingType
   with Import => True,
        Convention => C,
        External_Name => "tguiSprite_getScalingType";

private



end TGUI.Sprite;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
