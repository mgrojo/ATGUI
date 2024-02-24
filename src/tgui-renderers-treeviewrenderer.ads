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

package TGUI.Renderers.TreeViewRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getBorders";

   procedure setPadding (renderer : access tguiRenderer; padding : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setPadding";

   function getPadding (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getPadding";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getBackgroundColorHover";

   procedure setSelectedBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setSelectedBackgroundColor";

   function getSelectedBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getSelectedBackgroundColor";

   procedure setSelectedBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setSelectedBackgroundColorHover";

   function getSelectedBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getSelectedBackgroundColorHover";

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setTextColor";

   function getTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getTextColor";

   procedure setTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setTextColorHover";

   function getTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getTextColorHover";

   procedure setSelectedTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setSelectedTextColor";

   function getSelectedTextColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getSelectedTextColor";

   procedure setSelectedTextColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setSelectedTextColorHover";

   function getSelectedTextColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getSelectedTextColorHover";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getBorderColor";

   procedure setTextureBranchExpanded (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setTextureBranchExpanded";

   function getTextureBranchExpanded (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getTextureBranchExpanded";

   procedure setTextureBranchCollapsed (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setTextureBranchCollapsed";

   function getTextureBranchCollapsed (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getTextureBranchCollapsed";

   procedure setTextureLeaf (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setTextureLeaf";

   function getTextureLeaf (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getTextureLeaf";

   procedure setScrollbar (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setScrollbar";

   function getScrollbar (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getScrollbar";

   procedure setScrollbarWidth (renderer : access tguiRenderer; width : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_setScrollbarWidth";

   function getScrollbarWidth (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiTreeViewRenderer_getScrollbarWidth";

private



end TGUI.Renderers.TreeViewRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
