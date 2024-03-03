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

with TGUI.Color;

package TGUI.Renderers.ComboBoxRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setPadding (renderer : tguiRenderer_Ptr; padding : tguiOutline_Ptr);

   function getPadding (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setDefaultTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getDefaultTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColor
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColorDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setArrowColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getArrowColorDisabled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureBackgroundDisabled (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackgroundDisabled (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureArrow (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureArrow (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureArrowHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureArrowHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureArrowDisabled (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureArrowDisabled (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyle (renderer : tguiRenderer_Cons) return tguiUint32;

   procedure setDefaultTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getDefaultTextStyle (renderer : tguiRenderer_Cons) return tguiUint32;

   procedure setListBox (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getListBox (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

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
