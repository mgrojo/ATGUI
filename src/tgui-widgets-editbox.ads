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

with TGUI.Alignment;

package TGUI.Widgets.EditBox is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setText (widget : access tguiWidget; text : tguiUtf32);

   function getText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32);

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32;

   procedure selectText (widget : access tguiWidget; start : tguiSize_t; length : tguiSize_t);

   function getSelectedText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setPasswordCharacter (widget : access tguiWidget; passwordChar : tguiChar);

   function getPasswordCharacter (widget : access constant tguiWidget) return tguiChar;

   procedure setMaximumCharacters (widget : access tguiWidget; maximumCharacters : tguiUint32);

   function getMaximumCharacters (widget : access constant tguiWidget) return tguiUint32;

   procedure setAlignment
     (widget : access tguiWidget; alignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getAlignment
     (widget : access constant tguiWidget) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure limitTextWidth (widget : access tguiWidget; limitWidth : tguiBool);

   function isTextWidthLimited (widget : access constant tguiWidget) return tguiBool;

   procedure setReadOnly (widget : access tguiWidget; readOnly : tguiBool);

   function isReadOnly (widget : access constant tguiWidget) return tguiBool;

   procedure setCaretPosition (widget : access tguiWidget; caretPosition : tguiSize_t);

   function getCaretPosition (widget : access constant tguiWidget) return tguiSize_t;

   procedure setInputValidator (widget : access tguiWidget; validator : tguiUtf32);

   function getInputValidator (widget : access constant tguiWidget) return tguiUtf32;

   procedure setSuffix (widget : access tguiWidget; suffix : tguiUtf32);

   function getSuffix (widget : access constant tguiWidget) return tguiUtf32;

private

   pragma Import (C, create, "tguiEditBox_create");
   pragma Import (C, setText, "tguiEditBox_setText");
   pragma Import (C, getText, "tguiEditBox_getText");
   pragma Import (C, setDefaultText, "tguiEditBox_setDefaultText");
   pragma Import (C, getDefaultText, "tguiEditBox_getDefaultText");
   pragma Import (C, selectText, "tguiEditBox_selectText");
   pragma Import (C, getSelectedText, "tguiEditBox_getSelectedText");
   pragma Import (C, setPasswordCharacter, "tguiEditBox_setPasswordCharacter");
   pragma Import (C, getPasswordCharacter, "tguiEditBox_getPasswordCharacter");
   pragma Import (C, setMaximumCharacters, "tguiEditBox_setMaximumCharacters");
   pragma Import (C, getMaximumCharacters, "tguiEditBox_getMaximumCharacters");
   pragma Import (C, setAlignment, "tguiEditBox_setAlignment");
   pragma Import (C, getAlignment, "tguiEditBox_getAlignment");
   pragma Import (C, limitTextWidth, "tguiEditBox_limitTextWidth");
   pragma Import (C, isTextWidthLimited, "tguiEditBox_isTextWidthLimited");
   pragma Import (C, setReadOnly, "tguiEditBox_setReadOnly");
   pragma Import (C, isReadOnly, "tguiEditBox_isReadOnly");
   pragma Import (C, setCaretPosition, "tguiEditBox_setCaretPosition");
   pragma Import (C, getCaretPosition, "tguiEditBox_getCaretPosition");
   pragma Import (C, setInputValidator, "tguiEditBox_setInputValidator");
   pragma Import (C, getInputValidator, "tguiEditBox_getInputValidator");
   pragma Import (C, setSuffix, "tguiEditBox_setSuffix");
   pragma Import (C, getSuffix, "tguiEditBox_getSuffix");

end TGUI.Widgets.EditBox;
