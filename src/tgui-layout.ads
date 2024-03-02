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


with TGUI.Vector2;

package TGUI.Layout is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   --!< Position and size need to be manually set. This is the default.
   --!< Places the widget on on the top and sets its width to the area between Leftmost and Rightmost aligned components. Height needs to be manually set.
   --!< Places the widget on the left side and sets its height to the area between Top and Bottom aligned components. Width needs to be manually set.
   --!< Places the widget on the right side and sets its height to the area between Top and Bottom aligned components. Width needs to be manually set.
   --!< Places the widget on on the bottom and sets its width to the area between Leftmost and Rightmost aligned components. Height needs to be manually set.
   --!< Places the widget on the left side and sets height to 100%. Width needs to be manually set. Same as Left alignment if no widget uses Top or Bottom alignment.
   --!< Places the widget on the right side and sets height to 100%. Width needs to be manually set. Same as Left alignment if no widget uses Top or Bottom alignment.
   --!< Sets the position and size to fill the entire area that isn't already taken by components with the other AutoLayout values.
   type tguiAutoLayout is
     (tguiAutoLayoutManual,
      tguiAutoLayoutTop,
      tguiAutoLayoutLeft,
      tguiAutoLayoutRight,
      tguiAutoLayoutBottom,
      tguiAutoLayoutLeftmost,
      tguiAutoLayoutRightmost,
      tguiAutoLayoutFill) with
     Convention => C;

   ----------------------------------------------------------------------------
   function create (value : tguiFloat) return access tguiLayout;

   function createFromString (expression : String) return access tguiLayout;

   function copy (other : access constant tguiLayout) return access tguiLayout;

   procedure free (layout : access tguiLayout);

   procedure replaceValue (layout : access tguiLayout; newLayout : access constant tguiLayout);

   function getValue (layout : access constant tguiLayout) return tguiFloat;

   function isConstant (layout : access constant tguiLayout) return tguiBool;

   ----------------------------------------------------------------------------

   ----------------------------------------------------------------------------
   function bindPosX (widget : access constant tguiWidget) return access tguiLayout;

   function bindPosY (widget : access constant tguiWidget) return access tguiLayout;

   function bindLeft (widget : access constant tguiWidget) return access tguiLayout;

   function bindTop (widget : access constant tguiWidget) return access tguiLayout;

   function bindWidth (widget : access constant tguiWidget) return access tguiLayout;

   function bindHeight (widget : access constant tguiWidget) return access tguiLayout;

   function bindInnerWidth (container : access constant tguiWidget) return access tguiLayout;

   function bindInnerHeight (container : access constant tguiWidget) return access tguiLayout;

   function bindRight (widget : access constant tguiWidget) return access tguiLayout;

   function bindBottom (widget : access constant tguiWidget) return access tguiLayout;

   function bindMin
     (value1 : access constant tguiLayout; value2 : access constant tguiLayout)
     return access tguiLayout;

   function bindMax
     (value1 : access constant tguiLayout; value2 : access constant tguiLayout)
     return access tguiLayout;

   ----------------------------------------------------------------------------

   package Layout2d is

      function create (value : TGUI.Vector2.tguiVector2f) return access tguiLayout2d;

      function createFromLayouts
        (x : access tguiLayout; y : access tguiLayout) return access tguiLayout2d;

      function createFromString (expression : String) return access tguiLayout2d;

      function copy (other : access constant tguiLayout2d) return access tguiLayout2d;

      procedure free (layout : access tguiLayout2d);

      function getValue (layout : access constant tguiLayout2d) return TGUI.Vector2.tguiVector2f;

      -- tguiLayout_free must be called on the return value
      function getX (layout : access constant tguiLayout2d) return access tguiLayout;

      -- tguiLayout_free must be called on the return value
      function getY (layout : access constant tguiLayout2d) return access tguiLayout;

      function bindPosition (widget : access constant tguiWidget) return access tguiLayout2d;

      function bindSize (widget : access constant tguiWidget) return access tguiLayout2d;

      function bindInnerSize (container : access constant tguiWidget) return access tguiLayout2d;

   private
      pragma Import (C, create, "tguiLayout2d_create");
      pragma Import (C, createFromLayouts, "tguiLayout2d_createFromLayouts");
      pragma Import (C, copy, "tguiLayout2d_copy");
      pragma Import (C, free, "tguiLayout2d_free");
      pragma Import (C, getValue, "tguiLayout2d_getValue");
      pragma Import (C, getX, "tguiLayout2d_getX");
      pragma Import (C, getY, "tguiLayout2d_getY");
      pragma Import (C, bindPosition, "tguiBindPosition");
      pragma Import (C, bindSize, "tguiBindSize");
      pragma Import (C, bindInnerSize, "tguiBindInnerSize");

   end Layout2d;

private

   pragma Import (C, create, "tguiLayout_create");
   pragma Import (C, copy, "tguiLayout_copy");
   pragma Import (C, free, "tguiLayout_free");
   pragma Import (C, replaceValue, "tguiLayout_replaceValue");
   pragma Import (C, getValue, "tguiLayout_getValue");
   pragma Import (C, isConstant, "tguiLayout_isConstant");
   pragma Import (C, bindPosX, "tguiBindPosX");
   pragma Import (C, bindPosY, "tguiBindPosY");
   pragma Import (C, bindLeft, "tguiBindLeft");
   pragma Import (C, bindTop, "tguiBindTop");
   pragma Import (C, bindWidth, "tguiBindWidth");
   pragma Import (C, bindHeight, "tguiBindHeight");
   pragma Import (C, bindInnerWidth, "tguiBindInnerWidth");
   pragma Import (C, bindInnerHeight, "tguiBindInnerHeight");
   pragma Import (C, bindRight, "tguiBindRight");
   pragma Import (C, bindBottom, "tguiBindBottom");
   pragma Import (C, bindMin, "tguiBindMin");
   pragma Import (C, bindMax, "tguiBindMax");

end TGUI.Layout;
