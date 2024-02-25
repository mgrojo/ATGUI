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

with TGUI.RenderStates;
with TGUI.Rect;
with TGUI.Vector2;
with TGUI.Color;
with TGUI.Vertex;

package TGUI.BackendRenderTarget is

   ----------------------------------------------------------------------------
   ----------------------------------------------------------------------------
   procedure drawWidget
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; widget : access tguiWidget);

   procedure addClippingLayer
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; rect : TGUI.Rect.tguiFloatRect);

   procedure removeClippingLayer (target : access tguiBackendRenderTarget);

   procedure drawBorders
     (target  : access tguiBackendRenderTarget;
      states  : access constant TGUI.RenderStates.tguiRenderStates;
      borders : access constant tguiOutline; size : TGUI.Vector2.tguiVector2f;
      color   : access constant TGUI.Color.tguiColor);

   procedure drawFilledRect
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; size : TGUI.Vector2.tguiVector2f;
      color  : access constant TGUI.Color.tguiColor);

   procedure drawSprite
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates;
      sprite : access constant tguiSprite);

   procedure drawText
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; text : access constant tguiText);

   procedure drawTriangle
     (target : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; point1 : TGUI.Vertex.tguiVertex;
      point2 : TGUI.Vertex.tguiVertex; point3 : TGUI.Vertex.tguiVertex);

   procedure drawCircle
     (target          : access tguiBackendRenderTarget;
      states          : access constant TGUI.RenderStates.tguiRenderStates; size : tguiFloat;
      backgroundColor : access constant TGUI.Color.tguiColor; borderThickness : tguiFloat;
      borderColor     : access constant TGUI.Color.tguiColor);

   procedure drawRoundedRectangle
     (target          : access tguiBackendRenderTarget;
      states : access constant TGUI.RenderStates.tguiRenderStates; size : TGUI.Vector2.tguiVector2f;
      backgroundColor : access constant TGUI.Color.tguiColor; radius : tguiFloat;
      borders : access constant tguiOutline; borderColor : access constant TGUI.Color.tguiColor);

   procedure drawVertexArray
     (target   : access tguiBackendRenderTarget;
      states   : access constant TGUI.RenderStates.tguiRenderStates;
      vertices : access constant TGUI.Vertex.tguiVertex; vertexCount : tguiSize_t;
      indices  : access tguiUint32; indexCount : tguiSize_t);

private

   pragma Import (C, drawWidget, "tguiBackendRenderTarget_drawWidget");
   pragma Import (C, addClippingLayer, "tguiBackendRenderTarget_addClippingLayer");
   pragma Import (C, removeClippingLayer, "tguiBackendRenderTarget_removeClippingLayer");
   pragma Import (C, drawBorders, "tguiBackendRenderTarget_drawBorders");
   pragma Import (C, drawFilledRect, "tguiBackendRenderTarget_drawFilledRect");
   pragma Import (C, drawSprite, "tguiBackendRenderTarget_drawSprite");
   pragma Import (C, drawText, "tguiBackendRenderTarget_drawText");
   pragma Import (C, drawTriangle, "tguiBackendRenderTarget_drawTriangle");
   pragma Import (C, drawCircle, "tguiBackendRenderTarget_drawCircle");
   pragma Import (C, drawRoundedRectangle, "tguiBackendRenderTarget_drawRoundedRectangle");
   pragma Import (C, drawVertexArray, "tguiBackendRenderTarget_drawVertexArray");

end TGUI.BackendRenderTarget;
