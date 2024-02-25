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

package TGUI.Renderers.BoxLayoutRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return access tguiRenderer;

   function copy (other : access constant tguiRenderer) return access tguiRenderer;

   procedure setSpaceBetweenWidgets (renderer : access tguiRenderer; space : tguiFloat);

   function getSpaceBetweenWidgets (renderer : access constant tguiRenderer) return tguiFloat;

private

   pragma Import (C, create, "tguiBoxLayoutRenderer_create");
   pragma Import (C, copy, "tguiBoxLayoutRenderer_copy");
   pragma Import (C, setSpaceBetweenWidgets, "tguiBoxLayoutRenderer_setSpaceBetweenWidgets");
   pragma Import (C, getSpaceBetweenWidgets, "tguiBoxLayoutRenderer_getSpaceBetweenWidgets");

end TGUI.Renderers.BoxLayoutRenderer;

pragma Style_Checks (On);
pragma Warnings (On, "-gnatwu");
