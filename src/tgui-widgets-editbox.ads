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
   function create return tguiWidget_Ptr;

   procedure setText (widget : tguiWidget_Ptr; text : tguiUtf32);

   function getText (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setDefaultText (widget : tguiWidget_Ptr; text : tguiUtf32);

   function getDefaultText (widget : tguiWidget_Cons) return tguiUtf32;

   procedure selectText (widget : tguiWidget_Ptr; start : tguiSize_t; length : tguiSize_t);

   function getSelectedText (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setPasswordCharacter (widget : tguiWidget_Ptr; passwordChar : tguiChar);

   function getPasswordCharacter (widget : tguiWidget_Cons) return tguiChar;

   procedure setMaximumCharacters (widget : tguiWidget_Ptr; maximumCharacters : tguiUint32);

   function getMaximumCharacters (widget : tguiWidget_Cons) return tguiUint32;

   procedure setAlignment
     (widget : tguiWidget_Ptr; alignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getAlignment (widget : tguiWidget_Cons) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure limitTextWidth (widget : tguiWidget_Ptr; limitWidth : tguiBool);

   function isTextWidthLimited (widget : tguiWidget_Cons) return tguiBool;

   procedure setReadOnly (widget : tguiWidget_Ptr; readOnly : tguiBool);

   function isReadOnly (widget : tguiWidget_Cons) return tguiBool;

   procedure setCaretPosition (widget : tguiWidget_Ptr; caretPosition : tguiSize_t);

   function getCaretPosition (widget : tguiWidget_Cons) return tguiSize_t;

   procedure setInputValidator (widget : tguiWidget_Ptr; validator : tguiUtf32);

   function getInputValidator (widget : tguiWidget_Cons) return tguiUtf32;

   procedure setSuffix (widget : tguiWidget_Ptr; suffix : tguiUtf32);

   function getSuffix (widget : tguiWidget_Cons) return tguiUtf32;

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
