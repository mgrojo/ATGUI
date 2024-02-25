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

with TGUI.Vector2;
with TGUI.Alignment;

package TGUI.Widgets.ChildWindow is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setMaximumSize (widget : access tguiWidget; maxSize : TGUI.Vector2.tguiVector2f);

   function getMaximumSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   procedure setMinimumSize (widget : access tguiWidget; minSize : TGUI.Vector2.tguiVector2f);

   function getMinimumSize (widget : access constant tguiWidget) return TGUI.Vector2.tguiVector2f;

   procedure setTitle (widget : access tguiWidget; text : tguiUtf32);

   function getTitle (widget : access constant tguiWidget) return tguiUtf32;

   procedure setTitleTextSize (widget : access tguiWidget; textSize : tguiUint32);

   function getTitleTextSize (widget : access constant tguiWidget) return tguiUint32;

   procedure setTitleAlignment
     (widget : access tguiWidget; alignment : TGUI.Alignment.tguiHorizontalAlignment);

   function getTitleAlignment
     (widget : access constant tguiWidget) return TGUI.Alignment.tguiHorizontalAlignment;

   procedure setTitleButtons (widget : access tguiWidget; buttons : tguiUint32);

   function getTitleButtons (widget : access constant tguiWidget) return tguiUint32;

   procedure setResizable (widget : access tguiWidget; resizable : tguiBool);

   function isResizable (widget : access constant tguiWidget) return tguiBool;

   procedure setKeepInParent (widget : access tguiWidget; keepInParent : tguiBool);

   function isKeptInParent (widget : access constant tguiWidget) return tguiBool;

   procedure setPositionLocked (widget : access tguiWidget; positionLocked : tguiBool);

   function isPositionLocked (widget : access constant tguiWidget) return tguiBool;

private

   pragma Import (C, create, "tguiChildWindow_create");
   pragma Import (C, setMaximumSize, "tguiChildWindow_setMaximumSize");
   pragma Import (C, getMaximumSize, "tguiChildWindow_getMaximumSize");
   pragma Import (C, setMinimumSize, "tguiChildWindow_setMinimumSize");
   pragma Import (C, getMinimumSize, "tguiChildWindow_getMinimumSize");
   pragma Import (C, setTitle, "tguiChildWindow_setTitle");
   pragma Import (C, getTitle, "tguiChildWindow_getTitle");
   pragma Import (C, setTitleTextSize, "tguiChildWindow_setTitleTextSize");
   pragma Import (C, getTitleTextSize, "tguiChildWindow_getTitleTextSize");
   pragma Import (C, setTitleAlignment, "tguiChildWindow_setTitleAlignment");
   pragma Import (C, getTitleAlignment, "tguiChildWindow_getTitleAlignment");
   pragma Import (C, setTitleButtons, "tguiChildWindow_setTitleButtons");
   pragma Import (C, getTitleButtons, "tguiChildWindow_getTitleButtons");
   pragma Import (C, setResizable, "tguiChildWindow_setResizable");
   pragma Import (C, isResizable, "tguiChildWindow_isResizable");
   pragma Import (C, setKeepInParent, "tguiChildWindow_setKeepInParent");
   pragma Import (C, isKeptInParent, "tguiChildWindow_isKeptInParent");
   pragma Import (C, setPositionLocked, "tguiChildWindow_setPositionLocked");
   pragma Import (C, isPositionLocked, "tguiChildWindow_isPositionLocked");

end TGUI.Widgets.ChildWindow;
