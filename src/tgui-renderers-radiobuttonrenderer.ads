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

package TGUI.Renderers.RadioButtonRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_copy";

   procedure setTextDistanceRatio (renderer : access tguiRenderer; ratio : tguiFloat)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextDistanceRatio";

   function getTextDistanceRatio (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextDistanceRatio";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorders";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColor";

   procedure setTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColorHover";

   function getTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColorHover";

   procedure setTextColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColorDisabled";

   function getTextColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColorDisabled";

   procedure setTextColorChecked (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColorChecked";

   function getTextColorChecked (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColorChecked";

   procedure setTextColorCheckedHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColorCheckedHover";

   function getTextColorCheckedHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColorCheckedHover";

   procedure setTextColorCheckedDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextColorCheckedDisabled";

   function getTextColorCheckedDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextColorCheckedDisabled";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColorHover";

   procedure setBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColorDisabled";

   function getBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColorDisabled";

   procedure setBackgroundColorChecked (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColorChecked";

   function getBackgroundColorChecked (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColorChecked";

   procedure setBackgroundColorCheckedHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColorCheckedHover";

   function getBackgroundColorCheckedHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColorCheckedHover";

   procedure setBackgroundColorCheckedDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBackgroundColorCheckedDisabled";

   function getBackgroundColorCheckedDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBackgroundColorCheckedDisabled";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColor";

   procedure setBorderColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorHover";

   function getBorderColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorHover";

   procedure setBorderColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorFocused";

   function getBorderColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorFocused";

   procedure setBorderColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorDisabled";

   function getBorderColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorDisabled";

   procedure setBorderColorChecked (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorChecked";

   function getBorderColorChecked (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorChecked";

   procedure setBorderColorCheckedHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorCheckedHover";

   function getBorderColorCheckedHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorCheckedHover";

   procedure setBorderColorCheckedFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorCheckedFocused";

   function getBorderColorCheckedFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorCheckedFocused";

   procedure setBorderColorCheckedDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setBorderColorCheckedDisabled";

   function getBorderColorCheckedDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getBorderColorCheckedDisabled";

   procedure setCheckColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setCheckColor";

   function getCheckColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getCheckColor";

   procedure setCheckColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setCheckColorHover";

   function getCheckColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getCheckColorHover";

   procedure setCheckColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setCheckColorDisabled";

   function getCheckColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getCheckColorDisabled";

   procedure setTextureUnchecked (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureUnchecked";

   function getTextureUnchecked (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureUnchecked";

   procedure setTextureChecked (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureChecked";

   function getTextureChecked (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureChecked";

   procedure setTextureUncheckedHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureUncheckedHover";

   function getTextureUncheckedHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureUncheckedHover";

   procedure setTextureCheckedHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureCheckedHover";

   function getTextureCheckedHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureCheckedHover";

   procedure setTextureUncheckedFocused (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureUncheckedFocused";

   function getTextureUncheckedFocused (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureUncheckedFocused";

   procedure setTextureCheckedFocused (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureCheckedFocused";

   function getTextureCheckedFocused (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureCheckedFocused";

   procedure setTextureUncheckedDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureUncheckedDisabled";

   function getTextureUncheckedDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureUncheckedDisabled";

   procedure setTextureCheckedDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextureCheckedDisabled";

   function getTextureCheckedDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextureCheckedDisabled";

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextStyle";

   function getTextStyle (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextStyle";

   procedure setTextStyleChecked (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_setTextStyleChecked";

   function getTextStyleChecked (renderer : access tguiRenderer) return tguiUint32
   with Import => True,
     Convention => C,
     External_Name => "tguiRadioButtonRenderer_getTextStyleChecked";

private



end TGUI.Renderers.RadioButtonRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
