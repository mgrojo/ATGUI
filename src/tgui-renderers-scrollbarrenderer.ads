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

package TGUI.Renderers.ScrollbarRenderer is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_create";

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_copy";

   procedure setTrackColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTrackColor";

   function getTrackColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTrackColor";

   procedure setTrackColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTrackColorHover";

   function getTrackColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTrackColorHover";

   procedure setThumbColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setThumbColor";

   function getThumbColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getThumbColor";

   procedure setThumbColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setThumbColorHover";

   function getThumbColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getThumbColorHover";

   procedure setArrowBackgroundColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setArrowBackgroundColor";

   function getArrowBackgroundColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getArrowBackgroundColor";

   procedure setArrowBackgroundColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setArrowBackgroundColorHover";

   function getArrowBackgroundColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getArrowBackgroundColorHover";

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setArrowColor";

   function getArrowColor (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getArrowColor";

   procedure setArrowColorHover (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setArrowColorHover";

   function getArrowColorHover (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getArrowColorHover";

   procedure setTextureTrack (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureTrack";

   function getTextureTrack (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureTrack";

   procedure setTextureTrackHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureTrackHover";

   function getTextureTrackHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureTrackHover";

   procedure setTextureThumb (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureThumb";

   function getTextureThumb (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureThumb";

   procedure setTextureThumbHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureThumbHover";

   function getTextureThumbHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureThumbHover";

   procedure setTextureArrowUp (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureArrowUp";

   function getTextureArrowUp (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureArrowUp";

   procedure setTextureArrowUpHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureArrowUpHover";

   function getTextureArrowUpHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureArrowUpHover";

   procedure setTextureArrowDown (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureArrowDown";

   function getTextureArrowDown (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureArrowDown";

   procedure setTextureArrowDownHover (renderer : access tguiRenderer; texture : access tguiTexture)
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_setTextureArrowDownHover";

   function getTextureArrowDownHover (renderer : access constant tguiRenderer) return access tguiTexture
   with Import => True,
        Convention => C,
        External_Name => "tguiScrollbarRenderer_getTextureArrowDownHover";

private



end TGUI.Renderers.ScrollbarRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
