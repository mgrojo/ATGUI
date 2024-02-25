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

--//////////////////////////////////////////////////////////
pragma Warnings (Off, "-gnatwu");

package TGUI.Rect is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   type tguiFloatRect is record
      left   : aliased tguiFloat;
      top    : aliased tguiFloat;
      width  : aliased tguiFloat;
      height : aliased tguiFloat;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiIntRect is record
      left   : aliased tguiInt;
      top    : aliased tguiInt;
      width  : aliased tguiInt;
      height : aliased tguiInt;
   end record with
     Convention => C_Pass_By_Copy;

   type tguiUIntRect is record
      left   : aliased tguiUint32;
      top    : aliased tguiUint32;
      width  : aliased tguiUint32;
      height : aliased tguiUint32;
   end record with
     Convention => C_Pass_By_Copy;

   ----------------------------------------------------------------------------
   --/< Predefined FloatRect with value (0,0,0,0)
   tguiFloatRect_Null : aliased tguiFloatRect;

   --/< Predefined IntRect with value (0,0,0,0)
   tguiIntRect_Null : aliased tguiIntRect;

   --/< Predefined UIntRect with value (0,0,0,0)
   tguiUIntRect_Null : aliased tguiUIntRect;

   ----------------------------------------------------------------------------
   function contains
     (rect : access constant tguiFloatRect; x : tguiFloat; y : tguiFloat) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiFloatRect_contains";

   function contains
     (rect : access constant tguiIntRect; x : tguiInt; y : tguiInt) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiIntRect_contains";

   function contains
     (rect : access constant tguiUIntRect; x : tguiUint32; y : tguiUint32) return tguiBool with
     Import => True, Convention => C, External_Name => "tguiUIntRect_contains";

   ----------------------------------------------------------------------------
   function intersects
     (rect : access constant tguiFloatRect; otherRect : access constant tguiFloatRect)
      return tguiBool with
     Import => True, Convention => C, External_Name => "tguiFloatRect_intersects";

   function intersects
     (rect : access constant tguiIntRect; otherRect : access constant tguiIntRect)
      return tguiBool with
     Import => True, Convention => C, External_Name => "tguiIntRect_intersects";

   function intersects
     (rect : access constant tguiUIntRect; otherRect : access constant tguiUIntRect)
      return tguiBool with
     Import => True, Convention => C, External_Name => "tguiUIntRect_intersects";

   ----------------------------------------------------------------------------
private

   pragma Import (C, tguiFloatRect_Null, "tguiFloatRect_Null");
   pragma Import (C, tguiIntRect_Null, "tguiIntRect_Null");
   pragma Import (C, tguiUIntRect_Null, "tguiUIntRect_Null");

end TGUI.Rect;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
