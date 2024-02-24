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



package TGUI.Widgets.Knob is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_create";

   procedure setStartRotation (widget : access tguiWidget; startRotation : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setStartRotation";

   function getStartRotation (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getStartRotation";

   procedure setEndRotation (widget : access tguiWidget; startRotation : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setEndRotation";

   function getEndRotation (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getEndRotation";

   procedure setMinimum (widget : access tguiWidget; minimum : tguiInt)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setMinimum";

   function getMinimum (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getMinimum";

   procedure setMaximum (widget : access tguiWidget; maximum : tguiInt)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setMaximum";

   function getMaximum (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getMaximum";

   procedure setValue (widget : access tguiWidget; value : tguiInt)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setValue";

   function getValue (widget : access constant tguiWidget) return tguiInt
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getValue";

   procedure setClockwiseTurning (widget : access tguiWidget; clockwise : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_setClockwiseTurning";

   function getClockwiseTurning (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiKnob_getClockwiseTurning";

private



end TGUI.Widgets.Knob;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
