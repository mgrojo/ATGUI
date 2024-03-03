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

package TGUI.Renderers.PictureRenderer is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   function create return tguiRenderer_Ptr;

   function copy (other : tguiRenderer_Cons) return tguiRenderer_Ptr;

   procedure setTexture (renderer : tguiRenderer_Ptr; texture : tguiTexture_Ptr);

   function getTexture (renderer : tguiRenderer_Cons) return tguiTexture_Ptr;

private

   pragma Import (C, create, "tguiPictureRenderer_create");
   pragma Import (C, copy, "tguiPictureRenderer_copy");
   pragma Import (C, setTexture, "tguiPictureRenderer_setTexture");
   pragma Import (C, getTexture, "tguiPictureRenderer_getTexture");

end TGUI.Renderers.PictureRenderer;
