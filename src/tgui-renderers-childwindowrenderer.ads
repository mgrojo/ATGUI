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

package TGUI.Renderers.ChildWindowRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (other : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setTitleBarColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTitleBarColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTitleColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTitleColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorFocused
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorFocused (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderBelowTitleBar (renderer : tguiRenderer_Ptr; border : tguiFloat);

   function getBorderBelowTitleBar (renderer : tguiRenderer_Ptr) return tguiFloat;

   procedure setTitleBarHeight (renderer : tguiRenderer_Ptr; height : tguiFloat);

   function getTitleBarHeight (renderer : tguiRenderer_Ptr) return tguiFloat;

   procedure setDistanceToSide (renderer : tguiRenderer_Ptr; distance : tguiFloat);

   function getDistanceToSide (renderer : tguiRenderer_Ptr) return tguiFloat;

   procedure setPaddingBetweenButtons (renderer : tguiRenderer_Ptr; padding : tguiFloat);

   function getPaddingBetweenButtons (renderer : tguiRenderer_Ptr) return tguiFloat;

   procedure setMinimumResizableBorderWidth
     (renderer : tguiRenderer_Ptr; minimumBorderWidth : tguiFloat);

   function getMinimumResizableBorderWidth (renderer : tguiRenderer_Ptr) return tguiFloat;

   procedure setShowTextOnTitleButtons (renderer : tguiRenderer_Ptr; showTitle : tguiBool);

   function getShowTextOnTitleButtons (renderer : tguiRenderer_Ptr) return tguiBool;

   procedure setTextureTitleBar (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureTitleBar (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setCloseButton (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getCloseButton (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setMaximizeButton (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getMaximizeButton (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setMinimizeButton (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getMinimizeButton (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

private

   pragma Import (C, create, "tguiChildWindowRenderer_create");
   pragma Import (C, copy, "tguiChildWindowRenderer_copy");
   pragma Import (C, setBorders, "tguiChildWindowRenderer_setBorders");
   pragma Import (C, getBorders, "tguiChildWindowRenderer_getBorders");
   pragma Import (C, setTitleBarColor, "tguiChildWindowRenderer_setTitleBarColor");
   pragma Import (C, getTitleBarColor, "tguiChildWindowRenderer_getTitleBarColor");
   pragma Import (C, setTitleColor, "tguiChildWindowRenderer_setTitleColor");
   pragma Import (C, getTitleColor, "tguiChildWindowRenderer_getTitleColor");
   pragma Import (C, setBackgroundColor, "tguiChildWindowRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiChildWindowRenderer_getBackgroundColor");
   pragma Import (C, setBorderColor, "tguiChildWindowRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiChildWindowRenderer_getBorderColor");
   pragma Import (C, setBorderColorFocused, "tguiChildWindowRenderer_setBorderColorFocused");
   pragma Import (C, getBorderColorFocused, "tguiChildWindowRenderer_getBorderColorFocused");
   pragma Import (C, setBorderBelowTitleBar, "tguiChildWindowRenderer_setBorderBelowTitleBar");
   pragma Import (C, getBorderBelowTitleBar, "tguiChildWindowRenderer_getBorderBelowTitleBar");
   pragma Import (C, setTitleBarHeight, "tguiChildWindowRenderer_setTitleBarHeight");
   pragma Import (C, getTitleBarHeight, "tguiChildWindowRenderer_getTitleBarHeight");
   pragma Import (C, setDistanceToSide, "tguiChildWindowRenderer_setDistanceToSide");
   pragma Import (C, getDistanceToSide, "tguiChildWindowRenderer_getDistanceToSide");
   pragma Import (C, setPaddingBetweenButtons, "tguiChildWindowRenderer_setPaddingBetweenButtons");
   pragma Import (C, getPaddingBetweenButtons, "tguiChildWindowRenderer_getPaddingBetweenButtons");
   pragma Import
     (C, setMinimumResizableBorderWidth, "tguiChildWindowRenderer_setMinimumResizableBorderWidth");
   pragma Import
     (C, getMinimumResizableBorderWidth, "tguiChildWindowRenderer_getMinimumResizableBorderWidth");
   pragma Import
     (C, setShowTextOnTitleButtons, "tguiChildWindowRenderer_setShowTextOnTitleButtons");
   pragma Import
     (C, getShowTextOnTitleButtons, "tguiChildWindowRenderer_getShowTextOnTitleButtons");
   pragma Import (C, setTextureTitleBar, "tguiChildWindowRenderer_setTextureTitleBar");
   pragma Import (C, getTextureTitleBar, "tguiChildWindowRenderer_getTextureTitleBar");
   pragma Import (C, setTextureBackground, "tguiChildWindowRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiChildWindowRenderer_getTextureBackground");
   pragma Import (C, setCloseButton, "tguiChildWindowRenderer_setCloseButton");
   pragma Import (C, getCloseButton, "tguiChildWindowRenderer_getCloseButton");
   pragma Import (C, setMaximizeButton, "tguiChildWindowRenderer_setMaximizeButton");
   pragma Import (C, getMaximizeButton, "tguiChildWindowRenderer_getMaximizeButton");
   pragma Import (C, setMinimizeButton, "tguiChildWindowRenderer_setMinimizeButton");
   pragma Import (C, getMinimizeButton, "tguiChildWindowRenderer_getMinimizeButton");

end TGUI.Renderers.ChildWindowRenderer;
