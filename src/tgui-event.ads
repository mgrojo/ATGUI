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

package TGUI.Event is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   --!< Unhandled key
   --!< The A key
   --!< The B key
   --!< The C key
   --!< The D key
   --!< The E key
   --!< The F key
   --!< The G key
   --!< The H key
   --!< The I key
   --!< The J key
   --!< The K key
   --!< The L key
   --!< The M key
   --!< The N key
   --!< The O key
   --!< The P key
   --!< The Q key
   --!< The R key
   --!< The S key
   --!< The T key
   --!< The U key
   --!< The V key
   --!< The W key
   --!< The X key
   --!< The Y key
   --!< The Z key
   --!< The 0 key
   --!< The 1 key
   --!< The 2 key
   --!< The 3 key
   --!< The 4 key
   --!< The 5 key
   --!< The 6 key
   --!< The 7 key
   --!< The 8 key
   --!< The 9 key
   --!< The Escape key
   --!< The left Control key
   --!< The left Shift key
   --!< The left Alt key
   --!< The left OS specific key (windows key / super key / command key)
   --!< The right Control key
   --!< The right Shift key
   --!< The right Alt key
   --!< The right OS specific key (windows key / super key / command key)
   --!< The Menu key
   --!< The [ key
   --!< The ] key
   --!< The ; key
   --!< The , key
   --!< The . key
   --!< The ' key
   --!< The / key
   --!< The @ key
   --!< The ~ key
   --!< The = key
   --!< The - key (hyphen)
   --!< The Space key
   --!< The Enter/Return keys
   --!< The Backspace key
   --!< The Tabulation key
   --!< The Page up key
   --!< The Page down key
   --!< The End key
   --!< The Home key
   --!< The Insert key
   --!< The Delete key
   --!< The + key
   --!< The - key (minus from numpad)
   --!< The * key
   --!< The / key
   --!< Left arrow
   --!< Right arrow
   --!< Up arrow
   --!< Down arrow
   --!< The numpad 0 key
   --!< The numpad 1 key
   --!< The numpad 2 key
   --!< The numpad 3 key
   --!< The numpad 4 key
   --!< The numpad 5 key
   --!< The numpad 6 key
   --!< The numpad 7 key
   --!< The numpad 8 key
   --!< The numpad 9 key
   --!< The F1 key
   --!< The F2 key
   --!< The F3 key
   --!< The F4 key
   --!< The F5 key
   --!< The F6 key
   --!< The F7 key
   --!< The F8 key
   --!< The F9 key
   --!< The F10 key
   --!< The F11 key
   --!< The F12 key
   --!< The F13 key
   --!< The F14 key
   --!< The F15 key
   --!< The Pause key
   subtype tguiKeyboardKey is tguiInt;
   tguiKeyboardKey_tguiKeyboardKeyUnknown   : constant tguiKeyboardKey := -1;
   tguiKeyboardKey_tguiKeyboardKeyA         : constant tguiKeyboardKey := 0;
   tguiKeyboardKey_tguiKeyboardKeyB         : constant tguiKeyboardKey := 1;
   tguiKeyboardKey_tguiKeyboardKeyC         : constant tguiKeyboardKey := 2;
   tguiKeyboardKey_tguiKeyboardKeyD         : constant tguiKeyboardKey := 3;
   tguiKeyboardKey_tguiKeyboardKeyE         : constant tguiKeyboardKey := 4;
   tguiKeyboardKey_tguiKeyboardKeyF         : constant tguiKeyboardKey := 5;
   tguiKeyboardKey_tguiKeyboardKeyG         : constant tguiKeyboardKey := 6;
   tguiKeyboardKey_tguiKeyboardKeyH         : constant tguiKeyboardKey := 7;
   tguiKeyboardKey_tguiKeyboardKeyI         : constant tguiKeyboardKey := 8;
   tguiKeyboardKey_tguiKeyboardKeyJ         : constant tguiKeyboardKey := 9;
   tguiKeyboardKey_tguiKeyboardKeyK         : constant tguiKeyboardKey := 10;
   tguiKeyboardKey_tguiKeyboardKeyL         : constant tguiKeyboardKey := 11;
   tguiKeyboardKey_tguiKeyboardKeyM         : constant tguiKeyboardKey := 12;
   tguiKeyboardKey_tguiKeyboardKeyN         : constant tguiKeyboardKey := 13;
   tguiKeyboardKey_tguiKeyboardKeyO         : constant tguiKeyboardKey := 14;
   tguiKeyboardKey_tguiKeyboardKeyP         : constant tguiKeyboardKey := 15;
   tguiKeyboardKey_tguiKeyboardKeyQ         : constant tguiKeyboardKey := 16;
   tguiKeyboardKey_tguiKeyboardKeyR         : constant tguiKeyboardKey := 17;
   tguiKeyboardKey_tguiKeyboardKeyS         : constant tguiKeyboardKey := 18;
   tguiKeyboardKey_tguiKeyboardKeyT         : constant tguiKeyboardKey := 19;
   tguiKeyboardKey_tguiKeyboardKeyU         : constant tguiKeyboardKey := 20;
   tguiKeyboardKey_tguiKeyboardKeyV         : constant tguiKeyboardKey := 21;
   tguiKeyboardKey_tguiKeyboardKeyW         : constant tguiKeyboardKey := 22;
   tguiKeyboardKey_tguiKeyboardKeyX         : constant tguiKeyboardKey := 23;
   tguiKeyboardKey_tguiKeyboardKeyY         : constant tguiKeyboardKey := 24;
   tguiKeyboardKey_tguiKeyboardKeyZ         : constant tguiKeyboardKey := 25;
   tguiKeyboardKey_tguiKeyboardKeyNum0      : constant tguiKeyboardKey := 26;
   tguiKeyboardKey_tguiKeyboardKeyNum1      : constant tguiKeyboardKey := 27;
   tguiKeyboardKey_tguiKeyboardKeyNum2      : constant tguiKeyboardKey := 28;
   tguiKeyboardKey_tguiKeyboardKeyNum3      : constant tguiKeyboardKey := 29;
   tguiKeyboardKey_tguiKeyboardKeyNum4      : constant tguiKeyboardKey := 30;
   tguiKeyboardKey_tguiKeyboardKeyNum5      : constant tguiKeyboardKey := 31;
   tguiKeyboardKey_tguiKeyboardKeyNum6      : constant tguiKeyboardKey := 32;
   tguiKeyboardKey_tguiKeyboardKeyNum7      : constant tguiKeyboardKey := 33;
   tguiKeyboardKey_tguiKeyboardKeyNum8      : constant tguiKeyboardKey := 34;
   tguiKeyboardKey_tguiKeyboardKeyNum9      : constant tguiKeyboardKey := 35;
   tguiKeyboardKey_tguiKeyboardKeyEscape    : constant tguiKeyboardKey := 36;
   tguiKeyboardKey_tguiKeyboardKeyLControl  : constant tguiKeyboardKey := 37;
   tguiKeyboardKey_tguiKeyboardKeyLShift    : constant tguiKeyboardKey := 38;
   tguiKeyboardKey_tguiKeyboardKeyLAlt      : constant tguiKeyboardKey := 39;
   tguiKeyboardKey_tguiKeyboardKeyLSystem   : constant tguiKeyboardKey := 40;
   tguiKeyboardKey_tguiKeyboardKeyRControl  : constant tguiKeyboardKey := 41;
   tguiKeyboardKey_tguiKeyboardKeyRShift    : constant tguiKeyboardKey := 42;
   tguiKeyboardKey_tguiKeyboardKeyRAlt      : constant tguiKeyboardKey := 43;
   tguiKeyboardKey_tguiKeyboardKeyRSystem   : constant tguiKeyboardKey := 44;
   tguiKeyboardKey_tguiKeyboardKeyMenu      : constant tguiKeyboardKey := 45;
   tguiKeyboardKey_tguiKeyboardKeyLBracket  : constant tguiKeyboardKey := 46;
   tguiKeyboardKey_tguiKeyboardKeyRBracket  : constant tguiKeyboardKey := 47;
   tguiKeyboardKey_tguiKeyboardKeySemicolon : constant tguiKeyboardKey := 48;
   tguiKeyboardKey_tguiKeyboardKeyComma     : constant tguiKeyboardKey := 49;
   tguiKeyboardKey_tguiKeyboardKeyPeriod    : constant tguiKeyboardKey := 50;
   tguiKeyboardKey_tguiKeyboardKeyQuote     : constant tguiKeyboardKey := 51;
   tguiKeyboardKey_tguiKeyboardKeySlash     : constant tguiKeyboardKey := 52;
   tguiKeyboardKey_tguiKeyboardKeyBackslash : constant tguiKeyboardKey := 53;
   tguiKeyboardKey_tguiKeyboardKeyTilde     : constant tguiKeyboardKey := 54;
   tguiKeyboardKey_tguiKeyboardKeyEqual     : constant tguiKeyboardKey := 55;
   tguiKeyboardKey_tguiKeyboardKeyMinus     : constant tguiKeyboardKey := 56;
   tguiKeyboardKey_tguiKeyboardKeySpace     : constant tguiKeyboardKey := 57;
   tguiKeyboardKey_tguiKeyboardKeyEnter     : constant tguiKeyboardKey := 58;
   tguiKeyboardKey_tguiKeyboardKeyBackspace : constant tguiKeyboardKey := 59;
   tguiKeyboardKey_tguiKeyboardKeyTab       : constant tguiKeyboardKey := 60;
   tguiKeyboardKey_tguiKeyboardKeyPageUp    : constant tguiKeyboardKey := 61;
   tguiKeyboardKey_tguiKeyboardKeyPageDown  : constant tguiKeyboardKey := 62;
   tguiKeyboardKey_tguiKeyboardKeyEnd       : constant tguiKeyboardKey := 63;
   tguiKeyboardKey_tguiKeyboardKeyHome      : constant tguiKeyboardKey := 64;
   tguiKeyboardKey_tguiKeyboardKeyInsert    : constant tguiKeyboardKey := 65;
   tguiKeyboardKey_tguiKeyboardKeyDelete    : constant tguiKeyboardKey := 66;
   tguiKeyboardKey_tguiKeyboardKeyAdd       : constant tguiKeyboardKey := 67;
   tguiKeyboardKey_tguiKeyboardKeySubtract  : constant tguiKeyboardKey := 68;
   tguiKeyboardKey_tguiKeyboardKeyMultiply  : constant tguiKeyboardKey := 69;
   tguiKeyboardKey_tguiKeyboardKeyDivide    : constant tguiKeyboardKey := 70;
   tguiKeyboardKey_tguiKeyboardKeyLeft      : constant tguiKeyboardKey := 71;
   tguiKeyboardKey_tguiKeyboardKeyRight     : constant tguiKeyboardKey := 72;
   tguiKeyboardKey_tguiKeyboardKeyUp        : constant tguiKeyboardKey := 73;
   tguiKeyboardKey_tguiKeyboardKeyDown      : constant tguiKeyboardKey := 74;
   tguiKeyboardKey_tguiKeyboardKeyNumpad0   : constant tguiKeyboardKey := 75;
   tguiKeyboardKey_tguiKeyboardKeyNumpad1   : constant tguiKeyboardKey := 76;
   tguiKeyboardKey_tguiKeyboardKeyNumpad2   : constant tguiKeyboardKey := 77;
   tguiKeyboardKey_tguiKeyboardKeyNumpad3   : constant tguiKeyboardKey := 78;
   tguiKeyboardKey_tguiKeyboardKeyNumpad4   : constant tguiKeyboardKey := 79;
   tguiKeyboardKey_tguiKeyboardKeyNumpad5   : constant tguiKeyboardKey := 80;
   tguiKeyboardKey_tguiKeyboardKeyNumpad6   : constant tguiKeyboardKey := 81;
   tguiKeyboardKey_tguiKeyboardKeyNumpad7   : constant tguiKeyboardKey := 82;
   tguiKeyboardKey_tguiKeyboardKeyNumpad8   : constant tguiKeyboardKey := 83;
   tguiKeyboardKey_tguiKeyboardKeyNumpad9   : constant tguiKeyboardKey := 84;
   tguiKeyboardKey_tguiKeyboardKeyF1        : constant tguiKeyboardKey := 85;
   tguiKeyboardKey_tguiKeyboardKeyF2        : constant tguiKeyboardKey := 86;
   tguiKeyboardKey_tguiKeyboardKeyF3        : constant tguiKeyboardKey := 87;
   tguiKeyboardKey_tguiKeyboardKeyF4        : constant tguiKeyboardKey := 88;
   tguiKeyboardKey_tguiKeyboardKeyF5        : constant tguiKeyboardKey := 89;
   tguiKeyboardKey_tguiKeyboardKeyF6        : constant tguiKeyboardKey := 90;
   tguiKeyboardKey_tguiKeyboardKeyF7        : constant tguiKeyboardKey := 91;
   tguiKeyboardKey_tguiKeyboardKeyF8        : constant tguiKeyboardKey := 92;
   tguiKeyboardKey_tguiKeyboardKeyF9        : constant tguiKeyboardKey := 93;
   tguiKeyboardKey_tguiKeyboardKeyF10       : constant tguiKeyboardKey := 94;
   tguiKeyboardKey_tguiKeyboardKeyF11       : constant tguiKeyboardKey := 95;
   tguiKeyboardKey_tguiKeyboardKeyF12       : constant tguiKeyboardKey := 96;
   tguiKeyboardKey_tguiKeyboardKeyF13       : constant tguiKeyboardKey := 97;
   tguiKeyboardKey_tguiKeyboardKeyF14       : constant tguiKeyboardKey := 98;
   tguiKeyboardKey_tguiKeyboardKeyF15       : constant tguiKeyboardKey := 99;
   tguiKeyboardKey_tguiKeyboardKeyPause     : constant tguiKeyboardKey := 100;

   --/ Mouse buttons
   --!< The left mouse button
   --!< The right mouse button
   --!< The middle (wheel) mouse button
   type tguiMouseButton is
     (tguiMouseButtonLeft,
      tguiMouseButtonRight,
      tguiMouseButtonMiddle) with
     Convention => C;

   type tguiKeyModifier is
     (tguiKeyModifierSystem,
      tguiKeyModifierControl,
      tguiKeyModifierShift,
      tguiKeyModifierAlt) with
     Convention => C;

   type tguiEventType is
     (tguiEventTypeLostFocus,
      tguiEventTypeGainedFocus,
      tguiEventTypeTextEntered,
      tguiEventTypeKeyPressed,
      tguiEventTypeMouseWheelScrolled,
      tguiEventTypeMouseButtonPressed,
      tguiEventTypeMouseButtonReleased,
      tguiEventTypeMouseMoved,
      tguiEventTypeMouseEntered,
      tguiEventTypeMouseLeft,
      tguiEventTypeResized,
      tguiEventTypeClosed) with
     Convention => C;

   type tguiKeyEvent is record
      c_type   : aliased tguiEventType;
      code     : aliased tguiKeyboardKey;
      alt      : aliased tguiBool;
      control  : aliased tguiBool;
      shift    : aliased tguiBool;
      c_system : aliased tguiBool;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiTextEvent is record
      c_type  : aliased tguiEventType;
      unicode : aliased tguiUint32;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiMouseMoveEvent is record
      c_type : aliased tguiEventType;
      x      : aliased tguiInt;
      y      : aliased tguiInt;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiMouseButtonEvent is record
      c_type : aliased tguiEventType;
      button : aliased tguiMouseButton;
      x      : aliased tguiInt;
      y      : aliased tguiInt;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiMouseWheelEvent is record
      c_type  : aliased tguiEventType;
      c_delta : aliased tguiFloat;
      x       : aliased tguiInt;
      y       : aliased tguiInt;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiSizeEvent is record
      c_type : aliased tguiEventType;
      width  : aliased tguiUint32;
      height : aliased tguiUint32;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiEvent is record
      c_type      : aliased tguiEventType;
      key         : aliased tguiKeyEvent;
      text        : aliased tguiTextEvent;
      mouseMove   : aliased tguiMouseMoveEvent;
      mouseButton : aliased tguiMouseButtonEvent;
      mouseWheel  : aliased tguiMouseWheelEvent;
      size        : aliased tguiSizeEvent;
   end record with
     Convention => C_Pass_By_Copy;

   ----------------------------------------------------------------------------

private

end TGUI.Event;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
