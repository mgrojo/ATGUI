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


with TGUI.Vector2;
with TGUI.Alignment;

package TGUI.Widgets.ChildWindow is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_create";

   procedure setMaximumSize (widget : access tguiWidget; maxSize : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setMaximumSize";

   function getMaximumSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getMaximumSize";

   procedure setMinimumSize (widget : access tguiWidget; minSize : TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setMinimumSize";

   function getMinimumSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getMinimumSize";

   procedure setTitle (widget : access tguiWidget; text : tguiUtf32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setTitle";

   function getTitle (widget : access constant tguiWidget) return tguiUtf32
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getTitle";

   procedure setTitleTextSize (widget : access tguiWidget; textSize : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setTitleTextSize";

   function getTitleTextSize (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getTitleTextSize";

   procedure setTitleAlignment (widget : access tguiWidget; alignment : TGUI.Alignment.tguiHorizontalAlignment)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setTitleAlignment";

   function getTitleAlignment (widget : access constant tguiWidget) return TGUI.Alignment.tguiHorizontalAlignment
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getTitleAlignment";

   procedure setTitleButtons (widget : access tguiWidget; buttons : tguiUint32)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setTitleButtons";

   function getTitleButtons (widget : access constant tguiWidget) return tguiUint32
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_getTitleButtons";

   procedure setResizable (widget : access tguiWidget; resizable : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setResizable";

   function isResizable (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_isResizable";

   procedure setKeepInParent (widget : access tguiWidget; keepInParent : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setKeepInParent";

   function isKeptInParent (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_isKeptInParent";

   procedure setPositionLocked (widget : access tguiWidget; positionLocked : tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_setPositionLocked";

   function isPositionLocked (widget : access constant tguiWidget) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiChildWindow_isPositionLocked";

private



end TGUI.Widgets.ChildWindow;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
