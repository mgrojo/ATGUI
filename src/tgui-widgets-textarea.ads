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



with TGUI.ScrollbarPolicy;

package TGUI.Widgets.TextArea is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_create";

   procedure setText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setText";

   procedure addText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_addText";

   function getText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getText";

   procedure setDefaultText (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setDefaultText";

   function getDefaultText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getDefaultText";

   procedure setSelectedText
     (widget : access constant tguiWidget;
      selectionStartIndex : tguiSize_t;
      selectionEndIndex : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setSelectedText";

   function getSelectedText (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getSelectedText";

   function getSelectionStart (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getSelectionStart";

   function getSelectionEnd (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getSelectionEnd";

   procedure setMaximumCharacters (widget : access tguiWidget; maximumCharacters : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setMaximumCharacters";

   function getMaximumCharacters (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getMaximumCharacters";

   procedure setCaretPosition (widget : access tguiWidget; tguiCharactersBeforeCaret : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setCaretPosition";

   function getCaretPosition (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getCaretPosition";

   procedure setReadOnly (widget : access tguiWidget; readOnly : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setReadOnly";

   function isReadOnly (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_isReadOnly";

   procedure setVerticalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setVerticalScrollbarPolicy";

   function getVerticalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getVerticalScrollbarPolicy";

   procedure setHorizontalScrollbarPolicy (widget : access tguiWidget; policy : TGUI.ScrollbarPolicy.tguiScrollbarPolicy)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setHorizontalScrollbarPolicy";

   function getHorizontalScrollbarPolicy (widget : access constant tguiWidget) return TGUI.ScrollbarPolicy.tguiScrollbarPolicy
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getHorizontalScrollbarPolicy";

   procedure setVerticalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setVerticalScrollbarValue";

   function getVerticalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getVerticalScrollbarValue";

   procedure setHorizontalScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_setHorizontalScrollbarValue";

   function getHorizontalScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getHorizontalScrollbarValue";

   function getLinesCount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiTextArea_getLinesCount";

private



end TGUI.Widgets.TextArea;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
