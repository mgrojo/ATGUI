package Signals is

   procedure Button_Clicked with Convention => C;

   procedure C_Abort with Import, Convention => C, External_Name => "abort";


end Signals;
