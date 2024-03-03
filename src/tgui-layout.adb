package body TGUI.Layout is

   function createFromString (expression : String) return tguiLayout_Ptr
   is
      function Internal
        (expression : C.Char_array) return tguiLayout_Ptr;
      pragma Import (C, Internal, "tguiLayout_createFromString");
   begin
      return Internal (C.To_C (expression));
   end createFromString;

   package body Layout2d is

      function createFromString (expression : String)
                                return tguiLayout2d_Ptr
      is
         function Internal
           (expression : C.Char_array) return tguiLayout2d_Ptr;
         pragma Import (C, Internal, "tguiLayout2d_createFromString");
      begin
         return Internal (C.To_C (expression));
      end createFromString;

   end Layout2d;

end TGUI.Layout;
