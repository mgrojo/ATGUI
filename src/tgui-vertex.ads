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

with TGUI.Vector2;
with TGUI.Color;

package TGUI.Vertex is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   type tguiVertex is record
      position : aliased TGUI.Vector2.tguiVector2f;
      color : aliased TGUI.Color.tguiColor;
      texCoords : aliased TGUI.Vector2.tguiVector2f;
   end record
   with Convention => C_Pass_By_Copy;

private



end TGUI.Vertex;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
