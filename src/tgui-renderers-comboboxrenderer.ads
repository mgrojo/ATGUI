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
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline);

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setDefaultTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getDefaultTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureBackgroundDisabled
     (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackgroundDisabled
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrow (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrow (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrowHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrowDisabled (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowDisabled
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

   procedure setDefaultTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getDefaultTextStyle (renderer : access constant tguiRenderer) return tguiUint32;

   procedure setListBox (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getListBox (renderer : access constant tguiRenderer) return access tguiRendererData;

private

   pragma Import (C, create, "tguiComboBoxRenderer_create");
   pragma Import (C, copy, "tguiComboBoxRenderer_copy");
   pragma Import (C, setBorders, "tguiComboBoxRenderer_setBorders");
   pragma Import (C, getBorders, "tguiComboBoxRenderer_getBorders");
   pragma Import (C, setPadding, "tguiComboBoxRenderer_setPadding");
   pragma Import (C, getPadding, "tguiComboBoxRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiComboBoxRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiComboBoxRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorDisabled, "tguiComboBoxRenderer_setBackgroundColorDisabled");
   pragma Import (C, getBackgroundColorDisabled, "tguiComboBoxRenderer_getBackgroundColorDisabled");
   pragma Import (C, setTextColor, "tguiComboBoxRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiComboBoxRenderer_getTextColor");
   pragma Import (C, setTextColorDisabled, "tguiComboBoxRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiComboBoxRenderer_getTextColorDisabled");
   pragma Import (C, setDefaultTextColor, "tguiComboBoxRenderer_setDefaultTextColor");
   pragma Import (C, getDefaultTextColor, "tguiComboBoxRenderer_getDefaultTextColor");
   pragma Import (C, setArrowBackgroundColor, "tguiComboBoxRenderer_setArrowBackgroundColor");
   pragma Import (C, getArrowBackgroundColor, "tguiComboBoxRenderer_getArrowBackgroundColor");
   pragma Import
     (C, setArrowBackgroundColorHover, "tguiComboBoxRenderer_setArrowBackgroundColorHover");
   pragma Import
     (C, getArrowBackgroundColorHover, "tguiComboBoxRenderer_getArrowBackgroundColorHover");
   pragma Import
     (C, setArrowBackgroundColorDisabled, "tguiComboBoxRenderer_setArrowBackgroundColorDisabled");
   pragma Import
     (C, getArrowBackgroundColorDisabled, "tguiComboBoxRenderer_getArrowBackgroundColorDisabled");
   pragma Import (C, setArrowColor, "tguiComboBoxRenderer_setArrowColor");
   pragma Import (C, getArrowColor, "tguiComboBoxRenderer_getArrowColor");
   pragma Import (C, setArrowColorHover, "tguiComboBoxRenderer_setArrowColorHover");
   pragma Import (C, getArrowColorHover, "tguiComboBoxRenderer_getArrowColorHover");
   pragma Import (C, setArrowColorDisabled, "tguiComboBoxRenderer_setArrowColorDisabled");
   pragma Import (C, getArrowColorDisabled, "tguiComboBoxRenderer_getArrowColorDisabled");
   pragma Import (C, setBorderColor, "tguiComboBoxRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiComboBoxRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiComboBoxRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiComboBoxRenderer_getTextureBackground");
   pragma Import
     (C, setTextureBackgroundDisabled, "tguiComboBoxRenderer_setTextureBackgroundDisabled");
   pragma Import
     (C, getTextureBackgroundDisabled, "tguiComboBoxRenderer_getTextureBackgroundDisabled");
   pragma Import (C, setTextureArrow, "tguiComboBoxRenderer_setTextureArrow");
   pragma Import (C, getTextureArrow, "tguiComboBoxRenderer_getTextureArrow");
   pragma Import (C, setTextureArrowHover, "tguiComboBoxRenderer_setTextureArrowHover");
   pragma Import (C, getTextureArrowHover, "tguiComboBoxRenderer_getTextureArrowHover");
   pragma Import (C, setTextureArrowDisabled, "tguiComboBoxRenderer_setTextureArrowDisabled");
   pragma Import (C, getTextureArrowDisabled, "tguiComboBoxRenderer_getTextureArrowDisabled");
   pragma Import (C, setTextStyle, "tguiComboBoxRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiComboBoxRenderer_getTextStyle");
   pragma Import (C, setDefaultTextStyle, "tguiComboBoxRenderer_setDefaultTextStyle");
   pragma Import (C, getDefaultTextStyle, "tguiComboBoxRenderer_getDefaultTextStyle");
   pragma Import (C, setListBox, "tguiComboBoxRenderer_setListBox");
   pragma Import (C, getListBox, "tguiComboBoxRenderer_getListBox");

end TGUI.Renderers.ComboBoxRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
