package body TGUI.Outline is

   function createFromStrings
     (left : String; top : String; right : String; bottom : String) return tguiOutline_Ptr
   is
      function Internal
        (left, top, right, bottom : C.char_array) return tguiOutline_Ptr;
      pragma Import (C, Internal, "tguiOutline_createFromStrings");
   begin
      return Internal (C.To_C (left), C.To_C (top), C.To_C (right), C.To_C (bottom));
   end createFromStrings;

end TGUI.Outline;
