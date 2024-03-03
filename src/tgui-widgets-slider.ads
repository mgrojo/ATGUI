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

package TGUI.Widgets.Slider is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiWidget_Ptr;

   procedure setMinimum (widget : tguiWidget_Ptr; minimum : tguiFloat);

   function getMinimum (widget : tguiWidget_Cons) return tguiFloat;

   procedure setMaximum (widget : tguiWidget_Ptr; maximum : tguiFloat);

   function getMaximum (widget : tguiWidget_Cons) return tguiFloat;

   procedure setValue (widget : tguiWidget_Ptr; value : tguiFloat);

   function getValue (widget : tguiWidget_Cons) return tguiFloat;

   procedure setStep (widget : tguiWidget_Ptr; step : tguiFloat);

   function getStep (widget : tguiWidget_Cons) return tguiFloat;

   procedure setVerticalScroll (widget : tguiWidget_Ptr; vertical : tguiBool);

   function getVerticalScroll (widget : tguiWidget_Cons) return tguiBool;

   procedure setInvertedDirection (widget : tguiWidget_Ptr; invertedDirection : tguiBool);

   function getInvertedDirection (widget : tguiWidget_Cons) return tguiBool;

   procedure setChangeValueOnScroll (widget : tguiWidget_Ptr; changeValueOnScroll : tguiBool);

   function getChangeValueOnScroll (widget : tguiWidget_Cons) return tguiBool;

private

   pragma Import (C, create, "tguiSlider_create");
   pragma Import (C, setMinimum, "tguiSlider_setMinimum");
   pragma Import (C, getMinimum, "tguiSlider_getMinimum");
   pragma Import (C, setMaximum, "tguiSlider_setMaximum");
   pragma Import (C, getMaximum, "tguiSlider_getMaximum");
   pragma Import (C, setValue, "tguiSlider_setValue");
   pragma Import (C, getValue, "tguiSlider_getValue");
   pragma Import (C, setStep, "tguiSlider_setStep");
   pragma Import (C, getStep, "tguiSlider_getStep");
   pragma Import (C, setVerticalScroll, "tguiSlider_setVerticalScroll");
   pragma Import (C, getVerticalScroll, "tguiSlider_getVerticalScroll");
   pragma Import (C, setInvertedDirection, "tguiSlider_setInvertedDirection");
   pragma Import (C, getInvertedDirection, "tguiSlider_getInvertedDirection");
   pragma Import (C, setChangeValueOnScroll, "tguiSlider_setChangeValueOnScroll");
   pragma Import (C, getChangeValueOnScroll, "tguiSlider_getChangeValueOnScroll");

end TGUI.Widgets.Slider;
