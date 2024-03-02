package body TGUI.Layout is

   function createFromString (expression : String) return access tguiLayout
   is
      function Internal
        (expression : C.Char_array) return access tguiLayout;
      pragma Import (C, Internal, "tguiLayout_createFromString");
   begin
      return Internal (C.To_C (expression));
   end createFromString;

   package body Layout2d is

      function createFromString (expression : String)
                                return access tguiLayout2d
      is
         function Internal
           (expression : C.Char_array) return access tguiLayout2d;
         pragma Import (C, Internal, "tguiLayout2d_createFromString");
      begin
         return Internal (C.To_C (expression));
      end createFromString;

   end Layout2d;

end TGUI.Layout;
