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

package TGUI.Renderers.RadioButtonRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setTextDistanceRatio (renderer : tguiRenderer_Ptr; ratio : tguiFloat);

   function getTextDistanceRatio (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorChecked (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorChecked (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorCheckedHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorCheckedHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorCheckedDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorCheckedDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorChecked
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorChecked
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorCheckedHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorCheckedHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorCheckedDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorCheckedDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorFocused
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorFocused (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorChecked
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorChecked (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorCheckedHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorCheckedHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorCheckedFocused
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorCheckedFocused
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorCheckedDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorCheckedDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setCheckColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getCheckColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setCheckColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getCheckColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setCheckColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getCheckColorDisabled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureUnchecked (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureUnchecked (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureChecked (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureChecked (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureUncheckedHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureUncheckedHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureCheckedHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureCheckedHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureUncheckedFocused (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureUncheckedFocused (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureCheckedFocused (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureCheckedFocused (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureUncheckedDisabled (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureUncheckedDisabled (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureCheckedDisabled (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureCheckedDisabled (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyle (renderer : tguiRenderer_Ptr) return tguiUint32;

   procedure setTextStyleChecked (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyleChecked (renderer : tguiRenderer_Ptr) return tguiUint32;

private

   pragma Import (C, create, "tguiRadioButtonRenderer_create");
   pragma Import (C, copy, "tguiRadioButtonRenderer_copy");
   pragma Import (C, setTextDistanceRatio, "tguiRadioButtonRenderer_setTextDistanceRatio");
   pragma Import (C, getTextDistanceRatio, "tguiRadioButtonRenderer_getTextDistanceRatio");
   pragma Import (C, setBorders, "tguiRadioButtonRenderer_setBorders");
   pragma Import (C, getBorders, "tguiRadioButtonRenderer_getBorders");
   pragma Import (C, setTextColor, "tguiRadioButtonRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiRadioButtonRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiRadioButtonRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiRadioButtonRenderer_getTextColorHover");
   pragma Import (C, setTextColorDisabled, "tguiRadioButtonRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiRadioButtonRenderer_getTextColorDisabled");
   pragma Import (C, setTextColorChecked, "tguiRadioButtonRenderer_setTextColorChecked");
   pragma Import (C, getTextColorChecked, "tguiRadioButtonRenderer_getTextColorChecked");
   pragma Import (C, setTextColorCheckedHover, "tguiRadioButtonRenderer_setTextColorCheckedHover");
   pragma Import (C, getTextColorCheckedHover, "tguiRadioButtonRenderer_getTextColorCheckedHover");
   pragma Import
     (C, setTextColorCheckedDisabled, "tguiRadioButtonRenderer_setTextColorCheckedDisabled");
   pragma Import
     (C, getTextColorCheckedDisabled, "tguiRadioButtonRenderer_getTextColorCheckedDisabled");
   pragma Import (C, setBackgroundColor, "tguiRadioButtonRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiRadioButtonRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiRadioButtonRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiRadioButtonRenderer_getBackgroundColorHover");
   pragma Import
     (C, setBackgroundColorDisabled, "tguiRadioButtonRenderer_setBackgroundColorDisabled");
   pragma Import
     (C, getBackgroundColorDisabled, "tguiRadioButtonRenderer_getBackgroundColorDisabled");
   pragma Import
     (C, setBackgroundColorChecked, "tguiRadioButtonRenderer_setBackgroundColorChecked");
   pragma Import
     (C, getBackgroundColorChecked, "tguiRadioButtonRenderer_getBackgroundColorChecked");
   pragma Import
     (C, setBackgroundColorCheckedHover, "tguiRadioButtonRenderer_setBackgroundColorCheckedHover");
   pragma Import
     (C, getBackgroundColorCheckedHover, "tguiRadioButtonRenderer_getBackgroundColorCheckedHover");
   pragma Import
     (C, setBackgroundColorCheckedDisabled,
      "tguiRadioButtonRenderer_setBackgroundColorCheckedDisabled");
   pragma Import
     (C, getBackgroundColorCheckedDisabled,
      "tguiRadioButtonRenderer_getBackgroundColorCheckedDisabled");
   pragma Import (C, setBorderColor, "tguiRadioButtonRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiRadioButtonRenderer_getBorderColor");
   pragma Import (C, setBorderColorHover, "tguiRadioButtonRenderer_setBorderColorHover");
   pragma Import (C, getBorderColorHover, "tguiRadioButtonRenderer_getBorderColorHover");
   pragma Import (C, setBorderColorFocused, "tguiRadioButtonRenderer_setBorderColorFocused");
   pragma Import (C, getBorderColorFocused, "tguiRadioButtonRenderer_getBorderColorFocused");
   pragma Import (C, setBorderColorDisabled, "tguiRadioButtonRenderer_setBorderColorDisabled");
   pragma Import (C, getBorderColorDisabled, "tguiRadioButtonRenderer_getBorderColorDisabled");
   pragma Import (C, setBorderColorChecked, "tguiRadioButtonRenderer_setBorderColorChecked");
   pragma Import (C, getBorderColorChecked, "tguiRadioButtonRenderer_getBorderColorChecked");
   pragma Import
     (C, setBorderColorCheckedHover, "tguiRadioButtonRenderer_setBorderColorCheckedHover");
   pragma Import
     (C, getBorderColorCheckedHover, "tguiRadioButtonRenderer_getBorderColorCheckedHover");
   pragma Import
     (C, setBorderColorCheckedFocused, "tguiRadioButtonRenderer_setBorderColorCheckedFocused");
   pragma Import
     (C, getBorderColorCheckedFocused, "tguiRadioButtonRenderer_getBorderColorCheckedFocused");
   pragma Import
     (C, setBorderColorCheckedDisabled, "tguiRadioButtonRenderer_setBorderColorCheckedDisabled");
   pragma Import
     (C, getBorderColorCheckedDisabled, "tguiRadioButtonRenderer_getBorderColorCheckedDisabled");
   pragma Import (C, setCheckColor, "tguiRadioButtonRenderer_setCheckColor");
   pragma Import (C, getCheckColor, "tguiRadioButtonRenderer_getCheckColor");
   pragma Import (C, setCheckColorHover, "tguiRadioButtonRenderer_setCheckColorHover");
   pragma Import (C, getCheckColorHover, "tguiRadioButtonRenderer_getCheckColorHover");
   pragma Import (C, setCheckColorDisabled, "tguiRadioButtonRenderer_setCheckColorDisabled");
   pragma Import (C, getCheckColorDisabled, "tguiRadioButtonRenderer_getCheckColorDisabled");
   pragma Import (C, setTextureUnchecked, "tguiRadioButtonRenderer_setTextureUnchecked");
   pragma Import (C, getTextureUnchecked, "tguiRadioButtonRenderer_getTextureUnchecked");
   pragma Import (C, setTextureChecked, "tguiRadioButtonRenderer_setTextureChecked");
   pragma Import (C, getTextureChecked, "tguiRadioButtonRenderer_getTextureChecked");
   pragma Import (C, setTextureUncheckedHover, "tguiRadioButtonRenderer_setTextureUncheckedHover");
   pragma Import (C, getTextureUncheckedHover, "tguiRadioButtonRenderer_getTextureUncheckedHover");
   pragma Import (C, setTextureCheckedHover, "tguiRadioButtonRenderer_setTextureCheckedHover");
   pragma Import (C, getTextureCheckedHover, "tguiRadioButtonRenderer_getTextureCheckedHover");
   pragma Import
     (C, setTextureUncheckedFocused, "tguiRadioButtonRenderer_setTextureUncheckedFocused");
   pragma Import
     (C, getTextureUncheckedFocused, "tguiRadioButtonRenderer_getTextureUncheckedFocused");
   pragma Import (C, setTextureCheckedFocused, "tguiRadioButtonRenderer_setTextureCheckedFocused");
   pragma Import (C, getTextureCheckedFocused, "tguiRadioButtonRenderer_getTextureCheckedFocused");
   pragma Import
     (C, setTextureUncheckedDisabled, "tguiRadioButtonRenderer_setTextureUncheckedDisabled");
   pragma Import
     (C, getTextureUncheckedDisabled, "tguiRadioButtonRenderer_getTextureUncheckedDisabled");
   pragma Import
     (C, setTextureCheckedDisabled, "tguiRadioButtonRenderer_setTextureCheckedDisabled");
   pragma Import
     (C, getTextureCheckedDisabled, "tguiRadioButtonRenderer_getTextureCheckedDisabled");
   pragma Import (C, setTextStyle, "tguiRadioButtonRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiRadioButtonRenderer_getTextStyle");
   pragma Import (C, setTextStyleChecked, "tguiRadioButtonRenderer_setTextStyleChecked");
   pragma Import (C, getTextStyleChecked, "tguiRadioButtonRenderer_getTextStyleChecked");

end TGUI.Renderers.RadioButtonRenderer;
