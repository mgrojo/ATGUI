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

package TGUI.Widgets.BoxLayoutRatios is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure add
     (layout     : access tguiWidget; widget : access tguiWidget; ratio : tguiFloat;
      widgetName : tguiUtf32);

   procedure insert
     (layout : access tguiWidget; index : tguiSize_t; widget : access tguiWidget; ratio : tguiFloat;
      widgetName : tguiUtf32);

   procedure addSpace (layout : access tguiWidget; ratio : tguiFloat);

   procedure insertSpace (layout : access tguiWidget; index : tguiSize_t; ratio : tguiFloat);

   procedure setRatio (layout : access tguiWidget; widget : access tguiWidget; ratio : tguiFloat);

   procedure setRatioAtIndex (layout : access tguiWidget; index : tguiSize_t; ratio : tguiFloat);

   function getRatio (layout : access tguiWidget; widget : access tguiWidget) return tguiFloat;

   function getRatioAtIndex (layout : access tguiWidget; index : tguiSize_t) return tguiFloat;

private

   pragma Import (C, add, "tguiBoxLayoutRatios_add");
   pragma Import (C, insert, "tguiBoxLayoutRatios_insert");
   pragma Import (C, addSpace, "tguiBoxLayoutRatios_addSpace");
   pragma Import (C, insertSpace, "tguiBoxLayoutRatios_insertSpace");
   pragma Import (C, setRatio, "tguiBoxLayoutRatios_setRatio");
   pragma Import (C, setRatioAtIndex, "tguiBoxLayoutRatios_setRatioAtIndex");
   pragma Import (C, getRatio, "tguiBoxLayoutRatios_getRatio");
   pragma Import (C, getRatioAtIndex, "tguiBoxLayoutRatios_getRatioAtIndex");

end TGUI.Widgets.BoxLayoutRatios;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
