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

package TGUI.Renderers.ListViewRenderer is

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

   procedure setHeaderBackgroundColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getHeaderBackgroundColor
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setHeaderTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getHeaderTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSeparatorColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSeparatorColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setGridLinesColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getGridLinesColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiListViewRenderer_create");
   pragma Import (C, copy, "tguiListViewRenderer_copy");
   pragma Import (C, setBorders, "tguiListViewRenderer_setBorders");
   pragma Import (C, getBorders, "tguiListViewRenderer_getBorders");
   pragma Import (C, setPadding, "tguiListViewRenderer_setPadding");
   pragma Import (C, getPadding, "tguiListViewRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiListViewRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiListViewRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiListViewRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiListViewRenderer_getBackgroundColorHover");
   pragma Import (C, setSelectedBackgroundColor, "tguiListViewRenderer_setSelectedBackgroundColor");
   pragma Import (C, getSelectedBackgroundColor, "tguiListViewRenderer_getSelectedBackgroundColor");
   pragma Import
     (C, setSelectedBackgroundColorHover, "tguiListViewRenderer_setSelectedBackgroundColorHover");
   pragma Import
     (C, getSelectedBackgroundColorHover, "tguiListViewRenderer_getSelectedBackgroundColorHover");
   pragma Import (C, setTextColor, "tguiListViewRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiListViewRenderer_getTextColor");
   pragma Import (C, setTextColorHover, "tguiListViewRenderer_setTextColorHover");
   pragma Import (C, getTextColorHover, "tguiListViewRenderer_getTextColorHover");
   pragma Import (C, setSelectedTextColor, "tguiListViewRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiListViewRenderer_getSelectedTextColor");
   pragma Import (C, setSelectedTextColorHover, "tguiListViewRenderer_setSelectedTextColorHover");
   pragma Import (C, getSelectedTextColorHover, "tguiListViewRenderer_getSelectedTextColorHover");
   pragma Import (C, setHeaderBackgroundColor, "tguiListViewRenderer_setHeaderBackgroundColor");
   pragma Import (C, getHeaderBackgroundColor, "tguiListViewRenderer_getHeaderBackgroundColor");
   pragma Import (C, setHeaderTextColor, "tguiListViewRenderer_setHeaderTextColor");
   pragma Import (C, getHeaderTextColor, "tguiListViewRenderer_getHeaderTextColor");
   pragma Import (C, setBorderColor, "tguiListViewRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiListViewRenderer_getBorderColor");
   pragma Import (C, setSeparatorColor, "tguiListViewRenderer_setSeparatorColor");
   pragma Import (C, getSeparatorColor, "tguiListViewRenderer_getSeparatorColor");
   pragma Import (C, setGridLinesColor, "tguiListViewRenderer_setGridLinesColor");
   pragma Import (C, getGridLinesColor, "tguiListViewRenderer_getGridLinesColor");
   pragma Import (C, setScrollbar, "tguiListViewRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiListViewRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiListViewRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiListViewRenderer_getScrollbarWidth");

end TGUI.Renderers.ListViewRenderer;
