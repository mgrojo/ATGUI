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

package TGUI.Vector2 is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   type tguiVector2i is record
      x : aliased tguiInt;
      y : aliased tguiInt;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiVector2u is record
      x : aliased tguiUint32;
      y : aliased tguiUint32;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiVector2f is record
      x : aliased tguiFloat;
      y : aliased tguiFloat;
   end record with
     Convention => C_Pass_By_Copy;

   ----------------------------------------------------------------------------
   --/< Predefined Vector2i with value (0,0)
   tguiVector2i_Null : aliased tguiVector2i;

   --/< Predefined Vector2u with value (0,0)
   tguiVector2u_Null : aliased tguiVector2u;

   --/< Predefined Vector2f with value (0,0)
   tguiVector2f_Null : aliased tguiVector2f;

   ----------------------------------------------------------------------------
private

   pragma Import (C, tguiVector2i_Null, "tguiVector2i_Null");
   pragma Import (C, tguiVector2u_Null, "tguiVector2u_Null");
   pragma Import (C, tguiVector2f_Null, "tguiVector2f_Null");

end TGUI.Vector2;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
