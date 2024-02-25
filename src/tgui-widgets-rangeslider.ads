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

package TGUI.Widgets.RangeSlider is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setMinimum (widget : access tguiWidget; minimum : tguiFloat);

   function getMinimum (widget : access constant tguiWidget) return tguiFloat;

   procedure setMaximum (widget : access tguiWidget; maximum : tguiFloat);

   function getMaximum (widget : access constant tguiWidget) return tguiFloat;

   procedure setSelectionStart (widget : access tguiWidget; value : tguiFloat);

   function getSelectionStart (widget : access constant tguiWidget) return tguiFloat;

   procedure setSelectionEnd (widget : access tguiWidget; value : tguiFloat);

   function getSelectionEnd (widget : access constant tguiWidget) return tguiFloat;

   procedure setStep (widget : access tguiWidget; step : tguiFloat);

   function getStep (widget : access constant tguiWidget) return tguiFloat;

private

   pragma Import (C, create, "tguiRangeSlider_create");
   pragma Import (C, setMinimum, "tguiRangeSlider_setMinimum");
   pragma Import (C, getMinimum, "tguiRangeSlider_getMinimum");
   pragma Import (C, setMaximum, "tguiRangeSlider_setMaximum");
   pragma Import (C, getMaximum, "tguiRangeSlider_getMaximum");
   pragma Import (C, setSelectionStart, "tguiRangeSlider_setSelectionStart");
   pragma Import (C, getSelectionStart, "tguiRangeSlider_getSelectionStart");
   pragma Import (C, setSelectionEnd, "tguiRangeSlider_setSelectionEnd");
   pragma Import (C, getSelectionEnd, "tguiRangeSlider_getSelectionEnd");
   pragma Import (C, setStep, "tguiRangeSlider_setStep");
   pragma Import (C, getStep, "tguiRangeSlider_getStep");

end TGUI.Widgets.RangeSlider;
