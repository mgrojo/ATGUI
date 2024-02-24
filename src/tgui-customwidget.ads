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
with TGUI.Duration;
with TGUI.Event;
with TGUI.RenderStates;

package TGUI.CustomWidget is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   function create return access tguiWidget
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_create";

   procedure setPositionChangedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setPositionChangedCallback";

   procedure setSizeChangedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setSizeChangedCallback";

   procedure setVisibleChangedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : tguiBool))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setVisibleChangedCallback";

   procedure setEnableChangedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : tguiBool))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setEnableChangedCallback";

   procedure setFocusChangedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : tguiBool))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setFocusChangedCallback";

   procedure setCanGainFocusCallback (widget : access tguiWidget; c_function : access function return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setCanGainFocusCallback";

   procedure setGetFullSizeCallback (widget : access tguiWidget; c_function : access function return TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setGetFullSizeCallback";

   procedure setGetWidgetOffsetCallback (widget : access tguiWidget; c_function : access function return TGUI.Vector2.tguiVector2f)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setGetWidgetOffsetCallback";

   procedure setUpdateTimeCallback (widget : access tguiWidget; c_function : access function (arg1 : TGUI.Duration.tguiDuration) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setUpdateTimeCallback";

   procedure setMouseOnWidgetCallback (widget : access tguiWidget; c_function : access function (arg1 : TGUI.Vector2.tguiVector2f) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setMouseOnWidgetCallback";

   procedure setLeftMousePressedCallback (widget : access tguiWidget; c_function : access function (arg1 : TGUI.Vector2.tguiVector2f) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setLeftMousePressedCallback";

   procedure setLeftMouseReleasedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setLeftMouseReleasedCallback";

   procedure setRightMousePressedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setRightMousePressedCallback";

   procedure setRightMouseReleasedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setRightMouseReleasedCallback";

   procedure setMouseMovedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Vector2.tguiVector2f))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setMouseMovedCallback";

   procedure setKeyPressedCallback (widget : access tguiWidget; c_function : access procedure (arg1 : TGUI.Event.tguiKeyEvent))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setKeyPressedCallback";

   procedure setTextEnteredCallback (widget : access tguiWidget; c_function : access procedure (arg1 : tguiUint32))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setTextEnteredCallback";

   procedure setScrolledCallback (widget : access tguiWidget; c_function : access function
        (arg1 : tguiFloat;
         arg2 : TGUI.Vector2.tguiVector2f;
         arg3 : tguiBool) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setScrolledCallback";

   procedure setMouseNoLongerOnWidgetCallback (widget : access tguiWidget; c_function : access procedure)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setMouseNoLongerOnWidgetCallback";

   procedure setLeftMouseButtonNoLongerDownCallback (widget : access tguiWidget; c_function : access procedure)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setLeftMouseButtonNoLongerDownCallback";

   procedure setMouseEnteredWidgetCallback (widget : access tguiWidget; c_function : access procedure)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setMouseEnteredWidgetCallback";

   procedure setMouseLeftWidgetCallback (widget : access tguiWidget; c_function : access procedure)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setMouseLeftWidgetCallback";

   procedure setRendererChangedCallback (widget : access tguiWidget; c_function : access function (arg1 : tguiUtf32) return tguiBool)
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setRendererChangedCallback";

   -- Parameters should NOT be freed inside callback function
   procedure setDrawCallback (widget : access tguiWidget; c_function : access procedure (arg1 : access tguiBackendRenderTarget; arg2 : access TGUI.RenderStates.tguiRenderStates))
   with Import => True,
        Convention => C,
        External_Name => "tguiCustomWidget_setDrawCallback";

private



end TGUI.CustomWidget;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
