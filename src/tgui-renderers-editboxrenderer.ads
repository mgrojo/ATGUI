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

package TGUI.Renderers.EditBoxRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_create";

   function copy (other : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBorders";

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setPadding";

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getPadding";

   procedure setCaretWidth (renderer : access tguiRenderer; width : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setCaretWidth";

   function getCaretWidth (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getCaretWidth";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextColor";

   procedure setDefaultTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setDefaultTextColor";

   function getDefaultTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getDefaultTextColor";

   procedure setTextColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextColorFocused";

   function getTextColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextColorFocused";

   procedure setTextColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextColorDisabled";

   function getTextColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextColorDisabled";

   procedure setSelectedTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setSelectedTextColor";

   function getSelectedTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getSelectedTextColor";

   procedure setSelectedTextBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setSelectedTextBackgroundColor";

   function getSelectedTextBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getSelectedTextBackgroundColor";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBackgroundColorHover";

   procedure setBackgroundColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBackgroundColorFocused";

   function getBackgroundColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBackgroundColorFocused";

   procedure setBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBackgroundColorDisabled";

   function getBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBackgroundColorDisabled";

   procedure setCaretColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setCaretColor";

   function getCaretColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getCaretColor";

   procedure setCaretColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setCaretColorHover";

   function getCaretColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getCaretColorHover";

   procedure setCaretColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setCaretColorFocused";

   function getCaretColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getCaretColorFocused";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBorderColor";

   procedure setBorderColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBorderColorHover";

   function getBorderColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBorderColorHover";

   procedure setBorderColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBorderColorFocused";

   function getBorderColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBorderColorFocused";

   procedure setBorderColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setBorderColorDisabled";

   function getBorderColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getBorderColorDisabled";

   procedure setTexture (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTexture";

   function getTexture (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTexture";

   procedure setTextureHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextureHover";

   function getTextureHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextureHover";

   procedure setTextureFocused (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextureFocused";

   function getTextureFocused (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextureFocused";

   procedure setTextureDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextureDisabled";

   function getTextureDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextureDisabled";

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setTextStyle";

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getTextStyle";

   procedure setDefaultTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_setDefaultTextStyle";

   function getDefaultTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBoxRenderer_getDefaultTextStyle";

private



end TGUI.Renderers.EditBoxRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
