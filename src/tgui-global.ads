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

with TGUI.Duration;

package TGUI.Global is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure setGlobalTextSize (textSize : tguiUint32);

   function getGlobalTextSize return tguiUint32;

   procedure setEditCursorBlinkRate (blinkRateMilliseconds : TGUI.Duration.tguiDuration);

   function getEditCursorBlinkRate return TGUI.Duration.tguiDuration;

   function getLastError return String;

   -- The BindingWidgetCleanup callback is called once per frame for each widget that was destroyed since the last check.
   -- Note that the pointer passed as parameter should NOT be freed or accessed in any way by the callback function!
   -- A binding for another language that uses CTGUI may store a global map of resources with the widget pointer as key,
   -- this callback allows the binding to release all resources that were still attached to the freed widget.
   procedure setBindingWidgetCleanupCallback (callback : access procedure (arg1 : tguiWidget_Ptr));

private

   pragma Import (C, setGlobalTextSize, "tgui_setGlobalTextSize");
   pragma Import (C, getGlobalTextSize, "tgui_getGlobalTextSize");
   pragma Import (C, setEditCursorBlinkRate, "tgui_setEditCursorBlinkRate");
   pragma Import (C, getEditCursorBlinkRate, "tgui_getEditCursorBlinkRate");
   pragma Import (C, setBindingWidgetCleanupCallback, "tgui_setBindingWidgetCleanupCallback");

end TGUI.Global;
