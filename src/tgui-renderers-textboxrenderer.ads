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

package TGUI.Renderers.TextBoxRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (renderer : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setBorders (renderer : tguiRenderer_Ptr; borders : tguiOutline_Ptr);

   function getBorders (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setPadding (renderer : tguiRenderer_Ptr; padding : tguiOutline_Ptr);

   function getPadding (renderer : tguiRenderer_Cons) return tguiOutline_Ptr;

   procedure setBackgroundColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBackgroundColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setDefaultTextColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getDefaultTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setSelectedTextBackgroundColor
     (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getSelectedTextBackgroundColor
     (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setCaretColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getCaretColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setCaretWidth (renderer : tguiRenderer_Cons; width : tguiFloat);

   function getCaretWidth (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiTextBoxRenderer_create");
   pragma Import (C, copy, "tguiTextBoxRenderer_copy");
   pragma Import (C, setBorders, "tguiTextBoxRenderer_setBorders");
   pragma Import (C, getBorders, "tguiTextBoxRenderer_getBorders");
   pragma Import (C, setPadding, "tguiTextBoxRenderer_setPadding");
   pragma Import (C, getPadding, "tguiTextBoxRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiTextBoxRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiTextBoxRenderer_getBackgroundColor");
   pragma Import (C, setTextColor, "tguiTextBoxRenderer_setTextColor");
   pragma Import (C, getTextColor, "tguiTextBoxRenderer_getTextColor");
   pragma Import (C, setDefaultTextColor, "tguiTextBoxRenderer_setDefaultTextColor");
   pragma Import (C, getDefaultTextColor, "tguiTextBoxRenderer_getDefaultTextColor");
   pragma Import (C, setSelectedTextColor, "tguiTextBoxRenderer_setSelectedTextColor");
   pragma Import (C, getSelectedTextColor, "tguiTextBoxRenderer_getSelectedTextColor");
   pragma Import
     (C, setSelectedTextBackgroundColor, "tguiTextBoxRenderer_setSelectedTextBackgroundColor");
   pragma Import
     (C, getSelectedTextBackgroundColor, "tguiTextBoxRenderer_getSelectedTextBackgroundColor");
   pragma Import (C, setBorderColor, "tguiTextBoxRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiTextBoxRenderer_getBorderColor");
   pragma Import (C, setCaretColor, "tguiTextBoxRenderer_setCaretColor");
   pragma Import (C, getCaretColor, "tguiTextBoxRenderer_getCaretColor");
   pragma Import (C, setTextureBackground, "tguiTextBoxRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiTextBoxRenderer_getTextureBackground");
   pragma Import (C, setCaretWidth, "tguiTextBoxRenderer_setCaretWidth");
   pragma Import (C, getCaretWidth, "tguiTextBoxRenderer_getCaretWidth");
   pragma Import (C, setScrollbar, "tguiTextBoxRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiTextBoxRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiTextBoxRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiTextBoxRenderer_getScrollbarWidth");

end TGUI.Renderers.TextBoxRenderer;
