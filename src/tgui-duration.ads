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



package TGUI.Duration is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   type tguiDuration is record
      nanoseconds : aliased tguiInt64;
   end record
   with Convention => C_Pass_By_Copy;

   ----------------------------------------------------------------------------
   tguiDuration_Zero : aliased tguiDuration
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_Zero";

   function fromSeconds (amount : tguiFloat) return tguiDuration
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_fromSeconds";

   function fromMilliseconds (amount : tguiInt32) return tguiDuration
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_fromMilliseconds";

   function fromMicroseconds (amount : tguiInt64) return tguiDuration
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_fromMicroseconds";

   function fromNanoseconds (amount : tguiInt64) return tguiDuration
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_fromNanoseconds";

   function asSeconds (duration : tguiDuration) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_asSeconds";

   function asMilliseconds (duration : tguiDuration) return tguiInt32
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_asMilliseconds";

   function asMicroseconds (duration : tguiDuration) return tguiInt64
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_asMicroseconds";

   function asNanoseconds (duration : tguiDuration) return tguiInt64
   with Import => True,
        Convention => C,
        External_Name => "tguiDuration_asNanoseconds";

   ----------------------------------------------------------------------------
private



end TGUI.Duration;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
