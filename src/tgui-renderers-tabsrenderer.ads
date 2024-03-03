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

package TGUI.Renderers.TabsRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColor
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureTab (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureTab (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureTabHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureTabHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureSelectedTab (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureSelectedTab (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureSelectedTabHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureSelectedTabHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureDisabledTab (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureDisabledTab (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setDistanceToSide (renderer : tguiRenderer_Ptr; distanceToSide : tguiFloat);

   function getDistanceToSide (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiTabsRenderer_create");
   pragma Import (C, copy, "tguiTabsRenderer_copy");
   pragma Import (C, setBorders, "tguiTabsRenderer_setBorders");
   pragma Import (C, getBorders, "tguiTabsRenderer_getBorders");
   pragma Import (C, setBackgroundColor, "tguiTabsRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiTabsRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiTabsRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiTabsRenderer_getBackgroundColorHover");
   pragma Import (C, setSelectedBackgroundColor, "tguiTabsRenderer_setSelectedBackgroundColor");
   pragma Import (C, getSelectedBackgroundColor, "tguiTabsRenderer_getSelectedBackgroundColor");
   pragma Import
     (C, setSelectedBackgroundColorHover, "tguiTabsRenderer_setSelectedBackgroundColorHover");
   pragma Import
     (C, getSelectedBackgroundColorHover, "tguiTabsRenderer_getSelectedBackgroundColorHover");
   pragma Import (C, setBackgroundColorDisabled, "tguiTabsRenderer_setBackgroundColorDisabled");
   pragma Import (C, getBackgroundColorDisabled, "tguiTabsRenderer_getBackgroundColorDisabled");
   pragma Import (C, setTextColor, "tguiTabsRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiTabsRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiTabsRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiTabsRenderer_getTextColorHover");
   pragma Import (C, setSelectedTextColor, "tguiTabsRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiTabsRenderer_getSelectedTextColor");
   pragma Import (C, setSelectedTextColorHover, "tguiTabsRenderer_setSelectedTextColorHover");
   pragma Import (C, getSelectedTextColorHover, "tguiTabsRenderer_getSelectedTextColorHover");
   pragma Import (C, setTextColorDisabled, "tguiTabsRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiTabsRenderer_getTextColorDisabled");
   pragma Import (C, setBorderColor, "tguiTabsRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiTabsRenderer_getBorderColor");
   pragma Import (C, setTextureTab, "tguiTabsRenderer_setTextureTab");
   pragma Import (C, getTextureTab, "tguiTabsRenderer_getTextureTab");
   pragma Import (C, setTextureTabHover, "tguiTabsRenderer_setTextureTabHover");
   pragma Import (C, getTextureTabHover, "tguiTabsRenderer_getTextureTabHover");
   pragma Import (C, setTextureSelectedTab, "tguiTabsRenderer_setTextureSelectedTab");
   pragma Import (C, getTextureSelectedTab, "tguiTabsRenderer_getTextureSelectedTab");
   pragma Import (C, setTextureSelectedTabHover, "tguiTabsRenderer_setTextureSelectedTabHover");
   pragma Import (C, getTextureSelectedTabHover, "tguiTabsRenderer_getTextureSelectedTabHover");
   pragma Import (C, setTextureDisabledTab, "tguiTabsRenderer_setTextureDisabledTab");
   pragma Import (C, getTextureDisabledTab, "tguiTabsRenderer_getTextureDisabledTab");
   pragma Import (C, setDistanceToSide, "tguiTabsRenderer_setDistanceToSide");
   pragma Import (C, getDistanceToSide, "tguiTabsRenderer_getDistanceToSide");

end TGUI.Renderers.TabsRenderer;
