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
with TGUI.Duration;
with TGUI.Event;
with TGUI.RenderStates;

package TGUI.CustomWidget is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiWidget;

   procedure setPositionChangedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setSizeChangedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setVisibleChangedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : tguiBool));

   procedure setEnableChangedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : tguiBool));

   procedure setFocusChangedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : tguiBool));

   procedure setCanGainFocusCallback
     (widget : access tguiWidget; callback : access function return tguiBool);

   procedure setGetFullSizeCallback
     (widget : access tguiWidget; callback : access function return TGUI.Vector2.tguiVector2f);

   procedure setGetWidgetOffsetCallback
     (widget : access tguiWidget; callback : access function return TGUI.Vector2.tguiVector2f);

   procedure setUpdateTimeCallback
     (widget   : access tguiWidget;
      callback : access function (arg1 : TGUI.Duration.tguiDuration) return tguiBool);

   procedure setMouseOnWidgetCallback
     (widget   : access tguiWidget;
      callback : access function (arg1 : TGUI.Vector2.tguiVector2f) return tguiBool);

   procedure setLeftMousePressedCallback
     (widget   : access tguiWidget;
      callback : access function (arg1 : TGUI.Vector2.tguiVector2f) return tguiBool);

   procedure setLeftMouseReleasedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setRightMousePressedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setRightMouseReleasedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setMouseMovedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f));

   procedure setKeyPressedCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : TGUI.Event.tguiKeyEvent));

   procedure setTextEnteredCallback
     (widget : access tguiWidget; callback : access procedure (arg1 : tguiUint32));

   procedure setScrolledCallback
     (widget   : access tguiWidget;
      callback : access function
        (arg1 : tguiFloat; arg2 : TGUI.Vector2.tguiVector2f; arg3 : tguiBool) return tguiBool);

   procedure setMouseNoLongerOnWidgetCallback
     (widget : access tguiWidget; callback : access procedure);

   procedure setLeftMouseButtonNoLongerDownCallback
     (widget : access tguiWidget; callback : access procedure);

   procedure setMouseEnteredWidgetCallback
     (widget : access tguiWidget; callback : access procedure);

   procedure setMouseLeftWidgetCallback (widget : access tguiWidget; callback : access procedure);

   procedure setRendererChangedCallback
     (widget : access tguiWidget; callback : access function (arg1 : tguiUtf32) return tguiBool);

   -- Parameters should NOT be freed inside callback function
   procedure setDrawCallback
     (widget   : access tguiWidget;
      callback : access procedure
        (arg1 : access tguiBackendRenderTarget; arg2 : access TGUI.RenderStates.tguiRenderStates));

private

   pragma Import (C, create, "tguiCustomWidget_create");
   pragma Import (C, setPositionChangedCallback, "tguiCustomWidget_setPositionChangedCallback");
   pragma Import (C, setSizeChangedCallback, "tguiCustomWidget_setSizeChangedCallback");
   pragma Import (C, setVisibleChangedCallback, "tguiCustomWidget_setVisibleChangedCallback");
   pragma Import (C, setEnableChangedCallback, "tguiCustomWidget_setEnableChangedCallback");
   pragma Import (C, setFocusChangedCallback, "tguiCustomWidget_setFocusChangedCallback");
   pragma Import (C, setCanGainFocusCallback, "tguiCustomWidget_setCanGainFocusCallback");
   pragma Import (C, setGetFullSizeCallback, "tguiCustomWidget_setGetFullSizeCallback");
   pragma Import (C, setGetWidgetOffsetCallback, "tguiCustomWidget_setGetWidgetOffsetCallback");
   pragma Import (C, setUpdateTimeCallback, "tguiCustomWidget_setUpdateTimeCallback");
   pragma Import (C, setMouseOnWidgetCallback, "tguiCustomWidget_setMouseOnWidgetCallback");
   pragma Import (C, setLeftMousePressedCallback, "tguiCustomWidget_setLeftMousePressedCallback");
   pragma Import (C, setLeftMouseReleasedCallback, "tguiCustomWidget_setLeftMouseReleasedCallback");
   pragma Import (C, setRightMousePressedCallback, "tguiCustomWidget_setRightMousePressedCallback");
   pragma Import
     (C, setRightMouseReleasedCallback, "tguiCustomWidget_setRightMouseReleasedCallback");
   pragma Import (C, setMouseMovedCallback, "tguiCustomWidget_setMouseMovedCallback");
   pragma Import (C, setKeyPressedCallback, "tguiCustomWidget_setKeyPressedCallback");
   pragma Import (C, setTextEnteredCallback, "tguiCustomWidget_setTextEnteredCallback");
   pragma Import (C, setScrolledCallback, "tguiCustomWidget_setScrolledCallback");
   pragma Import
     (C, setMouseNoLongerOnWidgetCallback, "tguiCustomWidget_setMouseNoLongerOnWidgetCallback");
   pragma Import
     (C, setLeftMouseButtonNoLongerDownCallback,
      "tguiCustomWidget_setLeftMouseButtonNoLongerDownCallback");
   pragma Import
     (C, setMouseEnteredWidgetCallback, "tguiCustomWidget_setMouseEnteredWidgetCallback");
   pragma Import (C, setMouseLeftWidgetCallback, "tguiCustomWidget_setMouseLeftWidgetCallback");
   pragma Import (C, setRendererChangedCallback, "tguiCustomWidget_setRendererChangedCallback");
   pragma Import (C, setDrawCallback, "tguiCustomWidget_setDrawCallback");

end TGUI.CustomWidget;
