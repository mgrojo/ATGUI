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

package TGUI.Renderers.ChatBoxRenderer is

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

   procedure setBorderColor (renderer : tguiRenderer_Ptr; color : access TGUI.Color.tguiColor);

   function getBorderColor (renderer : tguiRenderer_Cons) return access TGUI.Color.tguiColor;

   procedure setTextureBackground (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTextureBackground (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

   procedure setScrollbar (renderer : tguiRenderer_Ptr; rendererData : tguiRendererData_Ptr);

   function getScrollbar (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

   procedure setScrollbarWidth (renderer : tguiRenderer_Ptr; width : tguiFloat);

   function getScrollbarWidth (renderer : tguiRenderer_Cons) return tguiFloat;

private

   pragma Import (C, create, "tguiChatBoxRenderer_create");
   pragma Import (C, copy, "tguiChatBoxRenderer_copy");
   pragma Import (C, setBorders, "tguiChatBoxRenderer_setBorders");
   pragma Import (C, getBorders, "tguiChatBoxRenderer_getBorders");
   pragma Import (C, setPadding, "tguiChatBoxRenderer_setPadding");
   pragma Import (C, getPadding, "tguiChatBoxRenderer_getPadding");
   pragma Import (C, setBackgroundColor, "tguiChatBoxRenderer_setBackgroundColor");
   pragma Import (C, getBackgroundColor, "tguiChatBoxRenderer_getBackgroundColor");
   pragma Import (C, setBorderColor, "tguiChatBoxRenderer_setBorderColor");
   pragma Import (C, getBorderColor, "tguiChatBoxRenderer_getBorderColor");
   pragma Import (C, setTextureBackground, "tguiChatBoxRenderer_setTextureBackground");
   pragma Import (C, getTextureBackground, "tguiChatBoxRenderer_getTextureBackground");
   pragma Import (C, setScrollbar, "tguiChatBoxRenderer_setScrollbar");
   pragma Import (C, getScrollbar, "tguiChatBoxRenderer_getScrollbar");
   pragma Import (C, setScrollbarWidth, "tguiChatBoxRenderer_setScrollbarWidth");
   pragma Import (C, getScrollbarWidth, "tguiChatBoxRenderer_getScrollbarWidth");

end TGUI.Renderers.ChatBoxRenderer;
