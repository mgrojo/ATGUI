package body TGUI.Widget is

   function signalConnect
     (widget : access tguiWidget; signalName : String; callback : access procedure)
     return tguiUint32
   is
      function Internal
        (widget : access tguiWidget; signalName : C.char_array; callback : access procedure)
        return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalConnect;


end TGUI.Widget;
