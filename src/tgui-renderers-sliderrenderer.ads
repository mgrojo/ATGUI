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

package TGUI.Renderers.SliderRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_copy";

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setBorders";

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getBorders";

   procedure setTrackColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTrackColor";

   function getTrackColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTrackColor";

   procedure setTrackColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTrackColorHover";

   function getTrackColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTrackColorHover";

   procedure setThumbColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setThumbColor";

   function getThumbColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getThumbColor";

   procedure setThumbColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setThumbColorHover";

   function getThumbColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getThumbColorHover";

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setBorderColor";

   function getBorderColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getBorderColor";

   procedure setBorderColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setBorderColorHover";

   function getBorderColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getBorderColorHover";

   procedure setTextureTrack (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTextureTrack";

   function getTextureTrack (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTextureTrack";

   procedure setTextureTrackHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTextureTrackHover";

   function getTextureTrackHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTextureTrackHover";

   procedure setTextureThumb (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTextureThumb";

   function getTextureThumb (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTextureThumb";

   procedure setTextureThumbHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_setTextureThumbHover";

   function getTextureThumbHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiSliderRenderer_getTextureThumbHover";

private



end TGUI.Renderers.SliderRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
