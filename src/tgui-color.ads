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




package TGUI.Color is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   type tguiColor is record
      r : aliased tguiUint8;
      g : aliased tguiUint8;
      b : aliased tguiUint8;
      a : aliased tguiUint8;
   end record
   with Convention => C_Pass_By_Copy;

  ----------------------------------------------------------------------------
  --/< Black predefined color
   tguiColorBlack : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorBlack";

   --/< White predefined color
   tguiColorWhite : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorWhite";

   --/< Red predefined color
   tguiColorRed : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorRed";

   --/< Green predefined color
   tguiColorGreen : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorGreen";

   --/< Blue predefined color
   tguiColorBlue : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorBlue";

   --/< Yellow predefined color
   tguiColorYellow : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorYellow";

   --/< Magenta predefined color
   tguiColorMagenta : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorMagenta";

   --/< Cyan predefined color
   tguiColorCyan : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorCyan";

   --/< Transparent (black) predefined color
   tguiColorTransparent : aliased tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColorTransparent";

   ----------------------------------------------------------------------------
   function fromRGB
     (red : tguiUint8;
      green : tguiUint8;
      blue : tguiUint8) return tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColor_fromRGB";

   function fromRGBA
     (red : tguiUint8;
      green : tguiUint8;
      blue : tguiUint8;
      alpha : tguiUint8) return tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColor_fromRGBA";

   function fromString (text : String) return tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiColor_fromString";

   ----------------------------------------------------------------------------
private



end TGUI.Color;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
