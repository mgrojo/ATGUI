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

package TGUI.Renderers.PanelRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

private

   pragma Import (C, create, "tguiPanelRenderer_create");
   pragma Import (C, copy, "tguiPanelRenderer_copy");
   pragma Import (C, setBorders, "tguiPanelRenderer_setBorders");
   pragma Import (C, getBorders, "tguiPanelRenderer_getBorders");
   pragma Import (C, setBackgroundColor, "tguiPanelRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiPanelRenderer_getBackgroundColor");
   pragma Import (C, setBorderColor, "tguiPanelRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiPanelRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiPanelRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiPanelRenderer_getTextureBackground");

end TGUI.Renderers.PanelRenderer;
