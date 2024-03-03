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
   function create return tguiTheme_Ptr;

   function copy (theme : tguiTheme_Cons) return tguiTheme_Ptr;

   procedure free (theme : tguiTheme_Ptr);

   function load (theme : tguiTheme_Ptr; filename : String) return tguiBool;

   function getRenderer (theme : tguiTheme_Ptr; id : String) return tguiRendererData_Ptr;

   procedure addRenderer (theme : tguiTheme_Ptr; id : String; renderer : tguiRendererData_Ptr);

   function removeRenderer (theme : tguiTheme_Ptr; id : String) return tguiBool;

   function getPrimary (theme : tguiTheme_Cons) return tguiUtf32;

   procedure setDefault (defaultTheme : tguiTheme_Ptr);

   function getDefault return tguiTheme_Ptr;

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
