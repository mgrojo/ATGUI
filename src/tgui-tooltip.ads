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

with TGUI.Duration;
with TGUI.Vector2;

package TGUI.ToolTip is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure setInitialDelay (c_delay : TGUI.Duration.tguiDuration);

   function getInitialDelay return TGUI.Duration.tguiDuration;

   procedure setDistanceToMouse (distance : TGUI.Vector2.tguiVector2f);

   function getDistanceToMouse return TGUI.Vector2.tguiVector2f;

   procedure setShowOnDisabledWidget (show : tguiBool);

   function getShowOnDisabledWidget return tguiBool;

private

   pragma Import (C, setInitialDelay, "tguiToolTip_setInitialDelay");
   pragma Import (C, getInitialDelay, "tguiToolTip_getInitialDelay");
   pragma Import (C, setDistanceToMouse, "tguiToolTip_setDistanceToMouse");
   pragma Import (C, getDistanceToMouse, "tguiToolTip_getDistanceToMouse");
   pragma Import (C, setShowOnDisabledWidget, "tguiToolTip_setShowOnDisabledWidget");
   pragma Import (C, getShowOnDisabledWidget, "tguiToolTip_getShowOnDisabledWidget");

end TGUI.ToolTip;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
