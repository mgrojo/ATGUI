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

package TGUI.Renderers.WidgetRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (other : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure free (renderer : tguiRenderer_Ptr);

   procedure setOpacity (renderer : tguiRenderer_Ptr; alpha : tguiFloat);

   function getOpacity (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setOpacityDisabled (renderer : tguiRenderer_Ptr; alpha : tguiFloat);

   function getOpacityDisabled (renderer : tguiRenderer_Cons) return tguiFloat;

   procedure setFont (renderer : tguiRenderer_Ptr; font : tguiFont_Ptr);

   function getFont (renderer : tguiRenderer_Cons) return tguiFont_Ptr;

   procedure setTransparentTexture (renderer : tguiRenderer_Ptr; ignoreTransparentParts : tguiBool);

   function getTransparentTexture (renderer : tguiRenderer_Ptr) return tguiBool;

   procedure setData (renderer : tguiRenderer_Ptr; data : tguiRendererData_Ptr);

   function getData (renderer : tguiRenderer_Cons) return tguiRendererData_Ptr;

private

   pragma Import (C, create, "tguiWidgetRenderer_create");
   pragma Import (C, copy, "tguiWidgetRenderer_copy");
   pragma Import (C, free, "tguiWidgetRenderer_free");
   pragma Import (C, setOpacity, "tguiWidgetRenderer_setOpacity");
   pragma Import (C, getOpacity, "tguiWidgetRenderer_getOpacity");
   pragma Import (C, setOpacityDisabled, "tguiWidgetRenderer_setOpacityDisabled");
   pragma Import (C, getOpacityDisabled, "tguiWidgetRenderer_getOpacityDisabled");
   pragma Import (C, setFont, "tguiWidgetRenderer_setFont");
   pragma Import (C, getFont, "tguiWidgetRenderer_getFont");
   pragma Import (C, setTransparentTexture, "tguiWidgetRenderer_setTransparentTexture");
   pragma Import (C, getTransparentTexture, "tguiWidgetRenderer_getTransparentTexture");
   pragma Import (C, setData, "tguiWidgetRenderer_setData");
   pragma Import (C, getData, "tguiWidgetRenderer_getData");

end TGUI.Renderers.WidgetRenderer;
