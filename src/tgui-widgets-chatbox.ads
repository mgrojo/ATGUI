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


with TGUI.Color;


package TGUI.Widgets.ChatBox is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_create";

   procedure addLine (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_addLine";

   procedure addLineWithColor
     (widget : access tguiWidget;
      text : tguiUtf32;
      color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_addLineWithColor";

   procedure addLineWithColorAndStyle
     (widget : access tguiWidget;
      text : tguiUtf32;
      color : access TGUI.Color.tguiColor;
      style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_addLineWithColorAndStyle";

   function getLine (widget : access constant tguiWidget; lineIndex : tguiSize_t) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLine";

   function getLineColor (widget : access constant tguiWidget; lineIndex : tguiSize_t) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLineColor";

   function getLineTextStyle (widget : access constant tguiWidget; lineIndex : tguiSize_t) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLineTextStyle";

   function removeLine (widget : access tguiWidget; lineIndex : tguiSize_t) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_removeLine";

   procedure removeAllLines (widget : access tguiWidget)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_removeAllLines";

   function getLineAmount (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLineAmount";

   procedure setLineLimit (widget : access tguiWidget; maxLines : tguiSize_t)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setLineLimit";

   function getLineLimit (widget : access constant tguiWidget) return tguiSize_t
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLineLimit";

   procedure setTextColor (widget : access tguiWidget; color : access TGUI.Color.tguiColor)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setTextColor";

   function getTextColor (widget : access constant tguiWidget) return access TGUI.Color.tguiColor
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getTextColor";

   procedure setTextStyle (widget : access tguiWidget; style : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setTextStyle";

   function getTextStyle (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getTextStyle";

   procedure setLinesStartFromTop (widget : access tguiWidget; startFromTop : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setLinesStartFromTop";

   function getLinesStartFromTop (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getLinesStartFromTop";

   procedure setNewLinesBelowOthers (widget : access tguiWidget; newLinesBelowOthers : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setNewLinesBelowOthers";

   function getNewLinesBelowOthers (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getNewLinesBelowOthers";

   procedure setScrollbarValue (widget : access tguiWidget; value : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_setScrollbarValue";

   function getScrollbarValue (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiChatBox_getScrollbarValue";

private



end TGUI.Widgets.ChatBox;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
