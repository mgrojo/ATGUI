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

package TGUI.Widgets.SpinButton is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setMinimum (widget : access tguiWidget; minimum : tguiFloat);

   function getMinimum (widget : access constant tguiWidget) return tguiFloat;

   procedure setMaximum (widget : access tguiWidget; maximum : tguiFloat);

   function getMaximum (widget : access constant tguiWidget) return tguiFloat;

   procedure setValue (widget : access tguiWidget; value : tguiFloat);

   function getValue (widget : access constant tguiWidget) return tguiFloat;

   procedure setStep (widget : access tguiWidget; step : tguiFloat);

   function getStep (widget : access constant tguiWidget) return tguiFloat;

   procedure setVerticalScroll (widget : access tguiWidget; vertical : tguiBool);

   function getVerticalScroll (widget : access constant tguiWidget) return tguiBool;

private

   pragma Import (C, create, "tguiSpinButton_create");
   pragma Import (C, setMinimum, "tguiSpinButton_setMinimum");
   pragma Import (C, getMinimum, "tguiSpinButton_getMinimum");
   pragma Import (C, setMaximum, "tguiSpinButton_setMaximum");
   pragma Import (C, getMaximum, "tguiSpinButton_getMaximum");
   pragma Import (C, setValue, "tguiSpinButton_setValue");
   pragma Import (C, getValue, "tguiSpinButton_getValue");
   pragma Import (C, setStep, "tguiSpinButton_setStep");
   pragma Import (C, getStep, "tguiSpinButton_getStep");
   pragma Import (C, setVerticalScroll, "tguiSpinButton_setVerticalScroll");
   pragma Import (C, getVerticalScroll, "tguiSpinButton_getVerticalScroll");

end TGUI.Widgets.SpinButton;
