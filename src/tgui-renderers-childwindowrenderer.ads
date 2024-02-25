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
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setTitleBarColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTitleBarColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTitleColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTitleColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorFocused
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorFocused
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderBelowTitleBar (renderer : access tguiRenderer; border : tguiFloat);

   function getBorderBelowTitleBar (renderer : access tguiRenderer) return tguiFloat;

   procedure setTitleBarHeight (renderer : access tguiRenderer; height : tguiFloat);

   function getTitleBarHeight (renderer : access tguiRenderer) return tguiFloat;

   procedure setDistanceToSide (renderer : access tguiRenderer; distance : tguiFloat);

   function getDistanceToSide (renderer : access tguiRenderer) return tguiFloat;

   procedure setPaddingBetweenButtons (renderer : access tguiRenderer; padding : tguiFloat);

   function getPaddingBetweenButtons (renderer : access tguiRenderer) return tguiFloat;

   procedure setMinimumResizableBorderWidth
     (renderer : access tguiRenderer; minimumBorderWidth : tguiFloat);

   function getMinimumResizableBorderWidth (renderer : access tguiRenderer) return tguiFloat;

   procedure setShowTextOnTitleButtons (renderer : access tguiRenderer; showTitle : tguiBool);

   function getShowTextOnTitleButtons (renderer : access tguiRenderer) return tguiBool;

   procedure setTextureTitleBar (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureTitleBar (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setCloseButton
     (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getCloseButton (renderer : access constant tguiRenderer) return access tguiRendererData;

   procedure setMaximizeButton
     (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getMaximizeButton
     (renderer : access constant tguiRenderer) return access tguiRendererData;

   procedure setMinimizeButton
     (renderer : access tguiRenderer; rendererData : access tguiRendererData);

   function getMinimizeButton
     (renderer : access constant tguiRenderer) return access tguiRendererData;

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
