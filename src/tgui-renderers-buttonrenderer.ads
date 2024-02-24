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
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_create";

   function copy (other : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorders";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextColor";

   procedure setTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextColorHover";

   function getTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextColorHover";

   procedure setTextColorDown (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextColorDown";

   function getTextColorDown (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextColorDown";

   procedure setTextColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextColorFocused";

   function getTextColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextColorFocused";

   procedure setTextColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextColorDisabled";

   function getTextColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextColorDisabled";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBackgroundColorHover";

   procedure setBackgroundColorDown (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBackgroundColorDown";

   function getBackgroundColorDown (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBackgroundColorDown";

   procedure setBackgroundColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBackgroundColorFocused";

   function getBackgroundColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBackgroundColorFocused";

   procedure setBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBackgroundColorDisabled";

   function getBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBackgroundColorDisabled";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorderColor";

   procedure setBorderColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorderColorHover";

   function getBorderColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorderColorHover";

   procedure setBorderColorDown (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorderColorDown";

   function getBorderColorDown (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorderColorDown";

   procedure setBorderColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorderColorFocused";

   function getBorderColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorderColorFocused";

   procedure setBorderColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setBorderColorDisabled";

   function getBorderColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getBorderColorDisabled";

   procedure setTexture (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTexture";

   function getTexture (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTexture";

   procedure setTextureHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextureHover";

   function getTextureHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextureHover";

   procedure setTextureDown (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextureDown";

   function getTextureDown (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextureDown";

   procedure setTextureFocused (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextureFocused";

   function getTextureFocused (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextureFocused";

   procedure setTextureDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextureDisabled";

   function getTextureDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextureDisabled";

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextStyle";

   function getTextStyle (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextStyle";

   procedure setTextStyleHover (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextStyleHover";

   function getTextStyleHover (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextStyleHover";

   procedure setTextStyleDown (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextStyleDown";

   function getTextStyleDown (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextStyleDown";

   procedure setTextStyleFocused (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextStyleFocused";

   function getTextStyleFocused (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextStyleFocused";

   procedure setTextStyleDisabled (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextStyleDisabled";

   function getTextStyleDisabled (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextStyleDisabled";

   procedure setTextOutlineColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextOutlineColor";

   function getTextOutlineColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextOutlineColor";

   procedure setTextOutlineThickness (renderer : access tguiRenderer; thickness : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_setTextOutlineThickness";

   function getTextOutlineThickness (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiButtonRenderer_getTextOutlineThickness";

private



end TGUI.Renderers.ButtonRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
