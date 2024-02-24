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



package TGUI.Widgets.ProgressBar is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   type tguiFillDirection is
     (tguiFillDirectionLeftToRight,
      tguiFillDirectionRightToLeft,
      tguiFillDirectionTopToBottom,
      tguiFillDirectionBottomToTop)
   with Convention => C;

   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_create";

   procedure setMinimum (widget : access tguiWidget; minimum : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_setMinimum";

   function getMinimum (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_getMinimum";

   procedure setMaximum (widget : access tguiWidget; maximum : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_setMaximum";

   function getMaximum (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_getMaximum";

   procedure setValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_setValue";

   function getValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_getValue";

   function incrementValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_incrementValue";

   procedure setText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_setText";

   function getText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_getText";

   procedure setFillDirection (widget : access tguiWidget; fillDirection : tguiFillDirection)
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_setFillDirection";

   function getFillDirection (widget : access constant tguiWidget) return tguiFillDirection
   with Import => True,
        Convention => C,
        External_Name => "tguiProgressBar_getFillDirection";

private



end TGUI.Widgets.ProgressBar;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
