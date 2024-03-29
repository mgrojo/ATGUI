------------------------------------------------------------
-- Texus' Graphical User Interface
-- Copyright (C) 2012-2024 Bruno Van de Velde (vdv_b@tgui.eu)
-- Copyright (C) 2024 Manuel Gomez (mgrojo@gmail.com)
-- This software is provided 'as-is', without any express or implied warranty.
-- In no event will the authors be held liable for any damages arising from the use of this software.
-- Permission is granted to anyone to use this software for any purpose,
-- including commercial applications, and to alter it and redistribute it freely,
-- subject to the following restrictions:
-- 1. The origin of this software must not be misrepresented;
--    you must not claim that you wrote the original software.
--    If you use this software in a product, an acknowledgment
--    in the product documentation would be appreciated but is not required.
-- 2. Altered source versions must be plainly marked as such,
--    and must not be misrepresented as being the original software.
-- 3. This notice may not be removed or altered from any source distribution.
------------------------------------------------------------

package body TGUI.Gui is

   procedure add (gui : access tguiGui; widget : access tguiWidget; widgetName : Wide_Wide_String)
   is
      procedure Internal
        (gui : access tguiGui; widget : access tguiWidget; widgetName : Interfaces.C.char32_array);
      pragma Import (C, Internal, "tguiGui_add");
   begin
      Internal (gui, widget, Interfaces.C.To_C (widgetName));
   end add;

   function loadWidgetsFromFile
     (gui : access tguiGui; filename : String; replaceExisting : tguiBool) return tguiBool is
      function Internal
        (gui : access tguiGui;
         filename : Interfaces.C.char_array;
         replaceExisting : tguiBool)
        return tguiBool;
      pragma Import (C, Internal, "tguiGui_loadWidgetsFromFile");
   begin
      return Internal (gui, Interfaces.C.To_C (filename), replaceExisting);
   end loadWidgetsFromFile;

   function saveWidgetsToFile (gui : access tguiGui; filename : String) return tguiBool is
      function Internal
        (gui : access tguiGui;
         filename : Interfaces.C.char_array)
        return tguiBool;
      pragma Import (C, Internal, "tguiGui_saveWidgetsToFile");
   begin
      return Internal (gui, Interfaces.C.To_C (filename));
   end saveWidgetsToFile;

end TGUI.Gui;
