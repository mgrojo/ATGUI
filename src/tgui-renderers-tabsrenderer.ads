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
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getBorders";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getBackgroundColorHover";

   procedure setSelectedBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setSelectedBackgroundColor";

   function getSelectedBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getSelectedBackgroundColor";

   procedure setSelectedBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setSelectedBackgroundColorHover";

   function getSelectedBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getSelectedBackgroundColorHover";

   procedure setBackgroundColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setBackgroundColorDisabled";

   function getBackgroundColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getBackgroundColorDisabled";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextColor";

   procedure setTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextColorHover";

   function getTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextColorHover";

   procedure setSelectedTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setSelectedTextColor";

   function getSelectedTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getSelectedTextColor";

   procedure setSelectedTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setSelectedTextColorHover";

   function getSelectedTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getSelectedTextColorHover";

   procedure setTextColorDisabled (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextColorDisabled";

   function getTextColorDisabled (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextColorDisabled";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getBorderColor";

   procedure setTextureTab (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextureTab";

   function getTextureTab (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextureTab";

   procedure setTextureTabHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextureTabHover";

   function getTextureTabHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextureTabHover";

   procedure setTextureSelectedTab (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextureSelectedTab";

   function getTextureSelectedTab (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextureSelectedTab";

   procedure setTextureSelectedTabHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextureSelectedTabHover";

   function getTextureSelectedTabHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextureSelectedTabHover";

   procedure setTextureDisabledTab (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setTextureDisabledTab";

   function getTextureDisabledTab (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getTextureDisabledTab";

   procedure setDistanceToSide (renderer : access tguiRenderer; distanceToSide : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_setDistanceToSide";

   function getDistanceToSide (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiTabsRenderer_getDistanceToSide";

private



end TGUI.Renderers.TabsRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
