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

package TGUI.Renderers.ComboBoxRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getBorders";

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setPadding";

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getPadding";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getBackgroundColor";

   procedure setBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setBackgroundColorDisabled";

   function getBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getBackgroundColorDisabled";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextColor";

   procedure setTextColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextColorDisabled";

   function getTextColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextColorDisabled";

   procedure setDefaultTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setDefaultTextColor";

   function getDefaultTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getDefaultTextColor";

   procedure setArrowBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowBackgroundColor";

   function getArrowBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowBackgroundColor";

   procedure setArrowBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowBackgroundColorHover";

   function getArrowBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowBackgroundColorHover";

   procedure setArrowBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowBackgroundColorDisabled";

   function getArrowBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowBackgroundColorDisabled";

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowColor";

   function getArrowColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowColor";

   procedure setArrowColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowColorHover";

   function getArrowColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowColorHover";

   procedure setArrowColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setArrowColorDisabled";

   function getArrowColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getArrowColorDisabled";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getBorderColor";

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextureBackground";

   function getTextureBackground (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextureBackground";

   procedure setTextureBackgroundDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextureBackgroundDisabled";

   function getTextureBackgroundDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextureBackgroundDisabled";

   procedure setTextureArrow (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextureArrow";

   function getTextureArrow (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextureArrow";

   procedure setTextureArrowHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextureArrowHover";

   function getTextureArrowHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextureArrowHover";

   procedure setTextureArrowDisabled (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextureArrowDisabled";

   function getTextureArrowDisabled (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextureArrowDisabled";

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setTextStyle";

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getTextStyle";

   procedure setDefaultTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setDefaultTextStyle";

   function getDefaultTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getDefaultTextStyle";

   procedure setListBox (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_setListBox";

   function getListBox (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiComboBoxRenderer_getListBox";

private



end TGUI.Renderers.ComboBoxRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
