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



package TGUI.Widgets.Slider is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_create";

   procedure setMinimum (widget : access tguiWidget; minimum : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setMinimum";

   function getMinimum (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getMinimum";

   procedure setMaximum (widget : access tguiWidget; maximum : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setMaximum";

   function getMaximum (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getMaximum";

   procedure setValue (widget : access tguiWidget; value : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setValue";

   function getValue (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getValue";

   procedure setStep (widget : access tguiWidget; step : tguiFloat)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setStep";

   function getStep (widget : access constant tguiWidget) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getStep";

   procedure setVerticalScroll (widget : access tguiWidget; vertical : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setVerticalScroll";

   function getVerticalScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getVerticalScroll";

   procedure setInvertedDirection (widget : access tguiWidget; invertedDirection : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setInvertedDirection";

   function getInvertedDirection (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getInvertedDirection";

   procedure setChangeValueOnScroll (widget : access tguiWidget; changeValueOnScroll : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_setChangeValueOnScroll";

   function getChangeValueOnScroll (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiSlider_getChangeValueOnScroll";

private



end TGUI.Widgets.Slider;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
