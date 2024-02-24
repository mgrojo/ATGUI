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
      tguiAutoLayoutFill)
   with Convention => C;

   ----------------------------------------------------------------------------
   function create (c_constant : tguiFloat) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_create";

   function createFromString (expression : String) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_createFromString";

   function copy (other : access constant tguiLayout) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_copy";

   procedure free (layout : access tguiLayout)
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_free";

   procedure replaceValue (layout : access tguiLayout; newLayout : access constant tguiLayout)
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_replaceValue";

   function getValue (layout : access constant tguiLayout) return tguiFloat
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_getValue";

   function isConstant (layout : access constant tguiLayout) return tguiBool
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout_isConstant";

   ----------------------------------------------------------------------------
   function create (c_constant : TGUI.Vector2.tguiVector2f) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_create";

   function createFromLayouts (x : access tguiLayout; y : access tguiLayout) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_createFromLayouts";

   function createFromString (expression : String) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_createFromString";

   function copy (other : access constant tguiLayout2d) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_copy";

   procedure free (layout : access tguiLayout2d)
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_free";

   function getValue (layout : access constant tguiLayout2d) return TGUI.Vector2.tguiVector2f
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_getValue";

   -- tguiLayout_free must be called on the return value
   function getX (layout : access constant tguiLayout2d) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_getX";

   -- tguiLayout_free must be called on the return value
   function getY (layout : access constant tguiLayout2d) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiLayout2d_getY";

   ----------------------------------------------------------------------------
   function tguiBindPosX (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindPosX";

   function tguiBindPosY (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindPosY";

   function tguiBindLeft (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindLeft";

   function tguiBindTop (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindTop";

   function tguiBindWidth (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindWidth";

   function tguiBindHeight (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindHeight";

   function tguiBindInnerWidth (container : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindInnerWidth";

   function tguiBindInnerHeight (container : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindInnerHeight";

   function tguiBindRight (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindRight";

   function tguiBindBottom (widget : access constant tguiWidget) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindBottom";

   function tguiBindPosition (widget : access constant tguiWidget) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiBindPosition";

   function tguiBindSize (widget : access constant tguiWidget) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiBindSize";

   function tguiBindInnerSize (container : access constant tguiWidget) return access tguiLayout2d
   with Import => True,
        Convention => C,
        External_Name => "tguiBindInnerSize";

   function tguiBindMin (value1 : access constant tguiLayout; value2 : access constant tguiLayout) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindMin";

   function tguiBindMax (value1 : access constant tguiLayout; value2 : access constant tguiLayout) return access tguiLayout
   with Import => True,
        Convention => C,
        External_Name => "tguiBindMax";

   ----------------------------------------------------------------------------
private



end TGUI.Layout;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
