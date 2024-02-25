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

package TGUI.Widgets.ProgressBar is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   type tguiFillDirection is
     (tguiFillDirectionLeftToRight,
      tguiFillDirectionRightToLeft,
      tguiFillDirectionTopToBottom,
      tguiFillDirectionBottomToTop) with
     Convention => C;

   function create return access tguiWidget;

   procedure setMinimum (widget : access tguiWidget; minimum : tguiUint32);

   function getMinimum (widget : access constant tguiWidget) return tguiUint32;

   procedure setMaximum (widget : access tguiWidget; maximum : tguiUint32);

   function getMaximum (widget : access constant tguiWidget) return tguiUint32;

   procedure setValue (widget : access tguiWidget; value : tguiUint32);

   function getValue (widget : access constant tguiWidget) return tguiUint32;

   function incrementValue (widget : access constant tguiWidget) return tguiUint32;

   procedure setText (widget : access tguiWidget; text : tguiUtf32);

   function getText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setFillDirection (widget : access tguiWidget; fillDirection : tguiFillDirection);

   function getFillDirection (widget : access constant tguiWidget) return tguiFillDirection;

private

   pragma Import (C, create, "tguiProgressBar_create");
   pragma Import (C, setMinimum, "tguiProgressBar_setMinimum");
   pragma Import (C, getMinimum, "tguiProgressBar_getMinimum");
   pragma Import (C, setMaximum, "tguiProgressBar_setMaximum");
   pragma Import (C, getMaximum, "tguiProgressBar_getMaximum");
   pragma Import (C, setValue, "tguiProgressBar_setValue");
   pragma Import (C, getValue, "tguiProgressBar_getValue");
   pragma Import (C, incrementValue, "tguiProgressBar_incrementValue");
   pragma Import (C, setText, "tguiProgressBar_setText");
   pragma Import (C, getText, "tguiProgressBar_getText");
   pragma Import (C, setFillDirection, "tguiProgressBar_setFillDirection");
   pragma Import (C, getFillDirection, "tguiProgressBar_getFillDirection");

end TGUI.Widgets.ProgressBar;
