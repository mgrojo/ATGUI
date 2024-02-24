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


with Interfaces.C;


package TGUI is


   Version_Major : constant := 1;
   Version_Minor : constant := 2;
   Version_Patch : constant := 0;

   tguiFalse : constant := 0;

   tguiTrue : constant := 1;

   type tguiFont is private;

   type tguiGui is private;

   type tguiLayout is private;

   type tguiLayout2d is private;

   type tguiOutline is private;

   type tguiRenderer is private;

   type tguiRendererData is private;

   type tguiBackendRenderTarget is private;

   type tguiSprite is private;

   type tguiText is private;

   type tguiTexture is private;

   type tguiTheme is private;

   type tguiWidget is private;

   type tguiUtf32 is access all Interfaces.C.unsigned;

   type tguiChar is new Interfaces.C.char;

   type tguiInt is new Interfaces.C.int;

   type tguiFloat is new Interfaces.C.C_float;

   type tguiSize_t is new Interfaces.C.size_t;

   type tguiInt8 is new Interfaces.Unsigned_8;

   type tguiUint8 is new Interfaces.Unsigned_8;

   type tguiInt16 is new Interfaces.Integer_16;

   type tguiUint16 is new Interfaces.Unsigned_16;

   type tguiInt32 is new Interfaces.Integer_32;

   type tguiUint32 is new Interfaces.Unsigned_32;

   type tguiInt64 is new Interfaces.Integer_64;

   type tguiUint64 is new Interfaces.Unsigned_64;

   type tguiBool is new Boolean with Convention => C;

private


   type tguiFont is null record;
   -- incomplete struct

   type tguiGui is null record;
   -- incomplete struct

   type tguiLayout is null record;
   -- incomplete struct

   type tguiLayout2d is null record;
   -- incomplete struct

   type tguiOutline is null record;
   -- incomplete struct

   type tguiRenderer is null record;
   -- incomplete struct

   type tguiRendererData is null record;
   -- incomplete struct

   type tguiBackendRenderTarget is null record;
   -- incomplete struct

   type tguiSprite is null record;
   -- incomplete struct

   type tguiText is null record;
   -- incomplete struct

   type tguiTexture is null record;
   -- incomplete struct

   type tguiTheme is null record;
   -- incomplete struct

   type tguiWidget is null record;
   -- incomplete struct


end TGUI;


pragma Style_Checks (On);

pragma Warnings (On, "-gnatwu");
