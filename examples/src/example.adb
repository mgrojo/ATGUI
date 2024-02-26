with Ada.Text_IO;         use Ada.Text_IO;

with Signals;

with Sf.Window.VideoMode;
with Sf.Window.Event;

with Sf.Graphics.RenderWindow;
with Sf.Graphics.Color;

with TGUI.Gui;
with TGUI.Color;
with TGUI.Vector2;
with TGUI.Widget;
with TGUI.Widgets.Button;
with TGUI.Backend.ASFML_Graphics;
with TGUI.Renderers.WidgetRenderer;
with TGUI.Renderers.ButtonRenderer;

procedure Example is

   use Sf; use Sf.Graphics; use Sf.Window;
   use TGUI; use TGUI.Widgets;
   use type Sf.Window.Event.sfEventType;

   videoMode : Sf.Window.VideoMode.sfVideoMode := (400, 300, 32);
   Window : sfRenderWindow_Ptr := RenderWindow.create
     (videoMode, "ATGUI example (CSFML-GRAPHICS)");
   --  The tguiGui object should always be the first CTGUI object to create
   The_GUI : access tguiGui := Backend.ASFML_Graphics.create (Window);
   button : access tguiWidget := Widgets.Button.create;
   position : Vector2.tguiVector2f := (40.0, 30.0);
   size : Vector2.tguiVector2f := (200.0, 40.0);
   buttonColor : aliased TGUI.Color.tguiColor :=
     TGUI.Color.fromRGB (128, 220, 128);
   buttonRenderer : access tguiRenderer;
   Event  : aliased Sf.Window.Event.sfEvent;
   signalResult : tguiUint32;
begin

   Gui.add (The_GUI, button, "MyButton");

   Widgets.Button.setText (button, "Hello");

   Widget.setPosition (button, position);

   Widget.setSize (button, size);

   buttonRenderer := Widget.getRenderer (button);
   Renderers.ButtonRenderer.setBackgroundColor (buttonRenderer, buttonColor'Access);
   Renderers.WidgetRenderer.free (buttonRenderer);

   signalResult := Widget.signalConnect (button, "Pressed", Signals.Button_Clicked'Access);
   Ada.Text_IO.Put_Line (signalResult'Image);

   while RenderWindow.isOpen (Window) = sfTrue loop
      while RenderWindow.pollEvent (Window, Event) = sfTrue loop
         if Event.eventType = Sf.Window.Event.sfEvtClosed then
            RenderWindow.close (Window);
         end if;
         Backend.ASFML_Graphics.handleEvent (The_GUI, Event'Access);
      end loop;
      RenderWindow.clear (Window, Sf.Graphics.Color.sfBlack);
      Gui.draw (The_GUI);

      RenderWindow.display (Window);
      delay 0.1;
   end loop;

   Widget.free (button);
   Backend.ASFML_Graphics.free (The_GUI);
   RenderWindow.destroy (Window);

end Example;
