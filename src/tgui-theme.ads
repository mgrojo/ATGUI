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




package TGUI.Theme is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiTheme
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_create";

   function copy (theme : access constant tguiTheme) return access tguiTheme
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_copy";

   procedure free (theme : access tguiTheme)
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_free";

   function load (theme : access tguiTheme; filename : String) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_load";

   function getRenderer (theme : access tguiTheme; id : String) return access tguiRendererData
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_getRenderer";

   procedure addRenderer
     (theme : access tguiTheme;
      id : String;
      renderer : access tguiRendererData)
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_addRenderer";

   function removeRenderer (theme : access tguiTheme; id : String) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_removeRenderer";

   function getPrimary (theme : access constant tguiTheme) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_getPrimary";

   procedure setDefault (defaultTheme : access tguiTheme)
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_setDefault";

   function getDefault return access tguiTheme
   with Import => True,
        Convention => C,
        External_Name => "tguiTheme_getDefault";

private



end TGUI.Theme;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
