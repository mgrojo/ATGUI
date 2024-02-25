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
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setTrackColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTrackColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTrackColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTrackColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setThumbColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getThumbColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setThumbColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getThumbColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureTrack (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureTrack (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureTrackHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureTrackHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureThumb (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureThumb (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureThumbHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureThumbHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

private

   pragma Import (C, create, "tguiSliderRenderer_create");
   pragma Import (C, copy, "tguiSliderRenderer_copy");
   pragma Import (C, setBorders, "tguiSliderRenderer_setBorders");
   pragma Import (C, getBorders, "tguiSliderRenderer_getBorders");
   pragma Import (C, setTrackColor, "tguiSliderRenderer_setTrackColor");
   pragma Import (C, getTrackColor, "tguiSliderRenderer_getTrackColor");
   pragma Import (C, setTrackColorHover, "tguiSliderRenderer_setTrackColorHover");
   pragma Import (C, getTrackColorHover, "tguiSliderRenderer_getTrackColorHover");
   pragma Import (C, setThumbColor, "tguiSliderRenderer_setThumbColor");
   pragma Import (C, getThumbColor, "tguiSliderRenderer_getThumbColor");
   pragma Import (C, setThumbColorHover, "tguiSliderRenderer_setThumbColorHover");
   pragma Import (C, getThumbColorHover, "tguiSliderRenderer_getThumbColorHover");
   pragma Import (C, setBorderColor, "tguiSliderRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiSliderRenderer_getBorderColor");
   pragma Import (C, setBorderColorHover, "tguiSliderRenderer_setBorderColorHover");
   pragma Import (C, getBorderColorHover, "tguiSliderRenderer_getBorderColorHover");
   pragma Import (C, setTextureTrack, "tguiSliderRenderer_setTextureTrack");
   pragma Import (C, getTextureTrack, "tguiSliderRenderer_getTextureTrack");
   pragma Import (C, setTextureTrackHover, "tguiSliderRenderer_setTextureTrackHover");
   pragma Import (C, getTextureTrackHover, "tguiSliderRenderer_getTextureTrackHover");
   pragma Import (C, setTextureThumb, "tguiSliderRenderer_setTextureThumb");
   pragma Import (C, getTextureThumb, "tguiSliderRenderer_getTextureThumb");
   pragma Import (C, setTextureThumbHover, "tguiSliderRenderer_setTextureThumbHover");
   pragma Import (C, getTextureThumbHover, "tguiSliderRenderer_getTextureThumbHover");

end TGUI.Renderers.SliderRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
