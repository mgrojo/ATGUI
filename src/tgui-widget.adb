package body TGUI.Widget is

   function signalConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure)
     return tguiUint32
   is
      function Internal
        (widget : tguiWidget_Ptr; signalName : C.char_array; callback : access procedure)
        return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalConnect;

   function signalConnectEx
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiWidget_Ptr; arg2 : tguiUtf32)) return tguiUint32
     is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiWidget_Ptr; arg2 : tguiUtf32)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalConnectEx");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalConnectEx;

   function signalIntConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiInt)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalIntConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalIntConnect;

   function signalUIntConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiUint32)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiUint32)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalUIntConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalUIntConnect;

   function signalBoolConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiBool)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiBool)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalBoolConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalBoolConnect;

   function signalFloatConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiFloat)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiFloat)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalFloatConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalFloatConnect;

   function signalColorConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Color.tguiColor)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : TGUI.Color.tguiColor)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalColorConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalColorConnect;

   function signalStringConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiUtf32)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiUtf32)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalStringConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalStringConnect;

   function signalVector2fConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : TGUI.Vector2.tguiVector2f)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalVector2fConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalVector2fConnect;

   function signalFloatRectConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Rect.tguiFloatRect)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : TGUI.Rect.tguiFloatRect)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalFloatRectConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalFloatRectConnect;

   function signalRangeConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiFloat; arg2 : tguiFloat)) return tguiUint32
   is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiFloat; arg2 : tguiFloat)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalRangeConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalRangeConnect;

   -- tguiWidget_free must be called on the parameter in the callback function
   function signalChildWindowConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiWidget_Ptr)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiWidget_Ptr)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalChildWindowConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalChildWindowConnect;

   function signalItemConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiInt)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalItemConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalItemConnect;

   function signalPanelListBoxItemConnect
     (widget : tguiWidget_Ptr; signalName : String; callback : access procedure (arg1 : tguiInt))
      return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiInt)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalPanelListBoxItemConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalPanelListBoxItemConnect;

   -- List of strings
   function signalFileDialogPathsConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalFileDialogPathsConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalFileDialogPathsConnect;

   function signalShowEffectConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiShowEffectType; arg2 : tguiBool))
      return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : TGUI.Animation.tguiShowEffectType; arg2 : tguiBool))
        return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalShowEffectConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalShowEffectConnect;

   function signalAnimationTypeConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : TGUI.Animation.tguiAnimationType)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : TGUI.Animation.tguiAnimationType)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalAnimationTypeConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalAnimationTypeConnect;

   -- List of strings
   function signalItemHierarchyConnect
     (widget   : tguiWidget_Ptr; signalName : String;
      callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32 is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array;
         callback : access procedure (arg1 : tguiSize_t; arg2 : System.Address)) return tguiUint32;
      pragma Import (C, Internal, "tguiWidget_signalItemHierarchyConnect");
   begin
      return Internal (widget, C.To_C (signalName), callback);
   end signalItemHierarchyConnect;

   function signalDisconnect
     (widget : tguiWidget_Ptr; signalName : String; id : tguiUint32) return tguiBool is
      function Internal
        (widget : tguiWidget_Ptr; signalName : C.char_array;
         id : tguiUint32) return tguiBool;
      pragma Import (C, Internal, "tguiWidget_signalDisconnect");
   begin
      return Internal (widget, C.To_C (signalName), id);
   end signalDisconnect;

   procedure signalDisconnectAll (widget : tguiWidget_Ptr; signalName : String) is
      procedure Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array);
      pragma Import (C, Internal, "tguiWidget_signalDisconnect");
   begin
      Internal (widget, C.To_C (signalName));
   end signalDisconnectAll;

   function setSignalEnabled
     (widget : tguiWidget_Ptr; signalName : String; enabled : tguiBool) return tguiBool is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array; enabled : tguiBool) return tguiBool;
      pragma Import (C, Internal, "tguiWidget_setSignalEnabled");
   begin
      return Internal (widget, C.To_C (signalName), enabled);
   end setSignalEnabled;

   function isSignalEnabled (widget : tguiWidget_Ptr; signalName : String) return tguiBool is
      function Internal
        (widget   : tguiWidget_Ptr; signalName : C.char_array) return tguiBool;
      pragma Import (C, Internal, "tguiWidget_isSignalEnabled");
   begin
      return Internal (widget, C.To_C (signalName));
   end isSignalEnabled;


end TGUI.Widget;
