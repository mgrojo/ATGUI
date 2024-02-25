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
   end record with
     Convention => C_Pass_By_Copy;

   ----------------------------------------------------------------------------
   tguiDuration_Zero : aliased tguiDuration;

   function fromSeconds (amount : tguiFloat) return tguiDuration;

   function fromMilliseconds (amount : tguiInt32) return tguiDuration;

   function fromMicroseconds (amount : tguiInt64) return tguiDuration;

   function fromNanoseconds (amount : tguiInt64) return tguiDuration;

   function asSeconds (duration : tguiDuration) return tguiFloat;

   function asMilliseconds (duration : tguiDuration) return tguiInt32;

   function asMicroseconds (duration : tguiDuration) return tguiInt64;

   function asNanoseconds (duration : tguiDuration) return tguiInt64;

   ----------------------------------------------------------------------------
private

   pragma Import (C, tguiDuration_Zero, "tguiDuration_Zero");
   pragma Import (C, fromSeconds, "tguiDuration_fromSeconds");
   pragma Import (C, fromMilliseconds, "tguiDuration_fromMilliseconds");
   pragma Import (C, fromMicroseconds, "tguiDuration_fromMicroseconds");
   pragma Import (C, fromNanoseconds, "tguiDuration_fromNanoseconds");
   pragma Import (C, asSeconds, "tguiDuration_asSeconds");
   pragma Import (C, asMilliseconds, "tguiDuration_asMilliseconds");
   pragma Import (C, asMicroseconds, "tguiDuration_asMicroseconds");
   pragma Import (C, asNanoseconds, "tguiDuration_asNanoseconds");

end TGUI.Duration;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
