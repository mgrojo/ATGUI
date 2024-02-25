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

package TGUI.Renderers.KnobRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setThumbColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getThumbColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureForeground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureForeground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setImageRotation (renderer : access tguiRenderer; rotation : tguiFloat);

   function getImageRotation (renderer : access constant tguiRenderer) return tguiFloat;

private

   pragma Import (C, create, "tguiKnobRenderer_create");
   pragma Import (C, copy, "tguiKnobRenderer_copy");
   pragma Import (C, setBorders, "tguiKnobRenderer_setBorders");
   pragma Import (C, getBorders, "tguiKnobRenderer_getBorders");
   pragma Import (C, setBackgroundColor, "tguiKnobRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiKnobRenderer_getBackgroundColor");
   pragma Import (C, setThumbColor, "tguiKnobRenderer_setThumbColor");
   pragma Import (C, getThumbColor, "tguiKnobRenderer_getThumbColor");
   pragma Import (C, setBorderColor, "tguiKnobRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiKnobRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiKnobRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiKnobRenderer_getTextureBackground");
   pragma Import (C, setTextureForeground, "tguiKnobRenderer_setTextureForeground");
   pragma Import (C, getTextureForeground, "tguiKnobRenderer_getTextureForeground");
   pragma Import (C, setImageRotation, "tguiKnobRenderer_setImageRotation");
   pragma Import (C, getImageRotation, "tguiKnobRenderer_getImageRotation");

end TGUI.Renderers.KnobRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
