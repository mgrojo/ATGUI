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

package TGUI.Renderers.ProgressBarRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (other : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColorFilled (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColorFilled (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setFillColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getFillColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextureFill (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureFill (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setTextStyle (renderer : tguiRenderer_Ptr; style : tguiUint32);

   function getTextStyle (renderer : tguiRenderer_Ptr) return tguiUint32;

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
