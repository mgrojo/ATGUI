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

package TGUI.Cursor is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   --!< Arrow cursor (default)
   --!< I-beam, cursor when hovering over a text field
   --!< Pointing hand cursor
   --!< Left arrow on Linux, horizontal double arrow cursor on Windows and macOS
   --!< Right arrow on Linux, horizontal double arrow cursor on Windows and macOS
   --!< Up arrow on Linux, vertical double arrow cursor on Windows and macOS
   --!< Down arrow on Linux, vertical double arrow cursor on Windows and macOS
   --!< Top-left arrow on Linux, double arrow cursor going from top-left to bottom-right on Windows and macOS
   --!< Bottom-right arrow on Linux, double arrow cursor going from top-left to bottom-right on Windows and
   --!< Bottom-left arrow on Linux, double arrow cursor going from bottom-left to top-right on Windows and macOS
   --!< Top-right arrow on Linux, double arrow cursor going from bottom-left to top-right on Windows and macOS
   --!< Horizontal double arrow cursor
   --!< Vertical double arrow cursor
   --!< Crosshair cursor
   --!< Help cursor
   --!< Action not allowed cursor
   type tguiCursorType is
     (tguiCursorTypeArrow,
      tguiCursorTypeText,
      tguiCursorTypeHand,
      tguiCursorTypeSizeLeft,
      tguiCursorTypeSizeRight,
      tguiCursorTypeSizeTop,
      tguiCursorTypeSizeBottom,
      tguiCursorTypeSizeTopLeft,
      tguiCursorTypeSizeBottomRight,
      tguiCursorTypeSizeBottomLeft,
      tguiCursorTypeSizeTopRight,
      tguiCursorTypeSizeHorizontal,
      tguiCursorTypeSizeVertical,
      tguiCursorTypeCrosshair,
      tguiCursorTypeHelp,
      tguiCursorTypeNotAllowed) with
     Convention => C;

private

end TGUI.Cursor;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
