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


with Interfaces.C;
private with Interfaces.C.Pointers;

package TGUI is

   Version_Major : constant := 1;
   Version_Minor : constant := 2;
   Version_Patch : constant := 0;

   type tguiFont is private;
   type tguiFont_Ptr is access all tguiFont;
   subtype tguiFont_Cons is tguiFont_Ptr;

   type tguiGui is private;
   type tguiGui_Ptr is access all tguiGui;
   subtype tguiGui_Cons is tguiGui_Ptr;

   type tguiLayout is private;
   type tguiLayout_Ptr is access all tguiLayout;
   subtype tguiLayout_Cons is tguiLayout_Ptr;

   type tguiLayout2d is private;
   type tguiLayout2d_Ptr is access all tguiLayout2d;
   subtype tguiLayout2d_Cons is tguiLayout2d_Ptr;

   type tguiOutline is private;
   type tguiOutline_Ptr is access all tguiOutline;
   subtype tguiOutline_Cons is tguiOutline_Ptr;

   type tguiRenderer is private;
   type tguiRenderer_Ptr is access all tguiRenderer;
   subtype tguiRenderer_Cons is tguiRenderer_Ptr;

   type tguiRendererData is private;
   type tguiRendererData_Ptr is access all tguiRendererData;
   subtype tguiRendererData_Cons is tguiRendererData_Ptr;

   type tguiBackendRenderTarget is private;
   type tguiBackendRenderTarget_Ptr is access all tguiBackendRenderTarget;
   subtype tguiBackendRenderTarget_Cons is tguiBackendRenderTarget_Ptr;

   type tguiSprite is private;
   type tguiSprite_Ptr is access all tguiSprite;
   subtype tguiSprite_Cons is tguiSprite_Ptr;

   type tguiText is private;
   type tguiText_Ptr is access all tguiText;
   subtype tguiText_Cons is tguiText_Ptr;

   type tguiTexture is private;
   type tguiTexture_Ptr is access all tguiTexture;
   subtype tguiTexture_Cons is tguiTexture_Ptr;

   type tguiTheme is private;
   type tguiTheme_Ptr is access all tguiTheme;
   subtype tguiTheme_Cons is tguiTheme_Ptr;

   type tguiWidget is private;
   type tguiWidget_Ptr is access all tguiWidget;
   subtype tguiWidget_Cons is tguiWidget_Ptr;

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

   tguiFalse : TguiBool renames False;

   tguiTrue : TguiBool renames True;

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

   use Interfaces;

   -- Used by some implementations of functions returning Unicode
   -- strings.
   --
   package Char32_Ptrs is
     new C.Pointers (Index              => C.size_t,
                     Element            => C.char32_t,
                     Element_Array      => C.char32_array,
                     Default_Terminator => C.char32_nul);
end TGUI;
