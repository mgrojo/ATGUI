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

package TGUI.Renderers.ProgressBarRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setTextColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextColorFilled
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getTextColorFilled
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setFillColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getFillColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureBackground
     (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextureFill (renderer : access tguiRenderer; texture : access tguiTexture);

   function getTextureFill (renderer : access constant tguiRenderer) return access tguiTexture;

   procedure setTextStyle (renderer : access tguiRenderer; style : tguiUint32);

   function getTextStyle (renderer : access tguiRenderer) return tguiUint32;

private

   pragma Import (C, create, "tguiProgressBarRenderer_create");
   pragma Import (C, copy, "tguiProgressBarRenderer_copy");
   pragma Import (C, setBorders, "tguiProgressBarRenderer_setBorders");
   pragma Import (C, getBorders, "tguiProgressBarRenderer_getBorders");
   pragma Import (C, setTextColor, "tguiProgressBarRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiProgressBarRenderer_getTextColor");
   pragma Import (C, setTextColorFilled, "tguiProgressBarRenderer_setTextColorFilled");
   pragma Import (C, getTextColorFilled, "tguiProgressBarRenderer_getTextColorFilled");
   pragma Import (C, setBackgroundColor, "tguiProgressBarRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiProgressBarRenderer_getBackgroundColor");
   pragma Import (C, setFillColor, "tguiProgressBarRenderer_setFillColor");
   pragma Import (C, getFillColor, "tguiProgressBarRenderer_getFillColor");
   pragma Import (C, setBorderColor, "tguiProgressBarRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiProgressBarRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiProgressBarRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiProgressBarRenderer_getTextureBackground");
   pragma Import (C, setTextureFill, "tguiProgressBarRenderer_setTextureFill");
   pragma Import (C, getTextureFill, "tguiProgressBarRenderer_getTextureFill");
   pragma Import (C, setTextStyle, "tguiProgressBarRenderer_setTextStyle");
   pragma Import (C, getTextStyle, "tguiProgressBarRenderer_getTextStyle");

end TGUI.Renderers.ProgressBarRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
