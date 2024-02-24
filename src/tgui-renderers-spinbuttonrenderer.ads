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

package TGUI.Renderers.SpinButtonRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getBorders";

   procedure setBorderBetweenArrows (renderer : access tguiRenderer; border : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setBorderBetweenArrows";

   function getBorderBetweenArrows (renderer : access constant tguiRenderer) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getBorderBetweenArrows";

   procedure setBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setBackgroundColor";

   function getBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getBackgroundColor";

   procedure setBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setBackgroundColorHover";

   function getBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getBackgroundColorHover";

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setArrowColor";

   function getArrowColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getArrowColor";

   procedure setArrowColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setArrowColorHover";

   function getArrowColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getArrowColorHover";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getBorderColor";

   procedure setTextureArrowUp (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setTextureArrowUp";

   function getTextureArrowUp (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getTextureArrowUp";

   procedure setTextureArrowUpHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setTextureArrowUpHover";

   function getTextureArrowUpHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getTextureArrowUpHover";

   procedure setTextureArrowDown (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setTextureArrowDown";

   function getTextureArrowDown (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getTextureArrowDown";

   procedure setTextureArrowDownHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_setTextureArrowDownHover";

   function getTextureArrowDownHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSpinButtonRenderer_getTextureArrowDownHover";

private



end TGUI.Renderers.SpinButtonRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
