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

package TGUI.Widgets.RadioButton is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setChecked (widget : access tguiWidget; checked : tguiBool);

   function isChecked (widget : access constant tguiWidget) return tguiBool;

   procedure setText (widget : access tguiWidget; text : tguiUtf32);

   function getText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setTextClickable (widget : access tguiWidget; clickable : tguiBool);

   function isTextClickable (widget : access constant tguiWidget) return tguiBool;

private

   pragma Import (C, create, "tguiRadioButton_create");
   pragma Import (C, setChecked, "tguiRadioButton_setChecked");
   pragma Import (C, isChecked, "tguiRadioButton_isChecked");
   pragma Import (C, setText, "tguiRadioButton_setText");
   pragma Import (C, getText, "tguiRadioButton_getText");
   pragma Import (C, setTextClickable, "tguiRadioButton_setTextClickable");
   pragma Import (C, isTextClickable, "tguiRadioButton_isTextClickable");

end TGUI.Widgets.RadioButton;
