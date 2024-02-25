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

package TGUI.Theme is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiTheme;

   function copy (theme : access constant tguiTheme) return access tguiTheme;

   procedure free (theme : access tguiTheme);

   function load (theme : access tguiTheme; filename : String) return tguiBool;

   function getRenderer (theme : access tguiTheme; id : String) return access tguiRendererData;

   procedure addRenderer
     (theme : access tguiTheme; id : String; renderer : access tguiRendererData);

   function removeRenderer (theme : access tguiTheme; id : String) return tguiBool;

   function getPrimary (theme : access constant tguiTheme) return tguiUtf32;

   procedure setDefault (defaultTheme : access tguiTheme);

   function getDefault return access tguiTheme;

private

   pragma Import (C, create, "tguiTheme_create");
   pragma Import (C, copy, "tguiTheme_copy");
   pragma Import (C, free, "tguiTheme_free");
   pragma Import (C, load, "tguiTheme_load");
   pragma Import (C, getRenderer, "tguiTheme_getRenderer");
   pragma Import (C, addRenderer, "tguiTheme_addRenderer");
   pragma Import (C, removeRenderer, "tguiTheme_removeRenderer");
   pragma Import (C, getPrimary, "tguiTheme_getPrimary");
   pragma Import (C, setDefault, "tguiTheme_setDefault");
   pragma Import (C, getDefault, "tguiTheme_getDefault");

end TGUI.Theme;
