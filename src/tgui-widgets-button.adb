package body TGUI.Widgets.Button is

   procedure setText (widget : access tguiWidget; text : Wide_Wide_String) is
      procedure Internal (widget : access tguiWidget; text : Interfaces.C.char32_array);
      pragma Import (C, Internal, "tguiButton_setText");
   begin
      Internal (widget, Interfaces.C.To_C (text));
   end setText;

   function getText (widget : access constant tguiWidget) return Wide_Wide_String is
      function Internal (widget : access constant tguiWidget) return Char32_Ptrs.Pointer;
      pragma Import (C, Internal, "tguiButton_getText");
      Result : Char32_Ptrs.Pointer := Internal (widget);
   begin
      return Interfaces.C.To_Ada (Char32_Ptrs.Value (Result));
   end getText;

end TGUI.Widgets.Button;
