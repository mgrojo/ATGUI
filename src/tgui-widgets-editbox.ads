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



with TGUI.Alignment;

package TGUI.Widgets.EditBox is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_create";

   procedure setText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setText";

   function getText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getText";

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setDefaultText";

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getDefaultText";

   procedure selectText
     (widget : access tguiWidget;
      start : tguiSize_t;
      length : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_selectText";

   function getSelectedText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getSelectedText";

   procedure setPasswordCharacter (widget : access tguiWidget; passwordChar : tguiChar)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setPasswordCharacter";

   function getPasswordCharacter (widget : access constant tguiWidget) return tguiChar
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getPasswordCharacter";

   procedure setMaximumCharacters (widget : access tguiWidget; maximumCharacters : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setMaximumCharacters";

   function getMaximumCharacters (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getMaximumCharacters";

   procedure setAlignment (widget : access tguiWidget; alignment : TGUI.Alignment.tguiHorizontalAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setAlignment";

   function getAlignment (widget : access constant tguiWidget) return TGUI.Alignment.tguiHorizontalAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getAlignment";

   procedure limitTextWidth (widget : access tguiWidget; limitWidth : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_limitTextWidth";

   function isTextWidthLimited (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_isTextWidthLimited";

   procedure setReadOnly (widget : access tguiWidget; readOnly : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setReadOnly";

   function isReadOnly (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_isReadOnly";

   procedure setCaretPosition (widget : access tguiWidget; caretPosition : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setCaretPosition";

   function getCaretPosition (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getCaretPosition";

   procedure setInputValidator (widget : access tguiWidget; validator : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setInputValidator";

   function getInputValidator (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getInputValidator";

   procedure setSuffix (widget : access tguiWidget; suffix : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_setSuffix";

   function getSuffix (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiEditBox_getSuffix";

private



end TGUI.Widgets.EditBox;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
