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

package TGUI.Renderers.TabsRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureTab (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureTab (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureTabHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureTabHover (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureSelectedTab (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureSelectedTab
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureSelectedTabHover
     (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureSelectedTabHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureDisabledTab (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureDisabledTab
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setDistanceToSide (renderer : access tguiRenderer; distanceToSide : tguiFloat);

   function getDistanceToSide (renderer : access constant tguiRenderer) return tguiFloat;

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

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
