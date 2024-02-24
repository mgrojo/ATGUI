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


package TGUI.Animation is

  ----------------------------------------------------------------------------
  ----------------------------------------------------------------------------
   subtype tguiShowEffectType is tguiUint32;
   tguiShowEffectType_ShowEffectTypeFade : constant tguiShowEffectType := 0;
   tguiShowEffectType_ShowEffectTypeScale : constant tguiShowEffectType := 1;
   tguiShowEffectType_ShowEffectTypeSlideToRight : constant tguiShowEffectType := 2;
   tguiShowEffectType_ShowEffectTypeSlideToLeft : constant tguiShowEffectType := 3;
   tguiShowEffectType_ShowEffectTypeSlideToBottom : constant tguiShowEffectType := 4;
   tguiShowEffectType_ShowEffectTypeSlideToTop : constant tguiShowEffectType := 5;
   tguiShowEffectType_ShowEffectTypeSlideFromLeft : constant tguiShowEffectType := 2;
   tguiShowEffectType_ShowEffectTypeSlideFromRight : constant tguiShowEffectType := 3;
   tguiShowEffectType_ShowEffectTypeSlideFromTop : constant tguiShowEffectType := 4;
   tguiShowEffectType_ShowEffectTypeSlideFromBottom : constant tguiShowEffectType := 5;

  --!< Position is being changed
  --!< Size is being changed
  --!< Opacity is being changed
   type tguiAnimationType is
     (tguiAnimationTypeMove,
      tguiAnimationTypeResize,
      tguiAnimationTypeOpacity)
   with Convention => C;

private



end TGUI.Animation;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
