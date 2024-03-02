package body TGUI.Outline is

   function createFromStrings
     (left : String; top : String; right : String; bottom : String) return access tguiOutline
   is
      function Internal
        (left, top, right, bottom : C.Char_array) return access tguiOutline;
      pragma Import (C, Internal, "tguiOutline_createFromStrings");
   begin
      return Internal (C.To_C (left), C.To_C (top), C.To_C (right), C.To_C (bottom));
   end createFromStrings;

end TGUI.Outline;
