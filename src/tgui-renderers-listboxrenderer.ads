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

package TGUI.Renderers.ListBoxRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getBorders";

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setPadding";

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getPadding";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getBackgroundColorHover";

   procedure setSelectedBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setSelectedBackgroundColor";

   function getSelectedBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getSelectedBackgroundColor";

   procedure setSelectedBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setSelectedBackgroundColorHover";

   function getSelectedBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getSelectedBackgroundColorHover";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getTextColor";

   procedure setTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setTextColorHover";

   function getTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getTextColorHover";

   procedure setSelectedTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setSelectedTextColor";

   function getSelectedTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getSelectedTextColor";

   procedure setSelectedTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setSelectedTextColorHover";

   function getSelectedTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getSelectedTextColorHover";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getBorderColor";

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setTextureBackground";

   function getTextureBackground (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getTextureBackground";

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setTextStyle";

   function getTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getTextStyle";

   procedure setSelectedTextStyle (renderer : access tguiRenderer; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setSelectedTextStyle";

   function getSelectedTextStyle (renderer : access constant tguiRenderer) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getSelectedTextStyle";

   procedure setScrollbar (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setScrollbar";

   function getScrollbar (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getScrollbar";

   procedure setScrollbarWidth (renderer : access tguiRenderer; width : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_setScrollbarWidth";

   function getScrollbarWidth (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiListBoxRenderer_getScrollbarWidth";

private



end TGUI.Renderers.ListBoxRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
