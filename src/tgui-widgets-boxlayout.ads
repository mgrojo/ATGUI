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

package TGUI.Widgets.BoxLayout is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure insert
     (layout     : access tguiWidget; index : tguiSize_t; widget : access tguiWidget;
      widgetName : tguiUtf32);

   function removeAtIndex (layout : access tguiWidget; index : tguiSize_t) return tguiBool;

   function getAtIndex (layout : access tguiWidget; index : tguiSize_t) return access tguiWidget;

private

   pragma Import (C, insert, "tguiBoxLayout_insert");
   pragma Import (C, removeAtIndex, "tguiBoxLayout_removeAtIndex");
   pragma Import (C, getAtIndex, "tguiBoxLayout_getAtIndex");

end TGUI.Widgets.BoxLayout;
