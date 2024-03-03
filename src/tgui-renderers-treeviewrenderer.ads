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

package TGUI.Renderers.TreeViewRenderer is

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

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBranchExpanded (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBranchExpanded (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureBranchCollapsed (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBranchCollapsed (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureLeaf (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureLeaf (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiTreeViewRenderer_create");
   pragma Import (C, copy, "tguiTreeViewRenderer_copy");
   pragma Import (C, setBorders, "tguiTreeViewRenderer_setBorders");
   pragma Import (C, getBorders, "tguiTreeViewRenderer_getBorders");
   pragma Import (C, setPadding, "tguiTreeViewRenderer_setPadding");
   pragma Import (C, getPadding, "tguiTreeViewRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiTreeViewRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiTreeViewRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiTreeViewRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiTreeViewRenderer_getBackgroundColorHover");
   pragma Import (C, setSelectedBackgroundColor, "tguiTreeViewRenderer_setSelectedBackgroundColor");
   pragma Import (C, getSelectedBackgroundColor, "tguiTreeViewRenderer_getSelectedBackgroundColor");
   pragma Import
     (C, setSelectedBackgroundColorHover, "tguiTreeViewRenderer_setSelectedBackgroundColorHover");
   pragma Import
     (C, getSelectedBackgroundColorHover, "tguiTreeViewRenderer_getSelectedBackgroundColorHover");
   pragma Import (C, setTextColor, "tguiTreeViewRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiTreeViewRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiTreeViewRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiTreeViewRenderer_getTextColorHover");
   pragma Import (C, setSelectedTextColor, "tguiTreeViewRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiTreeViewRenderer_getSelectedTextColor");
   pragma Import (C, setSelectedTextColorHover, "tguiTreeViewRenderer_setSelectedTextColorHover");
   pragma Import (C, getSelectedTextColorHover, "tguiTreeViewRenderer_getSelectedTextColorHover");
   pragma Import (C, setBorderColor, "tguiTreeViewRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiTreeViewRenderer_getBorderColor");
   pragma Import (C, setTextureBranchExpanded, "tguiTreeViewRenderer_setTextureBranchExpanded");
   pragma Import (C, getTextureBranchExpanded, "tguiTreeViewRenderer_getTextureBranchExpanded");
   pragma Import (C, setTextureBranchCollapsed, "tguiTreeViewRenderer_setTextureBranchCollapsed");
   pragma Import (C, getTextureBranchCollapsed, "tguiTreeViewRenderer_getTextureBranchCollapsed");
   pragma Import (C, setTextureLeaf, "tguiTreeViewRenderer_setTextureLeaf");
   pragma Import (C, getTextureLeaf, "tguiTreeViewRenderer_getTextureLeaf");
   pragma Import (C, setScrollbar, "tguiTreeViewRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiTreeViewRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiTreeViewRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiTreeViewRenderer_getScrollbarWidth");

end TGUI.Renderers.TreeViewRenderer;
