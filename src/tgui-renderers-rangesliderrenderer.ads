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

package TGUI.Renderers.RangeSliderRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setTrackColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTrackColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTrackColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTrackColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTrackColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTrackColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTrackColorHover
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTrackColorHover
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setThumbColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getThumbColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setThumbColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getThumbColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColorHover (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColorHover (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureTrack (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureTrack (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureTrackHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureTrackHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureThumb (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureThumb (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureThumbHover (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureThumbHover (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

private

   pragma Import (C, create, "tguiRangeSliderRenderer_create");
   pragma Import (C, copy, "tguiRangeSliderRenderer_copy");
   pragma Import (C, setBorders, "tguiRangeSliderRenderer_setBorders");
   pragma Import (C, getBorders, "tguiRangeSliderRenderer_getBorders");
   pragma Import (C, setTrackColor, "tguiRangeSliderRenderer_setTrackColor");
   pragma Import (C, getTrackColor, "tguiRangeSliderRenderer_getTrackColor");
   pragma Import (C, setTrackColorHover, "tguiRangeSliderRenderer_setTrackColorHover");
   pragma Import (C, getTrackColorHover, "tguiRangeSliderRenderer_getTrackColorHover");
   pragma Import (C, setSelectedTrackColor, "tguiRangeSliderRenderer_setSelectedTrackColor");
   pragma Import (C, getSelectedTrackColor, "tguiRangeSliderRenderer_getSelectedTrackColor");
   pragma Import
     (C, setSelectedTrackColorHover, "tguiRangeSliderRenderer_setSelectedTrackColorHover");
   pragma Import
     (C, getSelectedTrackColorHover, "tguiRangeSliderRenderer_getSelectedTrackColorHover");
   pragma Import (C, setThumbColor, "tguiRangeSliderRenderer_setThumbColor");
   pragma Import (C, getThumbColor, "tguiRangeSliderRenderer_getThumbColor");
   pragma Import (C, setThumbColorHover, "tguiRangeSliderRenderer_setThumbColorHover");
   pragma Import (C, getThumbColorHover, "tguiRangeSliderRenderer_getThumbColorHover");
   pragma Import (C, setBorderColor, "tguiRangeSliderRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiRangeSliderRenderer_getBorderColor");
   pragma Import (C, setBorderColorHover, "tguiRangeSliderRenderer_setBorderColorHover");
   pragma Import (C, getBorderColorHover, "tguiRangeSliderRenderer_getBorderColorHover");
   pragma Import (C, setTextureTrack, "tguiRangeSliderRenderer_setTextureTrack");
   pragma Import (C, getTextureTrack, "tguiRangeSliderRenderer_getTextureTrack");
   pragma Import (C, setTextureTrackHover, "tguiRangeSliderRenderer_setTextureTrackHover");
   pragma Import (C, getTextureTrackHover, "tguiRangeSliderRenderer_getTextureTrackHover");
   pragma Import (C, setTextureThumb, "tguiRangeSliderRenderer_setTextureThumb");
   pragma Import (C, getTextureThumb, "tguiRangeSliderRenderer_getTextureThumb");
   pragma Import (C, setTextureThumbHover, "tguiRangeSliderRenderer_setTextureThumbHover");
   pragma Import (C, getTextureThumbHover, "tguiRangeSliderRenderer_getTextureThumbHover");

end TGUI.Renderers.RangeSliderRenderer;
