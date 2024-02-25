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
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

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

   procedure setArrowBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColorHover
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

   procedure setTextureArrowUp (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowUp (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrowUpHover (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowUpHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrowDown (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowDown (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureArrowDownHover
     (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureArrowDownHover
     (renderer : access constant tguiRenderer) return access tguiTexture;

private

   pragma Import (C, create, "tguiScrollbarRenderer_create");
   pragma Import (C, copy, "tguiScrollbarRenderer_copy");
   pragma Import (C, setTrackColor, "tguiScrollbarRenderer_setTrackColor");
   pragma Import (C, getTrackColor, "tguiScrollbarRenderer_getTrackColor");
   pragma Import (C, setTrackColorHover, "tguiScrollbarRenderer_setTrackColorHover");
   pragma Import (C, getTrackColorHover, "tguiScrollbarRenderer_getTrackColorHover");
   pragma Import (C, setThumbColor, "tguiScrollbarRenderer_setThumbColor");
   pragma Import (C, getThumbColor, "tguiScrollbarRenderer_getThumbColor");
   pragma Import (C, setThumbColorHover, "tguiScrollbarRenderer_setThumbColorHover");
   pragma Import (C, getThumbColorHover, "tguiScrollbarRenderer_getThumbColorHover");
   pragma Import (C, setArrowBackgroundColor, "tguiScrollbarRenderer_setArrowBackgroundColor");
   pragma Import (C, getArrowBackgroundColor, "tguiScrollbarRenderer_getArrowBackgroundColor");
   pragma Import
     (C, setArrowBackgroundColorHover, "tguiScrollbarRenderer_setArrowBackgroundColorHover");
   pragma Import
     (C, getArrowBackgroundColorHover, "tguiScrollbarRenderer_getArrowBackgroundColorHover");
   pragma Import (C, setArrowColor, "tguiScrollbarRenderer_setArrowColor");
   pragma Import (C, getArrowColor, "tguiScrollbarRenderer_getArrowColor");
   pragma Import (C, setArrowColorHover, "tguiScrollbarRenderer_setArrowColorHover");
   pragma Import (C, getArrowColorHover, "tguiScrollbarRenderer_getArrowColorHover");
   pragma Import (C, setTextureTrack, "tguiScrollbarRenderer_setTextureTrack");
   pragma Import (C, getTextureTrack, "tguiScrollbarRenderer_getTextureTrack");
   pragma Import (C, setTextureTrackHover, "tguiScrollbarRenderer_setTextureTrackHover");
   pragma Import (C, getTextureTrackHover, "tguiScrollbarRenderer_getTextureTrackHover");
   pragma Import (C, setTextureThumb, "tguiScrollbarRenderer_setTextureThumb");
   pragma Import (C, getTextureThumb, "tguiScrollbarRenderer_getTextureThumb");
   pragma Import (C, setTextureThumbHover, "tguiScrollbarRenderer_setTextureThumbHover");
   pragma Import (C, getTextureThumbHover, "tguiScrollbarRenderer_getTextureThumbHover");
   pragma Import (C, setTextureArrowUp, "tguiScrollbarRenderer_setTextureArrowUp");
   pragma Import (C, getTextureArrowUp, "tguiScrollbarRenderer_getTextureArrowUp");
   pragma Import (C, setTextureArrowUpHover, "tguiScrollbarRenderer_setTextureArrowUpHover");
   pragma Import (C, getTextureArrowUpHover, "tguiScrollbarRenderer_getTextureArrowUpHover");
   pragma Import (C, setTextureArrowDown, "tguiScrollbarRenderer_setTextureArrowDown");
   pragma Import (C, getTextureArrowDown, "tguiScrollbarRenderer_getTextureArrowDown");
   pragma Import (C, setTextureArrowDownHover, "tguiScrollbarRenderer_setTextureArrowDownHover");
   pragma Import (C, getTextureArrowDownHover, "tguiScrollbarRenderer_getTextureArrowDownHover");

end TGUI.Renderers.ScrollbarRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
