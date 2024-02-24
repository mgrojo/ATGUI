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

package TGUI.Renderers.ChildWindowRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_create";

   function copy (other : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getBorders";

   procedure setTitleBarColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setTitleBarColor";

   function getTitleBarColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getTitleBarColor";

   procedure setTitleColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setTitleColor";

   function getTitleColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getTitleColor";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getBackgroundColor";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getBorderColor";

   procedure setBorderColorFocused (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setBorderColorFocused";

   function getBorderColorFocused (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getBorderColorFocused";

   procedure setBorderBelowTitleBar (renderer : access tguiRenderer; border : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setBorderBelowTitleBar";

   function getBorderBelowTitleBar (renderer : access tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getBorderBelowTitleBar";

   procedure setTitleBarHeight (renderer : access tguiRenderer; height : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setTitleBarHeight";

   function getTitleBarHeight (renderer : access tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getTitleBarHeight";

   procedure setDistanceToSide (renderer : access tguiRenderer; distance : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setDistanceToSide";

   function getDistanceToSide (renderer : access tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getDistanceToSide";

   procedure setPaddingBetweenButtons (renderer : access tguiRenderer; padding : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setPaddingBetweenButtons";

   function getPaddingBetweenButtons (renderer : access tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getPaddingBetweenButtons";

   procedure setMinimumResizableBorderWidth (renderer : access tguiRenderer; minimumBorderWidth : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setMinimumResizableBorderWidth";

   function getMinimumResizableBorderWidth (renderer : access tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getMinimumResizableBorderWidth";

   procedure setShowTextOnTitleButtons (renderer : access tguiRenderer; showTitle : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setShowTextOnTitleButtons";

   function getShowTextOnTitleButtons (renderer : access tguiRenderer) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getShowTextOnTitleButtons";

   procedure setTextureTitleBar (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setTextureTitleBar";

   function getTextureTitleBar (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getTextureTitleBar";

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setTextureBackground";

   function getTextureBackground (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getTextureBackground";

   procedure setCloseButton (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setCloseButton";

   function getCloseButton (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getCloseButton";

   procedure setMaximizeButton (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setMaximizeButton";

   function getMaximizeButton (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getMaximizeButton";

   procedure setMinimizeButton (renderer : access tguiRenderer; rendererData : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_setMinimizeButton";

   function getMinimizeButton (renderer : access constant tguiRenderer) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindowRenderer_getMinimizeButton";

private



end TGUI.Renderers.ChildWindowRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
