package body TGUI.Text is

   procedure setString (text : access tguiText; string : Wide_Wide_String) is
      procedure Internal
        (text : access tguiText; string : Interfaces.C.char32_array);
      pragma Import (C, Internal, "tguiText_setString");
   begin
      Internal (text, Interfaces.C.To_C (string));
   end setString;

   function getString (text : access constant tguiText) return Wide_Wide_String
   is
      function Internal (text : access constant tguiText) return Char32_Ptrs.Pointer;
      pragma Import (C, Internal, "tguiText_getString");
      Result : constant Char32_Ptrs.Pointer := Internal (text);
   begin
      return Interfaces.C.To_Ada (Char32_Ptrs.Value (Result));
   end getString;

end TGUI.Text;
