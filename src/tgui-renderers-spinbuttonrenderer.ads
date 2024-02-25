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

package TGUI.Renderers.SpinButtonRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (renderer : access constant tguiRenderer) return access tguiRenderer;

   procedure setBorders (renderer : access tguiRenderer; borders : access tguiOutline);

   function getBorders (renderer : access constant tguiRenderer) return access tguiOutline;

   procedure setBorderBetweenArrows (renderer : access tguiRenderer; border : tguiFloat);

   function getBorderBetweenArrows (renderer : access constant tguiRenderer) return tguiFloat;

   procedure setBackgroundColor
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBackgroundColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBackgroundColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setArrowColorHover
     (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getArrowColorHover
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : access tguiRenderer; color : access TGUI.Color.tguiColor);

   function getBorderColor
     (renderer : access constant tguiRenderer) return access TGUI.Color.tguiColor;

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

   pragma Import (C, create, "tguiSpinButtonRenderer_create");
   pragma Import (C, copy, "tguiSpinButtonRenderer_copy");
   pragma Import (C, setBorders, "tguiSpinButtonRenderer_setBorders");
   pragma Import (C, getBorders, "tguiSpinButtonRenderer_getBorders");
   pragma Import (C, setBorderBetweenArrows, "tguiSpinButtonRenderer_setBorderBetweenArrows");
   pragma Import (C, getBorderBetweenArrows, "tguiSpinButtonRenderer_getBorderBetweenArrows");
   pragma Import (C, setBackgroundColor, "tguiSpinButtonRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiSpinButtonRenderer_getBackgroundColor");
   pragma Import (C, setBackgroundColorHover, "tguiSpinButtonRenderer_setBackgroundColorHover");
   pragma Import (C, getBackgroundColorHover, "tguiSpinButtonRenderer_getBackgroundColorHover");
   pragma Import (C, setArrowColor, "tguiSpinButtonRenderer_setArrowColor");
   pragma Import (C, getArrowColor, "tguiSpinButtonRenderer_getArrowColor");
   pragma Import (C, setArrowColorHover, "tguiSpinButtonRenderer_setArrowColorHover");
   pragma Import (C, getArrowColorHover, "tguiSpinButtonRenderer_getArrowColorHover");
   pragma Import (C, setBorderColor, "tguiSpinButtonRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiSpinButtonRenderer_getBorderColor");
   pragma Import (C, setTextureArrowUp, "tguiSpinButtonRenderer_setTextureArrowUp");
   pragma Import (C, getTextureArrowUp, "tguiSpinButtonRenderer_getTextureArrowUp");
   pragma Import (C, setTextureArrowUpHover, "tguiSpinButtonRenderer_setTextureArrowUpHover");
   pragma Import (C, getTextureArrowUpHover, "tguiSpinButtonRenderer_getTextureArrowUpHover");
   pragma Import (C, setTextureArrowDown, "tguiSpinButtonRenderer_setTextureArrowDown");
   pragma Import (C, getTextureArrowDown, "tguiSpinButtonRenderer_getTextureArrowDown");
   pragma Import (C, setTextureArrowDownHover, "tguiSpinButtonRenderer_setTextureArrowDownHover");
   pragma Import (C, getTextureArrowDownHover, "tguiSpinButtonRenderer_getTextureArrowDownHover");

end TGUI.Renderers.SpinButtonRenderer;
