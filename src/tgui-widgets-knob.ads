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
   function create return access tguiWidget;

   procedure setStartRotation (widget : access tguiWidget; startRotation : tguiFloat);

   function getStartRotation (widget : access constant tguiWidget) return tguiFloat;

   procedure setEndRotation (widget : access tguiWidget; startRotation : tguiFloat);

   function getEndRotation (widget : access constant tguiWidget) return tguiFloat;

   procedure setMinimum (widget : access tguiWidget; minimum : tguiInt);

   function getMinimum (widget : access constant tguiWidget) return tguiInt;

   procedure setMaximum (widget : access tguiWidget; maximum : tguiInt);

   function getMaximum (widget : access constant tguiWidget) return tguiInt;

   procedure setValue (widget : access tguiWidget; value : tguiInt);

   function getValue (widget : access constant tguiWidget) return tguiInt;

   procedure setClockwiseTurning (widget : access tguiWidget; clockwise : tguiBool);

   function getClockwiseTurning (widget : access constant tguiWidget) return tguiBool;

private

   pragma Import (C, create, "tguiKnob_create");
   pragma Import (C, setStartRotation, "tguiKnob_setStartRotation");
   pragma Import (C, getStartRotation, "tguiKnob_getStartRotation");
   pragma Import (C, setEndRotation, "tguiKnob_setEndRotation");
   pragma Import (C, getEndRotation, "tguiKnob_getEndRotation");
   pragma Import (C, setMinimum, "tguiKnob_setMinimum");
   pragma Import (C, getMinimum, "tguiKnob_getMinimum");
   pragma Import (C, setMaximum, "tguiKnob_setMaximum");
   pragma Import (C, getMaximum, "tguiKnob_getMaximum");
   pragma Import (C, setValue, "tguiKnob_setValue");
   pragma Import (C, getValue, "tguiKnob_getValue");
   pragma Import (C, setClockwiseTurning, "tguiKnob_setClockwiseTurning");
   pragma Import (C, getClockwiseTurning, "tguiKnob_getClockwiseTurning");

end TGUI.Widgets.Knob;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
