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

with TGUI.ScrollbarPolicy;

package TGUI.Widgets.TextArea is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setText (widget : access tguiWidget; text : tguiUtf32);

   procedure addText (widget : access tguiWidget; text : tguiUtf32);

   function getText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32);

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32;

   procedure setSelectedText
     (widget            : access constant tguiWidget; selectionStartIndex : tguiSize_t;
      selectionEndIndex : tguiSize_t);

   function getSelectedText (widget : access constant tguiWidget) return tguiUtf32;

   function getSelectionStart (widget : access constant tguiWidget) return tguiSize_t;

   function getSelectionEnd (widget : access constant tguiWidget) return tguiSize_t;

   procedure setMaximumCharacters (widget : access tguiWidget; maximumCharacters : tguiSize_t);

   function getMaximumCharacters (widget : access constant tguiWidget) return tguiSize_t;

   procedure setCaretPosition (widget : access tguiWidget; tguiCharactersBeforeCaret : tguiSize_t);

   function getCaretPosition (widget : access constant tguiWidget) return tguiSize_t;

   procedure setReadOnly (widget : access tguiWidget; readOnly : tguiBool);

   function isReadOnly (widget : access constant tguiWidget) return tguiBool;

   procedure setVerticalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getVerticalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setHorizontalScrollbarPolicy
     (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy);

   function getHorizontalScrollbarPolicy
     (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy;

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

   function getLinesCount (widget : access constant tguiWidget) return tguiSize_t;

private

   pragma Import (C, create, "tguiTextArea_create");
   pragma Import (C, setText, "tguiTextArea_setText");
   pragma Import (C, addText, "tguiTextArea_addText");
   pragma Import (C, getText, "tguiTextArea_getText");
   pragma Import (C, setDefaultText, "tguiTextArea_setDefaultText");
   pragma Import (C, getDefaultText, "tguiTextArea_getDefaultText");
   pragma Import (C, setSelectedText, "tguiTextArea_setSelectedText");
   pragma Import (C, getSelectedText, "tguiTextArea_getSelectedText");
   pragma Import (C, getSelectionStart, "tguiTextArea_getSelectionStart");
   pragma Import (C, getSelectionEnd, "tguiTextArea_getSelectionEnd");
   pragma Import (C, setMaximumCharacters, "tguiTextArea_setMaximumCharacters");
   pragma Import (C, getMaximumCharacters, "tguiTextArea_getMaximumCharacters");
   pragma Import (C, setCaretPosition, "tguiTextArea_setCaretPosition");
   pragma Import (C, getCaretPosition, "tguiTextArea_getCaretPosition");
   pragma Import (C, setReadOnly, "tguiTextArea_setReadOnly");
   pragma Import (C, isReadOnly, "tguiTextArea_isReadOnly");
   pragma Import (C, setVerticalScrollbarPolicy, "tguiTextArea_setVerticalScrollbarPolicy");
   pragma Import (C, getVerticalScrollbarPolicy, "tguiTextArea_getVerticalScrollbarPolicy");
   pragma Import (C, setHorizontalScrollbarPolicy, "tguiTextArea_setHorizontalScrollbarPolicy");
   pragma Import (C, getHorizontalScrollbarPolicy, "tguiTextArea_getHorizontalScrollbarPolicy");
   pragma Import (C, setVerticalScrollbarValue, "tguiTextArea_setVerticalScrollbarValue");
   pragma Import (C, getVerticalScrollbarValue, "tguiTextArea_getVerticalScrollbarValue");
   pragma Import (C, setHorizontalScrollbarValue, "tguiTextArea_setHorizontalScrollbarValue");
   pragma Import (C, getHorizontalScrollbarValue, "tguiTextArea_getHorizontalScrollbarValue");
   pragma Import (C, getLinesCount, "tguiTextArea_getLinesCount");

end TGUI.Widgets.TextArea;
