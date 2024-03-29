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

with TGUI.Color;

package TGUI.Widgets.ChatBox is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure addLine (widget : access tguiWidget; text : tguiUtf32);

   procedure addLineWithColor
     (widget : access tguiWidget; text : tguiUtf32; color : access TGUI.Color.tguiColor);

   procedure addLineWithColorAndStyle
     (widget : access tguiWidget; text : tguiUtf32; color : access TGUI.Color.tguiColor;
      style  : tguiUint32);

   function getLine (widget : access constant tguiWidget; lineIndex : tguiSize_t) return tguiUtf32;

   function getLineColor
     (widget : access constant tguiWidget; lineIndex : tguiSize_t)
      return access TGUI.Color.tguiColor;

   function getLineTextStyle
     (widget : access constant tguiWidget; lineIndex : tguiSize_t) return tguiUint32;

   function removeLine (widget : access tguiWidget; lineIndex : tguiSize_t) return tguiBool;

   procedure removeAllLines (widget : access tguiWidget);

   function getLineAmount (widget : access constant tguiWidget) return tguiSize_t;

   procedure setLineLimit (widget : access tguiWidget; maxLines : tguiSize_t);

   function getLineLimit (widget : access constant tguiWidget) return tguiSize_t;

   procedure setTextColor (widget : access tguiWidget; color : access TGUI.Color.tguiColor);

   function getTextColor (widget : access constant tguiWidget) return access TGUI.Color.tguiColor;

   procedure setTextStyle (widget : access tguiWidget; style : tguiUint32);

   function getTextStyle (widget : access constant tguiWidget) return tguiUint32;

   procedure setLinesStartFromTop (widget : access tguiWidget; startFromTop : tguiBool);

   function getLinesStartFromTop (widget : access constant tguiWidget) return tguiBool;

   procedure setNewLinesBelowOthers (widget : access tguiWidget; newLinesBelowOthers : tguiBool);

   function getNewLinesBelowOthers (widget : access constant tguiWidget) return tguiBool;

   procedure setScrollbarValue (widget : access tguiWidget; value : tguiUint32);

   function getScrollbarValue (widget : access constant tguiWidget) return tguiUint32;

private

   pragma Import (C, create, "tguiChatBox_create");
   pragma Import (C, addLine, "tguiChatBox_addLine");
   pragma Import (C, addLineWithColor, "tguiChatBox_addLineWithColor");
   pragma Import (C, addLineWithColorAndStyle, "tguiChatBox_addLineWithColorAndStyle");
   pragma Import (C, getLine, "tguiChatBox_getLine");
   pragma Import (C, getLineColor, "tguiChatBox_getLineColor");
   pragma Import (C, getLineTextStyle, "tguiChatBox_getLineTextStyle");
   pragma Import (C, removeLine, "tguiChatBox_removeLine");
   pragma Import (C, removeAllLines, "tguiChatBox_removeAllLines");
   pragma Import (C, getLineAmount, "tguiChatBox_getLineAmount");
   pragma Import (C, setLineLimit, "tguiChatBox_setLineLimit");
   pragma Import (C, getLineLimit, "tguiChatBox_getLineLimit");
   pragma Import (C, setTextColor, "tguiChatBox_setTextColor");
   pragma Import (C, getTextColor, "tguiChatBox_getTextColor");
   pragma Import (C, setTextStyle, "tguiChatBox_setTextStyle");
   pragma Import (C, getTextStyle, "tguiChatBox_getTextStyle");
   pragma Import (C, setLinesStartFromTop, "tguiChatBox_setLinesStartFromTop");
   pragma Import (C, getLinesStartFromTop, "tguiChatBox_getLinesStartFromTop");
   pragma Import (C, setNewLinesBelowOthers, "tguiChatBox_setNewLinesBelowOthers");
   pragma Import (C, getNewLinesBelowOthers, "tguiChatBox_getNewLinesBelowOthers");
   pragma Import (C, setScrollbarValue, "tguiChatBox_setScrollbarValue");
   pragma Import (C, getScrollbarValue, "tguiChatBox_getScrollbarValue");

end TGUI.Widgets.ChatBox;
