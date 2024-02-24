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




package TGUI.Outline is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create
     (left : tguiFloat;
      top : tguiFloat;
      right : tguiFloat;
      bottom : tguiFloat) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_create";

   function createFromStrings
     (left : String;
      top : String;
      right : String;
      bottom : String) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_createFromStrings";

   function copy (other : access constant tguiOutline) return access tguiOutline
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_copy";

   procedure free (outline : access tguiOutline)
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_free";

   function getLeft (outline : access constant tguiOutline) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_getLeft";

   function getTop (outline : access constant tguiOutline) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_getTop";

   function getRight (outline : access constant tguiOutline) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_getRight";

   function getBottom (outline : access constant tguiOutline) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiOutline_getBottom";

   ----------------------------------------------------------------------------
private



end TGUI.Outline;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
