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

package TGUI.Renderers.MenuBarRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorDisabled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorDisabled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureItemBackground
     (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureItemBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureSelectedItemBackground
     (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureSelectedItemBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setDistanceToSide (renderer : access tguiRenderer; distanceToSide : tguiFloat);

   function getDistanceToSide (renderer : access constant tguiRenderer) return tguiFloat;

private

   pragma Import (C, create, "tguiMenuBarRenderer_create");
   pragma Import (C, copy, "tguiMenuBarRenderer_copy");
   pragma Import (C, setBackgroundColor, "tguiMenuBarRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiMenuBarRenderer_getBackgroundColor");
   pragma Import (C, setSelectedBackgroundColor, "tguiMenuBarRenderer_setSelectedBackgroundColor");
   pragma Import (C, getSelectedBackgroundColor, "tguiMenuBarRenderer_getSelectedBackgroundColor");
   pragma Import (C, setTextColor, "tguiMenuBarRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiMenuBarRenderer_getTextColor");
   pragma Import (C, setSelectedTextColor, "tguiMenuBarRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiMenuBarRenderer_getSelectedTextColor");
   pragma Import (C, setTextColorDisabled, "tguiMenuBarRenderer_setTextColorDisabled");
   pragma Import (C, getTextColorDisabled, "tguiMenuBarRenderer_getTextColorDisabled");
   pragma Import (C, setTextureBackground, "tguiMenuBarRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiMenuBarRenderer_getTextureBackground");
   pragma Import (C, setTextureItemBackground, "tguiMenuBarRenderer_setTextureItemBackground");
   pragma Import (C, getTextureItemBackground, "tguiMenuBarRenderer_getTextureItemBackground");
   pragma Import
     (C, setTextureSelectedItemBackground, "tguiMenuBarRenderer_setTextureSelectedItemBackground");
   pragma Import
     (C, getTextureSelectedItemBackground, "tguiMenuBarRenderer_getTextureSelectedItemBackground");
   pragma Import (C, setDistanceToSide, "tguiMenuBarRenderer_setDistanceToSide");
   pragma Import (C, getDistanceToSide, "tguiMenuBarRenderer_getDistanceToSide");

end TGUI.Renderers.MenuBarRenderer;
